package beans;

import java.math.BigInteger;
import java.util.Date;
import java.util.List;

public class SetArt extends Article {


    public SetArt() {
    }

    public SetArt(Long article_id, Long user_id, Long content_id, String title, String des, Date create_time, BigInteger like, BigInteger keep, int pid, int tid, String article_img, String article_author, List<Img> articleImgList, Content content, List<CommentMain> commentMains, User user) {
        super(article_id, user_id, content_id, title, des, create_time, like, keep, pid, tid, article_img, article_author, articleImgList, content, commentMains, user);
    }
}
