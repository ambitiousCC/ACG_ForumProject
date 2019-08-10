package filter;

import beans.User;
import dao.Impl.UserDAOImpl;
import dao.UserDAO;
import web.utils.getClientIp;

import javax.servlet.*;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Objects;

public class UserFilter implements Filter {
    private UserDAO userDAO = new UserDAOImpl();
    private static String RedirectPath;
    private static String IP;


    @Override
    public void init(FilterConfig filterConfig) {
        RedirectPath = filterConfig.getInitParameter("redirectPath");
    }

    @Override
    public void destroy() {

    }
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        IP = getClientIp.getIpaddr((HttpServletRequest)request);//拓展：异地登录
        //指定操作必须判断是否登录
        //1`从session中获取user值
        User user = (User) ((HttpServletRequest) request).getSession().getAttribute("user");
        if (null != user) {
            //添加密码验证
            //查询密码是否一致
            boolean flag = userDAO.FilterUser(user);
            if (flag) {
                //校验成功
                request.setAttribute("user",user);
                //直接执行
                chain.doFilter(request, response);
            } else {
                System.out.println(IP + "尝试强行访问API");
                //重定向到登录页面：前段从后台发送的重定向页面
                ((HttpServletResponse)response).sendRedirect(RedirectPath);
            }
        } else {
            System.out.println(IP + "尝试强行访问API");
            //重定向到登录页面：前段从后台发送的重定向页面
            ((HttpServletResponse)response).sendRedirect(RedirectPath);
        }
    }
}
