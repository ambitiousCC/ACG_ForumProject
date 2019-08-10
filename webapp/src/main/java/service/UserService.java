package service;

import beans.User;

public interface UserService {

    /**
     * 传入别人的user_id
     * @param user_id
     * @return
     */
    User findOtherUser(Long user_id);
    /**
     * 传入登录的user,判断是否登录成功--登录查询
     * @param user
     * @return
     */
    boolean FilterUser(User user);//过滤器过滤用户
    /**
     * 注册功能完成
     * @param user
     * @return
     */
    boolean regist(User user);
    /**
     * 判断用户名是否已经存在
     * @param username
     * @return 如果存在就返回true，否则就是false
     */
    boolean isEmptyUserFindByUsername(String username);
    /**
     * 找邮箱
     * @param email
     * @return 如果存在就返回true，否则就是false
     */
    boolean isEmptyUserFindByEmail(String email);
    /**
     * 激活用户
     * @param code
     * @return 如果是true代表激活成功
     */
    boolean activeAccount(String code);

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
