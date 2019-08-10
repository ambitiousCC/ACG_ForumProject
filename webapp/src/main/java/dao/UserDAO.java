package dao;

import beans.User;
import java.sql.ResultSet;
import java.sql.SQLException;

public interface UserDAO {
    /**
     * 注册时创建新的user
     * @param user
     * @return
     */
    boolean addUser(User user);

    /**
     * 判断用户是否存在
     * @param username
     * @return 如果存在就返回true，否则就是false
     */
    boolean isEmptyUserFindByUsername (String username);
    /**
     * 判断用户是否存在
     * @param email
     * @return 如果存在就返回true，否则就是false
     */
    boolean isEmptyUserFindByEmail (String email);

    /**
     * 通过user中的id更新激活状态
     * @param user
     * @return
     */
    boolean updateStatus(User user);
    /**
     * 过滤器过滤
     * @param user
     * @return
     */
    boolean FilterUser(User user);
    /**
     * 传入登录的user,判断是否登录成功--登录查询
     * @param username,password
     * @return
     */
    User LoginUser(String username,String password);

    /**
     * 通过CODE查询对象
     * @param code
     * @return 返回user对象
     */
    User isEmptyUserFindByCode(String code);
    /**
     * 通过CODE查询对象
     * @param user_id
     * @return 返回user对象
     */
    User findUser(Long user_id);

    User getUser(ResultSet rs)throws SQLException;

    /**
     * 保存用户头像
     * @param url
     * @param user_id
     * @return
     */
    boolean saveUserImg(String url,Long user_id);

    /**
     * 修改资料
     * @param user
     * @return
     */
    boolean updateUserProfile(User user);
}
