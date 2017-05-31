package chatroom.websocket;

import chatroom.web.HomeServlet;

import javax.websocket.*;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.util.Set;

/**
 * Created by litbear on 2017/5/31.
 */
@ServerEndpoint("/chatroom/{username}")
public class Endpoint {


    @OnOpen
    public void open(
            Session session,
            EndpointConfig config,
            @PathParam("username") String userName) {
        // 从get参数中获取用户名
        if (userName != null) {
            // 如存在 用户名是否已存在，如果已存在，则拒绝连接
            // 如不存在 则向session写入用户名
            session.getUserProperties().put("username", userName);
            // 向历史消息队列插入新用户进入的消息 广播历史消息 广播新用户列表
        } else {
            // 是否存在用户名 如不存在拒绝连接
            try {
                // 构建出来的这个关闭原因 在客户端用JS取不到！？ 不知道怎么取
                session.close(new CloseReason(CloseReason.CloseCodes.CLOSED_ABNORMALLY, "you must input a username!"));
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
    @OnMessage
    public void message(Session session, String msg) {
        // 解码用户输入
        // 向所有客户端广播
    }

    @OnClose
    public void close(Session session, CloseReason reason) {
        // 向历史消息队列插入用户退出消息 广播历史消息 广播新用户列表
    }

    public void broadcast(Set<Session> sessionSet){

    }
}
