/*
 Navicat Premium Data Transfer

 Source Server         : MMMa
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : feehi

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 13/02/2023 18:15:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for feehi_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `feehi_admin_log`;
CREATE TABLE `feehi_admin_log`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'admin log id(auto increment)',
  `user_id` int(0) UNSIGNED NOT NULL COMMENT 'admin user id',
  `route` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'admin user operate route, like article/create',
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT 'admin user operate description',
  `created_at` int(0) UNSIGNED NOT NULL COMMENT 'created at',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feehi_admin_log
-- ----------------------------
INSERT INTO `feehi_admin_log` VALUES (113, 1, 'frontend-menu/update', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\Menu [ {{%menu}} ]  {{%UPDATED%}} {{%ID%}} 24 {{%RECORD%}}: <br>地址(url) : {\"0\":\"article/index\",\"cat\":\"php\"}=>{\"0\":\"\\/article\\/view\",\"id\":\"26\"},<br>最后更新(updated_at) : 1505636937=>1676206682', 1676206682);
INSERT INTO `feehi_admin_log` VALUES (114, 1, 'frontend-menu/update', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\Menu [ {{%menu}} ]  {{%UPDATED%}} {{%ID%}} 24 {{%RECORD%}}: <br>新窗口打开(target) : _self=>_blank,<br>最后更新(updated_at) : 1676206682=>1676206721', 1676206721);
INSERT INTO `feehi_admin_log` VALUES (115, 1, 'team/update', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\Team [ {{%team}} ]  {{%UPDATED%}} {{%ID%}} 17 {{%RECORD%}}: <br>描述(description) : 此外，根据俄罗斯媒体报道，俄军已经在H32公路的西部和东部与乌军激烈交战。\r\n\r\n总体来看，俄军在巴赫穆特北部小有进展，但过去2天，瓦根纳佣兵在巴赫穆特以南的多次进攻都被乌军击退，情况还算稳定。\r\n\r\n就目前的情况而言，我不同意关于巴赫穆特已经岌岌可危的判断，这台绞肉机还将继续绞杀俄军的新肉。\r\n\r\n=>南开大学\r\n学号：2012911\r\n专业：计算机科学与技术专业\r\n简述：哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈,<br>最后更新(updated_at) : 1676197365=>1676208597', 1676208597);
INSERT INTO `feehi_admin_log` VALUES (116, 1, 'menu/update', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\Menu [ {{%menu}} ]  {{%UPDATED%}} {{%ID%}} 30 {{%RECORD%}}: <br>图标(icon) : =>fa fa-user,<br>最后更新(updated_at) : 1676035189=>1676209089', 1676209089);
INSERT INTO `feehi_admin_log` VALUES (117, 1, 'menu/update', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\Menu [ {{%menu}} ]  {{%UPDATED%}} {{%ID%}} 27 {{%RECORD%}}: <br>地址(url) : =>[\"\"],<br>是否显示(is_display) : 1=>0,<br>最后更新(updated_at) : 1505637000=>1676209174', 1676209174);
INSERT INTO `feehi_admin_log` VALUES (118, 1, 'menu/update', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\Menu [ {{%menu}} ]  {{%UPDATED%}} {{%ID%}} 18 {{%RECORD%}}: <br>地址(url) : friendly-link/index=>[\"\\/friendly-link\\/index\"],<br>是否显示(is_display) : 1=>0,<br>最后更新(updated_at) : 1512380045=>1676209196', 1676209196);
INSERT INTO `feehi_admin_log` VALUES (119, 1, 'comment/delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\Article [ {{%article}} ]  {{%UPDATED%}} {{%ID%}} 22 {{%RECORD%}}: <br>评论次数(comment_count) : 1=>0,<br>最后更新(updated_at) : 1676199501=>1676209292', 1676209292);
INSERT INTO `feehi_admin_log` VALUES (120, 1, 'comment/delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\Comment [ {{%comment}} ]  {{%DELETED%}} {{%ID%}} 3 {{%RECORD%}}: <br>序号(id) => 3,<br>文章Id(aid) => 22,<br>用户Id(uid) => 0,<br>管理员用户Id(admin_id) => 0,<br>原评论用户Id(reply_to) => 2,<br>昵称(nickname) => bbb,<br>邮箱(email) => ,<br>网址(website_url) => ,<br>评论内容(content) => 呵呵哒,<br>IP地址(ip) => 127.0.0.1,<br>状态(status) => 1,<br>创建时间(created_at) => 1476067011,<br>最后更新(updated_at) => ', 1676209292);
INSERT INTO `feehi_admin_log` VALUES (121, 1, 'user/update', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\User [ {{%user}} ]  {{%UPDATED%}} {{%ID%}} 1 {{%RECORD%}}: <br>Password Hash(password_hash) : $2y$13$a8ccndU9Zf6TCnAqrffIsu6Qz0FvKGxxWehPr/Jvxj0GjToR4Xaxu=>$2y$13$Gq3K5QTGtJPQun3RbCMeRujzSiQ1DwbflC/pIU0RRGzvhyHHj4Z3m,<br>最后更新(updated_at) : 1676103494=>1676209400', 1676209400);
INSERT INTO `feehi_admin_log` VALUES (122, 1, 'frontend-menu/update', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\Menu [ {{%menu}} ]  {{%UPDATED%}} {{%ID%}} 24 {{%RECORD%}}: <br>新窗口打开(target) : _blank=>_self,<br>最后更新(updated_at) : 1676206721=>1676209437', 1676209437);
INSERT INTO `feehi_admin_log` VALUES (123, 1, 'article/delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\Article [ {{%article}} ]  {{%DELETED%}} {{%ID%}} 26 {{%RECORD%}}: <br>序号(id) => 26,<br>分类ID(cid) => 0,<br>类型(type) => 0,<br>标题(title) => Test Pic,<br>副标题(sub_title) => ,<br>概述(summary) => ,<br>缩略图(thumb) => //localhost:8080/uploads/article/thumb/20230211161905_63e74f7983079.png,<br>seo标题(seo_title) => ,<br>seo关键字(seo_keywords) => ,<br>seo描述(seo_description) => ,<br>状态(status) => 1,<br>排序(sort) => 0,<br>作者ID(author_id) => 1,<br>作者(author_name) => admin,<br>浏览次数(scan_count) => 12,<br>评论次数(comment_count) => 0,<br>评论(can_comment) => 1,<br>可见(visibility) => 1,<br>密码(password) => ,<br>头条(flag_headline) => 1,<br>推荐(flag_recommend) => 0,<br>幻灯(flag_slide_show) => 0,<br>特别推荐(flag_special_recommend) => 0,<br>滚动(flag_roll) => 0,<br>加粗(flag_bold) => 0,<br>图片(flag_picture) => 0,<br>文章模板(template) => ,<br>创建时间(created_at) => 1676103546,<br>最后更新(updated_at) => 1676103551', 1676209470);
INSERT INTO `feehi_admin_log` VALUES (124, 1, 'article/delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\ArticleContent [ {{%article_content}} ]  {{%DELETED%}} {{%ID%}} 26 {{%RECORD%}}: <br>序号(id) => 26,<br>Aid(aid) => 26,<br>正文内容(content) => ', 1676209470);
INSERT INTO `feehi_admin_log` VALUES (125, 1, 'article/delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\Article [ {{%article}} ]  {{%DELETED%}} {{%ID%}} 22 {{%RECORD%}}: <br>序号(id) => 22,<br>分类ID(cid) => 2,<br>类型(type) => 0,<br>标题(title) => 关于Java集合的小抄,<br>副标题(sub_title) => ,<br>概述(summary) => 在尽可能短的篇幅里，将所有集合与并发集合的特征，实现方式，性能捋一遍。适合所有”精通Java”其实还不那么自信的人阅读。,<br>缩略图(thumb) => //localhost:8080/uploads/article/thumb/2016071213224495.jpg,<br>seo标题(seo_title) => 关于Java集合的小抄,<br>seo关键字(seo_keywords) => java,java集合,<br>seo描述(seo_description) => 在尽可能短的篇幅里，将所有集合与并发集合的特征，实现方式，性能捋一遍。适合所有”精通Java”其实还不那么自信的人阅读。,<br>状态(status) => 0,<br>排序(sort) => 0,<br>作者ID(author_id) => 1,<br>作者(author_name) => admin,<br>浏览次数(scan_count) => 0,<br>评论次数(comment_count) => 0,<br>评论(can_comment) => 1,<br>可见(visibility) => 1,<br>密码(password) => ,<br>头条(flag_headline) => 0,<br>推荐(flag_recommend) => 0,<br>幻灯(flag_slide_show) => 0,<br>特别推荐(flag_special_recommend) => 0,<br>滚动(flag_roll) => 0,<br>加粗(flag_bold) => 0,<br>图片(flag_picture) => 0,<br>文章模板(template) => ,<br>创建时间(created_at) => 1468300964,<br>最后更新(updated_at) => 1676209292', 1676209470);
INSERT INTO `feehi_admin_log` VALUES (126, 1, 'article/delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\ArticleContent [ {{%article_content}} ]  {{%DELETED%}} {{%ID%}} 22 {{%RECORD%}}: <br>序号(id) => 22,<br>Aid(aid) => 22,<br>正文内容(content) => <p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">不断更新中，请尽量访问<a href=\"http://calvin1978.blogcn.com/articles/collection.html\" class=\"external\" rel=\"nofollow\" target=\"_blank\" style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; color: rgb(0, 153, 204);\">博客原文</a>。</p><h3 style=\"border: 0px; margin: -8px 0px 20px; padding: 0px; font-size: 20px; font-weight: normal; font-stretch: normal; line-height: 30px; font-family: &quot;Microsoft YaHei&quot;, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">List</h3><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">ArrayList</strong></p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">以数组实现。节约空间，但数组有容量限制。超出限制时会增加50%容量，用System.arraycopy()复制到新的数组，因此最好能给出数组大小的预估值。默认第一次插入元素时创建大小为10的数组。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">按数组下标访问元素–get(i)/set(i,e) 的性能很高，这是数组的基本优势。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">直接在数组末尾加入元素–add(e)的性能也高，但如果按下标插入、删除元素–add(i,e), remove(i), remove(e)，则要用System.arraycopy()来移动部分受影响的元素，性能就变差了，这是基本劣势。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">LinkedList</strong></p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">以双向链表实现。链表无容量限制，但双向链表本身使用了更多空间，也需要额外的链表指针操作。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">按下标访问元素–get(i)/set(i,e) 要悲剧的遍历链表将指针移动到位(如果i&gt;数组大小的一半，会从末尾移起)。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">插入、删除元素时修改前后节点的指针即可，但还是要遍历部分链表的指针才能移动到下标所指的位置，只有在链表两头的操作–add(), addFirst(),removeLast()或用iterator()上的remove()能省掉指针的移动。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">CopyOnWriteArrayList</strong></p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">并发优化的ArrayList。用CopyOnWrite策略，在修改时先复制一个快照来修改，改完再让内部指针指向新数组。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">因为对快照的修改对读操作来说不可见，所以只有写锁没有读锁，加上复制的昂贵成本，典型的适合读多写少的场景。如果更新频率较高，或数组较大时，还是Collections.synchronizedList(list)，对所有操作用同一把锁来保证线程安全更好。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">增加了addIfAbsent(e)方法，会遍历数组来检查元素是否已存在，性能可想像的不会太好。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">补充</strong></p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">无论哪种实现，按值返回下标–contains(e), indexOf(e), remove(e) 都需遍历所有元素进行比较，性能可想像的不会太好。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">没有按元素值排序的SortedList，在线程安全类中也没有无锁算法的ConcurrentLinkedList，凑合着用Set与Queue中的等价类时，会缺少一些List特有的方法。</p><h3 style=\"border: 0px; margin: -8px 0px 20px; padding: 0px; font-size: 20px; font-weight: normal; font-stretch: normal; line-height: 30px; font-family: &quot;Microsoft YaHei&quot;, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">Map</h3><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">HashMap</strong></p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">以Entry[]数组实现的哈希桶数组，用Key的哈希值取模桶数组的大小可得到数组下标。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">插入元素时，如果两条Key落在同一个桶(比如哈希值1和17取模16后都属于第一个哈希桶)，Entry用一个next属性实现多个Entry以单向链表存放，后入桶的Entry将next指向桶当前的Entry。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">查找哈希值为17的key时，先定位到第一个哈希桶，然后以链表遍历桶里所有元素，逐个比较其key值。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">当Entry数量达到桶数量的75%时(很多文章说使用的桶数量达到了75%，但看代码不是)，会成倍扩容桶数组，并重新分配所有原来的Entry，所以这里也最好有个预估值。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">取模用位运算(hash &amp; (arrayLength-1))会比较快，所以数组的大小永远是2的N次方， 你随便给一个初始值比如17会转为32。默认第一次放入元素时的初始值是16。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">iterator()时顺着哈希桶数组来遍历，看起来是个乱序。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">在JDK8里，新增默认为8的閥值，当一个桶里的Entry超过閥值，就不以单向链表而以红黑树来存放以加快Key的查找速度。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">LinkedHashMap</strong></p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">扩展HashMap增加双向链表的实现，号称是最占内存的数据结构。支持iterator()时按Entry的插入顺序来排序(但是更新不算， 如果设置accessOrder属性为true，则所有读写访问都算)。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">实现上是在Entry上再增加属性before/after指针，插入时把自己加到Header Entry的前面去。如果所有读写访问都要排序，还要把前后Entry的before/after拼接起来以在链表中删除掉自己。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">TreeMap</strong></p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">以红黑树实现，篇幅所限详见<a href=\"https://github.com/julycoding/The-Art-Of-Programming-By-July/blob/master/ebook/zh/03.01.md\" class=\"external\" rel=\"nofollow\" target=\"_blank\" style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; color: rgb(0, 153, 204);\">入门教程</a>。支持iterator()时按Key值排序，可按实现了Comparable接口的Key的升序排序，或由传入的Comparator控制。可想象的，在树上插入/删除元素的代价一定比HashMap的大。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">支持SortedMap接口，如firstKey()，lastKey()取得最大最小的key，或sub(fromKey, toKey), tailMap(fromKey)剪取Map的某一段。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">ConcurrentHashMap</strong></p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">并发优化的HashMap，默认16把写锁(可以设置更多)，有效分散了阻塞的概率，而且没有读锁。<br/>数据结构为Segment[]，Segment里面才是哈希桶数组，每个Segment一把锁。Key先算出它在哪个Segment里，再算出它在哪个哈希桶里。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">支持ConcurrentMap接口，如putIfAbsent(key，value)与相反的replace(key，value)与以及实现CAS的replace(key, oldValue, newValue)。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">没有读锁是因为put/remove动作是个原子动作(比如put是一个对数组元素/Entry 指针的赋值操作)，读操作不会看到一个更新动作的中间状态。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">ConcurrentSkipListMap</strong></p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">JDK6新增的并发优化的SortedMap，以SkipList实现。SkipList是红黑树的一种简化替代方案，是个流行的有序集合算法，篇幅所限见<a href=\"http://blog.sina.com.cn/s/blog_72995dcc01017w1t.html\" target=\"_blank\" class=\"external\" rel=\"nofollow\" style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; color: rgb(0, 153, 204);\">入门教程</a>。Concurrent包选用它是因为它支持基于CAS的无锁算法，而红黑树则没有好的无锁算法。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">很特殊的，它的size()不能随便调，会遍历来统计。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">补充</strong></p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">关于null，HashMap和LinkedHashMap是随意的，TreeMap没有设置Comparator时key不能为null；ConcurrentHashMap在JDK7里value不能为null(这是为什么呢？)，JDK8里key与value都不能为null；ConcurrentSkipListMap是所有JDK里key与value都不能为null。</p><h3 style=\"border: 0px; margin: -8px 0px 20px; padding: 0px; font-size: 20px; font-weight: normal; font-stretch: normal; line-height: 30px; font-family: &quot;Microsoft YaHei&quot;, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">Set</h3><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">Set几乎都是内部用一个Map来实现, 因为Map里的KeySet就是一个Set，而value是假值，全部使用同一个Object。Set的特征也继承了那些内部Map实现的特征。</p><ul style=\"border: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; list-style-position: inside; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\" class=\" list-paddingleft-2\"><li><p><strong style=\"border: 0px; margin: 0px; padding: 0px;\">HashSet</strong>：内部是HashMap。</p></li><li><p><strong style=\"border: 0px; margin: 0px; padding: 0px;\">LinkedHashSet</strong>：内部是LinkedHashMap。</p></li><li><p><strong style=\"border: 0px; margin: 0px; padding: 0px;\">TreeSet</strong>：内部是TreeMap的SortedSet。</p></li><li><p><strong style=\"border: 0px; margin: 0px; padding: 0px;\">ConcurrentSkipListSet</strong>：内部是ConcurrentSkipListMap的并发优化的SortedSet。</p></li><li><p><strong style=\"border: 0px; margin: 0px; padding: 0px;\">CopyOnWriteArraySet</strong>：内部是CopyOnWriteArrayList的并发优化的Set，利用其addIfAbsent()方法实现元素去重，如前所述该方法的性能很一般。</p></li></ul><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">补充</strong>：好像少了个ConcurrentHashSet，本来也该有一个内部用ConcurrentHashMap的简单实现，但JDK偏偏没提供。Jetty就自己封了一个，Guava则直接用java.util.Collections.newSetFromMap(new ConcurrentHashMap()) 实现。</p><h3 style=\"border: 0px; margin: -8px 0px 20px; padding: 0px; font-size: 20px; font-weight: normal; font-stretch: normal; line-height: 30px; font-family: &quot;Microsoft YaHei&quot;, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">Queue</h3><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">Queue是在两端出入的List，所以也可以用数组或链表来实现。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">–普通队列–</strong></p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">LinkedList</strong></p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">是的，以双向链表实现的LinkedList既是List，也是Queue。它是唯一一个允许放入null的Queue。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">ArrayDeque</strong></p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">以循环数组实现的双向Queue。大小是2的倍数，默认是16。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">普通数组只能快速在末尾添加元素，为了支持FIFO，从数组头快速取出元素，就需要使用循环数组：有队头队尾两个下标：弹出元素时，队头下标递增；加入元素时，如果已到数组空间的末尾，则将元素循环赋值到数组[0](如果此时队头下标大于0，说明队头弹出过元素，有空位)，同时队尾下标指向0，再插入下一个元素则赋值到数组[1]，队尾下标指向1。如果队尾的下标追上队头，说明数组所有空间已用完，进行双倍的数组扩容。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">PriorityQueue</strong></p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">用二叉堆实现的优先级队列，详见<a href=\"http://blog.csdn.net/lcore/article/details/9100073\" target=\"_blank\" class=\"external\" rel=\"nofollow\" style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; color: rgb(0, 153, 204);\">入门教程</a>，不再是FIFO而是按元素实现的Comparable接口或传入Comparator的比较结果来出队，数值越小，优先级越高，越先出队。但是注意其iterator()的返回不会排序。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">–线程安全的队列–</strong></p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">ConcurrentLinkedQueue/ConcurrentLinkedDeque</strong></p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">无界的并发优化的Queue，基于链表，实现了依赖于CAS的无锁算法。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">ConcurrentLinkedQueue的结构是单向链表和head/tail两个指针，因为入队时需要修改队尾元素的next指针，以及修改tail指向新入队的元素两个CAS动作无法原子，所以需要的特殊的算法，篇幅所限见<a href=\"http://www.ibm.com/developerworks/cn/java/j-jtp04186/\" target=\"_blank\" class=\"external\" rel=\"nofollow\" style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; color: rgb(0, 153, 204);\">入门教程</a>。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">PriorityBlockingQueue</strong></p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">无界的并发优化的PriorityQueue，也是基于二叉堆。使用一把公共的读写锁。虽然实现了BlockingQueue接口，其实没有任何阻塞队列的特征，空间不够时会自动扩容。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">DelayQueue</strong></p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">内部包含一个PriorityQueue，同样是无界的。元素需实现Delayed接口，每次调用时需返回当前离触发时间还有多久，小于0表示该触发了。<br/>pull()时会用peek()查看队头的元素，检查是否到达触发时间。ScheduledThreadPoolExecutor用了类似的结构。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">–线程安全的阻塞队列–</strong></p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">BlockingQueue的队列长度受限，用以保证生产者与消费者的速度不会相差太远，避免内存耗尽。队列长度设定后不可改变。当入队时队列已满，或出队时队列已空，不同函数的效果见下表：</p><table width=\"609\" style=\"width: 460px;\"><tbody style=\"border: 0px; margin: 0px; padding: 0px;\"><tr style=\"border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(232, 232, 232); margin: 0px; padding: 0px;\" class=\"firstRow\"><td style=\"border: 0px; margin: 0px; padding-right: 5px; padding-left: 5px; vertical-align: middle; text-align: center;\"><br/></td><td style=\"border: 0px; margin: 0px; padding-right: 5px; padding-left: 5px; vertical-align: middle; text-align: center;\">可能报异常</td><td style=\"border: 0px; margin: 0px; padding-right: 5px; padding-left: 5px; vertical-align: middle; text-align: center;\">返回布尔值</td><td style=\"border: 0px; margin: 0px; padding-right: 5px; padding-left: 5px; vertical-align: middle; text-align: center;\">可能阻塞等待</td><td style=\"border: 0px; margin: 0px; padding-right: 5px; padding-left: 5px; vertical-align: middle; text-align: center;\">可设定等待时间</td></tr><tr style=\"border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(232, 232, 232); margin: 0px; padding: 0px;\"><td style=\"border: 0px; margin: 0px; padding-right: 5px; padding-left: 5px; vertical-align: middle; text-align: center;\">入队</td><td style=\"border: 0px; margin: 0px; padding-right: 5px; padding-left: 5px; vertical-align: middle; text-align: center;\">add(e)</td><td style=\"border: 0px; margin: 0px; padding-right: 5px; padding-left: 5px; vertical-align: middle; text-align: center;\">offer(e)</td><td style=\"border: 0px; margin: 0px; padding-right: 5px; padding-left: 5px; vertical-align: middle; text-align: center;\">put(e)</td><td style=\"border: 0px; margin: 0px; padding-right: 5px; padding-left: 5px; vertical-align: middle; text-align: center;\">offer(e, timeout, unit)</td></tr><tr style=\"border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(232, 232, 232); margin: 0px; padding: 0px;\"><td style=\"border: 0px; margin: 0px; padding-right: 5px; padding-left: 5px; vertical-align: middle; text-align: center;\">出队</td><td style=\"border: 0px; margin: 0px; padding-right: 5px; padding-left: 5px; vertical-align: middle; text-align: center;\">remove()</td><td style=\"border: 0px; margin: 0px; padding-right: 5px; padding-left: 5px; vertical-align: middle; text-align: center;\">poll()</td><td style=\"border: 0px; margin: 0px; padding-right: 5px; padding-left: 5px; vertical-align: middle; text-align: center;\">take()</td><td style=\"border: 0px; margin: 0px; padding-right: 5px; padding-left: 5px; vertical-align: middle; text-align: center;\">poll(timeout, unit)</td></tr><tr style=\"border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(232, 232, 232); margin: 0px; padding: 0px;\"><td style=\"border: 0px; margin: 0px; padding-right: 5px; padding-left: 5px; vertical-align: middle; text-align: center;\">查看</td><td style=\"border: 0px; margin: 0px; padding-right: 5px; padding-left: 5px; vertical-align: middle; text-align: center;\">element()</td><td style=\"border: 0px; margin: 0px; padding-right: 5px; padding-left: 5px; vertical-align: middle; text-align: center;\">peek()</td><td style=\"border: 0px; margin: 0px; padding-right: 5px; padding-left: 5px; vertical-align: middle; text-align: center;\">无</td><td style=\"border: 0px; margin: 0px; padding-right: 5px; padding-left: 5px; vertical-align: middle; text-align: center;\">无</td></tr></tbody></table><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">ArrayBlockingQueue</strong></p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">定长的并发优化的BlockingQueue，基于循环数组实现。有一把公共的读写锁与notFull、notEmpty两个Condition管理队列满或空时的阻塞状态。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">LinkedBlockingQueue/LinkedBlockingDeque</strong></p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">可选定长的并发优化的BlockingQueue，基于链表实现，所以可以把长度设为Integer.MAX_VALUE。利用链表的特征，分离了takeLock与putLock两把锁，继续用notEmpty、notFull管理队列满或空时的阻塞状态。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">补充</strong></p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 20px; padding: 0px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, 宋体, &quot;Myriad Pro&quot;, Lato, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\">JDK7有个<a href=\"http://ifeve.com/java-transfer-queue/\" target=\"_blank\" class=\"external\" rel=\"nofollow\" style=\"border: 0px; margin: 0px; padding: 0px; text-decoration: none; color: rgb(0, 153, 204);\">LinkedTransferQueue</a>，transfer(e)方法保证Producer放入的元素，被Consumer取走了再返回，比SynchronousQueue更好，有空要学习下。</p><p><br/></p>', 1676209470);
INSERT INTO `feehi_admin_log` VALUES (127, 1, 'article/create', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\Article [ {{%article}} ]  {{%CREATED%}} {{%ID%}} 27 {{%RECORD%}}: <br>序号(id) => 27,<br>分类ID(cid) => 0,<br>类型(type) => 0,<br>标题(title) => 留言板,<br>副标题(sub_title) => ,<br>概述(summary) => 在这里留言吧！,<br>缩略图(thumb) => /uploads/article/thumb/20230212214611_63e8eda3445a1.jpg,<br>seo标题(seo_title) => ,<br>seo关键字(seo_keywords) => ,<br>seo描述(seo_description) => ,<br>状态(status) => 1,<br>排序(sort) => 0,<br>作者ID(author_id) => 1,<br>作者(author_name) => admin,<br>浏览次数(scan_count) => ,<br>评论次数(comment_count) => ,<br>评论(can_comment) => 1,<br>可见(visibility) => 1,<br>密码(password) => ,<br>头条(flag_headline) => 0,<br>推荐(flag_recommend) => 0,<br>幻灯(flag_slide_show) => 0,<br>特别推荐(flag_special_recommend) => 0,<br>滚动(flag_roll) => 0,<br>加粗(flag_bold) => 0,<br>图片(flag_picture) => 0,<br>文章模板(template) => ,<br>创建时间(created_at) => 1676209571,<br>最后更新(updated_at) => 1676209571', 1676209571);
INSERT INTO `feehi_admin_log` VALUES (128, 1, 'article/create', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\ArticleContent [ {{%article_content}} ]  {{%CREATED%}} {{%ID%}} 27 {{%RECORD%}}: <br>序号(id) => 27,<br>Aid(aid) => 27,<br>正文内容(content) => ', 1676209571);
INSERT INTO `feehi_admin_log` VALUES (129, 1, 'frontend-menu/update', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\Menu [ {{%menu}} ]  {{%UPDATED%}} {{%ID%}} 24 {{%RECORD%}}: <br>名称(name) : php=>留言板,<br>地址(url) : {\"0\":\"\\/article\\/view\",\"id\":\"26\"}=>{\"0\":\"\\/article\\/view\",\"id\":\"27\"},<br>最后更新(updated_at) : 1676209437=>1676209601', 1676209601);
INSERT INTO `feehi_admin_log` VALUES (130, 1, 'admin-user/self-update', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\AdminUser [ {{%admin_user}} ]  {{%UPDATED%}} {{%ID%}} 1 {{%RECORD%}}: <br>头像(avatar) : =>/admin/uploads/avatar/20230212214753_63e8ee09f377a.jpg,<br>最后更新(updated_at) : 1476711945=>1676209674', 1676209674);
INSERT INTO `feehi_admin_log` VALUES (131, 1, 'article/update', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\Article [ {{%article}} ]  {{%UPDATED%}} {{%ID%}} 27 {{%RECORD%}}: <br>最后更新(updated_at) : 1676209649=>1676209713', 1676209713);
INSERT INTO `feehi_admin_log` VALUES (132, 1, 'article/update', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\ArticleContent [ {{%article_content}} ]  {{%UPDATED%}} {{%ID%}} 27 {{%RECORD%}}: <br>正文内容(content) : =><p>在这里留言吧！</p>', 1676209713);
INSERT INTO `feehi_admin_log` VALUES (133, 1, 'article/update', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\Article [ {{%article}} ]  {{%UPDATED%}} {{%ID%}} 27 {{%RECORD%}}: <br>最后更新(updated_at) : 1676209713=>1676209744', 1676209744);
INSERT INTO `feehi_admin_log` VALUES (134, 1, 'setting/website', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} backend\\models\\form\\SettingWebsiteForm [ {{%options}} ]  {{%UPDATED%}} {{%ID%}} 3 {{%RECORD%}}: <br>Value(value) : Feehi CMS=>R-U-War', 1676209865);
INSERT INTO `feehi_admin_log` VALUES (135, 1, 'setting/website', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} backend\\models\\form\\SettingWebsiteForm [ {{%options}} ]  {{%UPDATED%}} {{%ID%}} 7 {{%RECORD%}}: <br>Value(value) : 粤ICP备15018643号=>No', 1676209865);
INSERT INTO `feehi_admin_log` VALUES (136, 1, 'setting/website', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} backend\\models\\form\\SettingWebsiteForm [ {{%options}} ]  {{%UPDATED%}} {{%ID%}} 1 {{%RECORD%}}: <br>Value(value) : FeehiCMS,php,内容管理框架,cms, feehi,framework=>俄乌战争', 1676209865);
INSERT INTO `feehi_admin_log` VALUES (137, 1, 'setting/website', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} backend\\models\\form\\SettingWebsiteForm [ {{%options}} ]  {{%UPDATED%}} {{%ID%}} 2 {{%RECORD%}}: <br>Value(value) : FeehiCMS是一款基于yii2的高性能快速开发的内容管理框架=>一个主题为俄乌战争的论坛网站。', 1676209865);
INSERT INTO `feehi_admin_log` VALUES (138, 1, 'article/update', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\Article [ {{%article}} ]  {{%UPDATED%}} {{%ID%}} 27 {{%RECORD%}}: <br>推荐(flag_recommend) : 0=>1,<br>最后更新(updated_at) : 1676209744=>1676210725', 1676210725);
INSERT INTO `feehi_admin_log` VALUES (139, 1, 'article/update', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\Article [ {{%article}} ]  {{%UPDATED%}} {{%ID%}} 27 {{%RECORD%}}: <br>特别推荐(flag_special_recommend) : 0=>1,<br>最后更新(updated_at) : 1676210725=>1676210744', 1676210744);
INSERT INTO `feehi_admin_log` VALUES (140, 1, 'article/update', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\Article [ {{%article}} ]  {{%UPDATED%}} {{%ID%}} 27 {{%RECORD%}}: <br>头条(flag_headline) : 0=>1,<br>最后更新(updated_at) : 1676210744=>1676210759', 1676210759);
INSERT INTO `feehi_admin_log` VALUES (141, 1, 'frontend-menu/update', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\Menu [ {{%menu}} ]  {{%UPDATED%}} {{%ID%}} 24 {{%RECORD%}}: <br>地址(url) : {\"0\":\"\\/article\\/view\",\"id\":\"27\"}=>{\"0\":\"\\/article\\/view\",\"id\":\"1\"},<br>最后更新(updated_at) : 1676209601=>1676210883', 1676210883);
INSERT INTO `feehi_admin_log` VALUES (142, 1, 'article/update', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\Article [ {{%article}} ]  {{%UPDATED%}} {{%ID%}} 1 {{%RECORD%}}: <br>头条(flag_headline) : 1=>0,<br>特别推荐(flag_special_recommend) : 1=>0,<br>最后更新(updated_at) : 1676210759=>1676211689', 1676211689);
INSERT INTO `feehi_admin_log` VALUES (143, 1, 'article/update', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\Article [ {{%article}} ]  {{%UPDATED%}} {{%ID%}} 1 {{%RECORD%}}: <br>概述(summary) : 在这里留言吧！=>小组名称：迪士尼在逃公组\r\n小组成员：\r\n2011370 杨博宇\r\n2012431 李佩诺\r\n2012911 马永田\r\n2013652 张建新\r\n\r\n欢迎在这里留言，对我们提出宝贵的意见和建议！,<br>最后更新(updated_at) : 1676211689=>1676211790', 1676211790);
INSERT INTO `feehi_admin_log` VALUES (144, 1, 'article/update', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\Article [ {{%article}} ]  {{%UPDATED%}} {{%ID%}} 1 {{%RECORD%}}: <br>概述(summary) : 小组名称：迪士尼在逃公组\r\n小组成员：\r\n2011370 杨博宇\r\n2012431 李佩诺\r\n2012911 马永田\r\n2013652 张建新\r\n\r\n欢迎在这里留言，对我们提出宝贵的意见和建议！=>小组名称：迪士尼在逃公组\r\n小组成员：\r\n2011370 杨博宇\r\n2012431 李佩诺\r\n2012911 马永田\r\n2013652 张建新\r\n欢迎在这里留言，对我们提出宝贵的意见和建议！,<br>最后更新(updated_at) : 1676211790=>1676212201', 1676212201);
INSERT INTO `feehi_admin_log` VALUES (145, 1, 'article/update', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\ArticleContent [ {{%article_content}} ]  {{%UPDATED%}} {{%ID%}} 1 {{%RECORD%}}: <br>正文内容(content) : <p>在这里留言吧！</p>=><p>小组名称：迪士尼在逃公组<br/>小组成员：<br/>2011370 杨博宇<br/>2012431 李佩诺<br/>2012911 马永田<br/>2013652 张建新<br/>欢迎在这里留言，对我们提出宝贵的意见和建议！</p>', 1676212201);
INSERT INTO `feehi_admin_log` VALUES (146, 1, 'article/update', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\Article [ {{%article}} ]  {{%UPDATED%}} {{%ID%}} 1 {{%RECORD%}}: <br>最后更新(updated_at) : 1676212201=>1676212219', 1676212219);
INSERT INTO `feehi_admin_log` VALUES (147, 1, 'article/update', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\ArticleContent [ {{%article_content}} ]  {{%UPDATED%}} {{%ID%}} 1 {{%RECORD%}}: <br>正文内容(content) : <p>小组名称：迪士尼在逃公组<br/>小组成员：<br/>2011370 杨博宇<br/>2012431 李佩诺<br/>2012911 马永田<br/>2013652 张建新<br/>欢迎在这里留言，对我们提出宝贵的意见和建议！</p>=><p>小组名称：迪士尼在逃公组</p><p>小组成员：<br/>2011370 杨博宇<br/>2012431 李佩诺<br/>2012911 马永田<br/>2013652 张建新<br/>欢迎在这里留言，对我们提出宝贵的意见和建议！</p>', 1676212219);
INSERT INTO `feehi_admin_log` VALUES (148, 1, 'article/update', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\Article [ {{%article}} ]  {{%UPDATED%}} {{%ID%}} 1 {{%RECORD%}}: <br>最后更新(updated_at) : 1676212219=>1676212465', 1676212465);
INSERT INTO `feehi_admin_log` VALUES (169, 1, 'menu/delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\Menu [ {{%menu}} ]  {{%DELETED%}} {{%ID%}} 18 {{%RECORD%}}: <br>序号(id) => 18,<br>类型(type) => 0,<br>父分类Id(parent_id) => 0,<br>名称(name) => 友情链接,<br>地址(url) => [\"\\/friendly-link\\/index\"],<br>图标(icon) => fa fa-link,<br>排序(sort) => 6,<br>新窗口打开(target) => _blank,<br>绝对地址(is_absolute_url) => 0,<br>是否显示(is_display) => 0,<br>创建时间(created_at) => 1505570934,<br>最后更新(updated_at) => 1676209196', 1676278944);
INSERT INTO `feehi_admin_log` VALUES (170, 1, 'menu/delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\Menu [ {{%menu}} ]  {{%DELETED%}} {{%ID%}} 22 {{%RECORD%}}: <br>序号(id) => 22,<br>类型(type) => 0,<br>父分类Id(parent_id) => 0,<br>名称(name) => 日志,<br>地址(url) => log/index,<br>图标(icon) => fa fa-history,<br>排序(sort) => 8,<br>新窗口打开(target) => _blank,<br>绝对地址(is_absolute_url) => 0,<br>是否显示(is_display) => 1,<br>创建时间(created_at) => 1505571212,<br>最后更新(updated_at) => 1512380045', 1676278959);
INSERT INTO `feehi_admin_log` VALUES (171, 1, 'menu/delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\Menu [ {{%menu}} ]  {{%DELETED%}} {{%ID%}} 21 {{%RECORD%}}: <br>序号(id) => 21,<br>类型(type) => 0,<br>父分类Id(parent_id) => 19,<br>名称(name) => 清除后台,<br>地址(url) => clear/backend,<br>图标(icon) => ,<br>排序(sort) => 0,<br>新窗口打开(target) => _blank,<br>绝对地址(is_absolute_url) => 0,<br>是否显示(is_display) => 1,<br>创建时间(created_at) => 1505570994,<br>最后更新(updated_at) => 1505570994', 1676278964);
INSERT INTO `feehi_admin_log` VALUES (172, 1, 'menu/delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\Menu [ {{%menu}} ]  {{%DELETED%}} {{%ID%}} 20 {{%RECORD%}}: <br>序号(id) => 20,<br>类型(type) => 0,<br>父分类Id(parent_id) => 19,<br>名称(name) => 清除前台,<br>地址(url) => clear/frontend,<br>图标(icon) => ,<br>排序(sort) => 0,<br>新窗口打开(target) => _blank,<br>绝对地址(is_absolute_url) => 0,<br>是否显示(is_display) => 1,<br>创建时间(created_at) => 1505570974,<br>最后更新(updated_at) => 1505570974', 1676278970);
INSERT INTO `feehi_admin_log` VALUES (173, 1, 'menu/delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\Menu [ {{%menu}} ]  {{%DELETED%}} {{%ID%}} 19 {{%RECORD%}}: <br>序号(id) => 19,<br>类型(type) => 0,<br>父分类Id(parent_id) => 0,<br>名称(name) => 缓存,<br>地址(url) => ,<br>图标(icon) => fa fa-file,<br>排序(sort) => 7,<br>新窗口打开(target) => _blank,<br>绝对地址(is_absolute_url) => 0,<br>是否显示(is_display) => 1,<br>创建时间(created_at) => 1505570947,<br>最后更新(updated_at) => 1512380045', 1676278975);
INSERT INTO `feehi_admin_log` VALUES (174, 1, 'menu/delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\Menu [ {{%menu}} ]  {{%DELETED%}} {{%ID%}} 3 {{%RECORD%}}: <br>序号(id) => 3,<br>类型(type) => 0,<br>父分类Id(parent_id) => 1,<br>名称(name) => SMTP设置,<br>地址(url) => setting/smtp,<br>图标(icon) => ,<br>排序(sort) => 2,<br>新窗口打开(target) => _blank,<br>绝对地址(is_absolute_url) => 0,<br>是否显示(is_display) => 1,<br>创建时间(created_at) => 1505570155,<br>最后更新(updated_at) => 1505570283', 1676279019);
INSERT INTO `feehi_admin_log` VALUES (175, 1, 'menu/delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\Menu [ {{%menu}} ]  {{%DELETED%}} {{%ID%}} 28 {{%RECORD%}}: <br>序号(id) => 28,<br>类型(type) => 0,<br>父分类Id(parent_id) => 27,<br>名称(name) => Banner管理,<br>地址(url) => banner/index,<br>图标(icon) => ,<br>排序(sort) => 0,<br>新窗口打开(target) => _self,<br>绝对地址(is_absolute_url) => 0,<br>是否显示(is_display) => 1,<br>创建时间(created_at) => 1505637000,<br>最后更新(updated_at) => 1505637000', 1676279030);
INSERT INTO `feehi_admin_log` VALUES (176, 1, 'menu/delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\Menu [ {{%menu}} ]  {{%DELETED%}} {{%ID%}} 29 {{%RECORD%}}: <br>序号(id) => 29,<br>类型(type) => 0,<br>父分类Id(parent_id) => 27,<br>名称(name) => 广告管理,<br>地址(url) => ad/index,<br>图标(icon) => ,<br>排序(sort) => 0,<br>新窗口打开(target) => _self,<br>绝对地址(is_absolute_url) => 0,<br>是否显示(is_display) => 1,<br>创建时间(created_at) => 1505637000,<br>最后更新(updated_at) => 1505637000', 1676279030);
INSERT INTO `feehi_admin_log` VALUES (177, 1, 'menu/delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\Menu [ {{%menu}} ]  {{%DELETED%}} {{%ID%}} 27 {{%RECORD%}}: <br>序号(id) => 27,<br>类型(type) => 0,<br>父分类Id(parent_id) => 0,<br>名称(name) => 运营管理,<br>地址(url) => [\"\"],<br>图标(icon) => fa fa-ils,<br>排序(sort) => 1,<br>新窗口打开(target) => _self,<br>绝对地址(is_absolute_url) => 0,<br>是否显示(is_display) => 0,<br>创建时间(created_at) => 1505637000,<br>最后更新(updated_at) => 1676209174', 1676279060);
INSERT INTO `feehi_admin_log` VALUES (178, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/setting/smtp:GET)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (179, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/setting/smtp:POST)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (180, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/setting/test-smtp:POST)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (181, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/banner/index:GET)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (182, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/banner/create:GET)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (183, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/banner/create:POST)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (184, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/banner/update:GET)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (185, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/banner/update:POST)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (186, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/banner/delete:POST)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (187, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/banner/banners:GET)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (188, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/banner/banner-create:GET)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (189, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/banner/banner-create:POST)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (190, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/banner/banner-view-layer:GET)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (191, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/banner/banner-update:GET)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (192, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/banner/banner-update:POST)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (193, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/banner/banner-sort:POST)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (194, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/banner/banner-delete:POST)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (195, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/ad/index:GET)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (196, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/ad/view-layer:GET)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (197, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/ad/create:GET)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (198, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/ad/create:POST)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (199, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/ad/update:GET)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (200, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/ad/update:POST)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (201, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/ad/delete:POST)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (202, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/ad/sort:POST)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (203, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/friendly-link/index:GET)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (204, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/friendly-link/view-layer:GET)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (205, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/friendly-link/create:GET)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (206, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/friendly-link/create:POST)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (207, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/friendly-link/update:GET)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (208, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/friendly-link/update:POST)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (209, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/friendly-link/delete:POST)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (210, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/friendly-link/sort:POST)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (211, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/log/index:GET)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (212, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/log/view-layer:GET)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (213, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/clear/backend:GET)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (214, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/clear/frontend:GET)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (215, 1, 'rbac/permission-delete', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\services\\RBACService删除 权限(/log/delete:POST)', 1676279222);
INSERT INTO `feehi_admin_log` VALUES (216, 1, 'article/update', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\Article [ {{%article}} ]  {{%UPDATED%}} {{%ID%}} 1 {{%RECORD%}}: <br>头条(flag_headline) : 0=>1,<br>最后更新(updated_at) : 1676213398=>1676281216', 1676281216);
INSERT INTO `feehi_admin_log` VALUES (217, 1, 'setting/custom', '{{%ADMIN_USER%}} [ admin ] {{%BY%}} common\\models\\Options [ {{%options}} ]  {{%UPDATED%}} {{%ID%}} 22 {{%RECORD%}}: <br>值(value) : 飞得更高=>迪士尼在逃公主', 1676282025);

-- ----------------------------
-- Table structure for feehi_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `feehi_admin_user`;
CREATE TABLE `feehi_admin_user`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'admin user id(auto increment)',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'admin username',
  `auth_key` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'admin user auth key for generate logged in cookie',
  `password_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'admin user crypt password',
  `password_reset_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT 'admin user reset password temp token',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'admin user email',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT 'admin user avatar url',
  `access_token` varchar(42) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'token',
  `status` smallint(0) NOT NULL DEFAULT 10 COMMENT 'admin user status, (normal:10)',
  `created_at` int(0) NOT NULL COMMENT 'created at',
  `updated_at` int(0) NOT NULL COMMENT 'updated at',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE,
  UNIQUE INDEX `password_reset_token`(`password_reset_token`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feehi_admin_user
-- ----------------------------
INSERT INTO `feehi_admin_user` VALUES (1, 'admin', 'zr9mY7lt23oAhj_ZYjydbLJKcbE3FJ19', '$2y$13$7/lClGU7jKSCC7pJLh/n8unnNqUvop9u4MoLYSLdYBPsk6TtUc0jW', NULL, '298985343@qq.com', '/admin/uploads/avatar/20230212214753_63e8ee09f377a.jpg', '', 10, 1468288038, 1676209674);

-- ----------------------------
-- Table structure for feehi_article
-- ----------------------------
DROP TABLE IF EXISTS `feehi_article`;
CREATE TABLE `feehi_article`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'article id(auto increment)',
  `cid` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'article category id',
  `type` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'type(0 article, 1 page)',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'article title',
  `sub_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'article sub title',
  `summary` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'article summary',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'thumb',
  `seo_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'seo title',
  `seo_keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'seo keywords',
  `seo_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'seo description',
  `status` smallint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'article status(0 draft,1 published)',
  `sort` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'article order',
  `author_id` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'article published by admin user id',
  `author_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'article published by admin username',
  `scan_count` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'article visited count',
  `comment_count` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'article comment count',
  `can_comment` smallint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'article can be comment. (0 no, 1 yes)',
  `visibility` smallint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'article visibility(1.public,2.after commented,3.password,4.after logged in)',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'article password(plain text)',
  `flag_headline` smallint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'is head line(0 no, 1 yes',
  `flag_recommend` smallint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'is recommend(0 no, 1 yes',
  `flag_slide_show` smallint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'is slide show(0 no, 1 yes',
  `flag_special_recommend` smallint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'is special recommend(0 no, 1 yes',
  `flag_roll` smallint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'is roll(0 no, 1 yes',
  `flag_bold` smallint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'is bold(0 no, 1 yes',
  `flag_picture` smallint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'is picture(0 no, 1 yes',
  `template` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'article detail page template path',
  `created_at` int(0) UNSIGNED NOT NULL COMMENT 'created at',
  `updated_at` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'updated at',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feehi_article
-- ----------------------------
INSERT INTO `feehi_article` VALUES (1, 0, 0, '留言板', '来这里留言吧！', '小组名称：迪士尼在逃公组\r\n小组成员：\r\n2011370 杨博宇\r\n2012431 李佩诺\r\n2012911 马永田\r\n2013652 张建新', '/uploads/article/thumb/20230212224958_63e8fc961017d.jpg', '', '', '', 1, 0, 1, 'admin', 5, 1, 1, 1, '', 1, 1, 0, 1, 0, 0, 0, '', 1676213271, 1676281216);

-- ----------------------------
-- Table structure for feehi_article_content
-- ----------------------------
DROP TABLE IF EXISTS `feehi_article_content`;
CREATE TABLE `feehi_article_content`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'article content id(auto increment)',
  `aid` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'article id',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'article content',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feehi_article_content
-- ----------------------------
INSERT INTO `feehi_article_content` VALUES (1, 1, '<p style=\"text-align:center\"><span style=\";font-family:华文中宋;font-size:19px\">小组名称：</span><span style=\";font-family:华文中宋;font-size:16px\">迪士尼在逃公组</span></p><p style=\"text-align:center\"><span style=\";font-family:华文中宋;font-size:19px\">小组成员：</span></p><p style=\"text-align:center\"><span style=\";font-family:华文中宋;font-size:16px\">2011370 杨博宇</span></p><p style=\"text-align:center\"><span style=\";font-family:华文中宋;font-size:16px\">2012431 李佩诺</span></p><p style=\"text-align:center\"><span style=\";font-family:华文中宋;font-size:16px\">2012911 马永田</span></p><p style=\"text-align:center\"><span style=\";font-family:华文中宋;font-size:16px\">2013652 张建新</span></p><p><br/></p>');

-- ----------------------------
-- Table structure for feehi_article_meta
-- ----------------------------
DROP TABLE IF EXISTS `feehi_article_meta`;
CREATE TABLE `feehi_article_meta`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'article meta id(auto increment)',
  `aid` int(0) UNSIGNED NOT NULL COMMENT 'article id',
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'key',
  `value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'value',
  `created_at` int(0) UNSIGNED NOT NULL COMMENT 'article meta created at',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `article_meta_index_aid`(`aid`) USING BTREE,
  INDEX `article_meta_index_key`(`key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feehi_article_meta
-- ----------------------------
INSERT INTO `feehi_article_meta` VALUES (50, 1, 'like', '127.0.0.1', 1676211167);

-- ----------------------------
-- Table structure for feehi_auth_assignment
-- ----------------------------
DROP TABLE IF EXISTS `feehi_auth_assignment`;
CREATE TABLE `feehi_auth_assignment`  (
  `item_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`item_name`, `user_id`) USING BTREE,
  CONSTRAINT `feehi_auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `feehi_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feehi_auth_assignment
-- ----------------------------

-- ----------------------------
-- Table structure for feehi_auth_item
-- ----------------------------
DROP TABLE IF EXISTS `feehi_auth_item`;
CREATE TABLE `feehi_auth_item`  (
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(0) NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `rule_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `created_at` int(0) NULL DEFAULT NULL,
  `updated_at` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE,
  INDEX `rule_name`(`rule_name`) USING BTREE,
  INDEX `idx-auth_item-type`(`type`) USING BTREE,
  CONSTRAINT `feehi_auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `feehi_auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feehi_auth_item
-- ----------------------------
INSERT INTO `feehi_auth_item` VALUES ('/admin-user/create:GET', 2, '创建(查看)', NULL, 's:69:\"{\"group\":\"\\u6743\\u9650\",\"sort\":\"524\",\"category\":\"\\u7ba1\\u7406\\u5458\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/admin-user/create:POST', 2, '创建(确定)', NULL, 's:69:\"{\"group\":\"\\u6743\\u9650\",\"sort\":\"525\",\"category\":\"\\u7ba1\\u7406\\u5458\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/admin-user/delete:POST', 2, '删除', NULL, 's:69:\"{\"group\":\"\\u6743\\u9650\",\"sort\":\"522\",\"category\":\"\\u7ba1\\u7406\\u5458\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/admin-user/index:GET', 2, '列表', NULL, 's:69:\"{\"group\":\"\\u6743\\u9650\",\"sort\":\"520\",\"category\":\"\\u7ba1\\u7406\\u5458\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/admin-user/sort:POST', 2, '排序', NULL, 's:69:\"{\"group\":\"\\u6743\\u9650\",\"sort\":\"523\",\"category\":\"\\u7ba1\\u7406\\u5458\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/admin-user/update:GET', 2, '修改(查看)', NULL, 's:69:\"{\"group\":\"\\u6743\\u9650\",\"sort\":\"526\",\"category\":\"\\u7ba1\\u7406\\u5458\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/admin-user/update:POST', 2, '修改(确定)', NULL, 's:69:\"{\"group\":\"\\u6743\\u9650\",\"sort\":\"527\",\"category\":\"\\u7ba1\\u7406\\u5458\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/admin-user/view-layer:GET', 2, '查看', NULL, 's:69:\"{\"group\":\"\\u6743\\u9650\",\"sort\":\"521\",\"category\":\"\\u7ba1\\u7406\\u5458\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/article/create:GET', 2, '创建(查看)', NULL, 's:63:\"{\"group\":\"\\u5185\\u5bb9\",\"sort\":\"302\",\"category\":\"\\u6587\\u7ae0\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/article/create:POST', 2, '创建(确定)', NULL, 's:63:\"{\"group\":\"\\u5185\\u5bb9\",\"sort\":\"303\",\"category\":\"\\u6587\\u7ae0\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/article/delete:POST', 2, '删除', NULL, 's:63:\"{\"group\":\"\\u5185\\u5bb9\",\"sort\":\"306\",\"category\":\"\\u6587\\u7ae0\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/article/index:GET', 2, '列表', NULL, 's:63:\"{\"group\":\"\\u5185\\u5bb9\",\"sort\":\"300\",\"category\":\"\\u6587\\u7ae0\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/article/sort:POST', 2, '排序', NULL, 's:63:\"{\"group\":\"\\u5185\\u5bb9\",\"sort\":\"307\",\"category\":\"\\u6587\\u7ae0\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/article/update:GET', 2, '修改(查看)', NULL, 's:63:\"{\"group\":\"\\u5185\\u5bb9\",\"sort\":\"304\",\"category\":\"\\u6587\\u7ae0\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/article/update:POST', 2, '修改(确定)', NULL, 's:63:\"{\"group\":\"\\u5185\\u5bb9\",\"sort\":\"305\",\"category\":\"\\u6587\\u7ae0\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/article/view-layer:GET', 2, '查看', NULL, 's:63:\"{\"group\":\"\\u5185\\u5bb9\",\"sort\":\"301\",\"category\":\"\\u6587\\u7ae0\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/category/create:GET', 2, '创建(查看)', NULL, 's:63:\"{\"group\":\"\\u5185\\u5bb9\",\"sort\":\"312\",\"category\":\"\\u5206\\u7c7b\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/category/create:POST', 2, '创建(确定)', NULL, 's:63:\"{\"group\":\"\\u5185\\u5bb9\",\"sort\":\"313\",\"category\":\"\\u5206\\u7c7b\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/category/delete:POST', 2, '删除', NULL, 's:63:\"{\"group\":\"\\u5185\\u5bb9\",\"sort\":\"316\",\"category\":\"\\u5206\\u7c7b\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/category/index:GET', 2, '列表', NULL, 's:63:\"{\"group\":\"\\u5185\\u5bb9\",\"sort\":\"310\",\"category\":\"\\u5206\\u7c7b\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/category/sort:POST', 2, '排序', NULL, 's:63:\"{\"group\":\"\\u5185\\u5bb9\",\"sort\":\"317\",\"category\":\"\\u5206\\u7c7b\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/category/update:GET', 2, '修改(查看)', NULL, 's:63:\"{\"group\":\"\\u5185\\u5bb9\",\"sort\":\"314\",\"category\":\"\\u5206\\u7c7b\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/category/update:POST', 2, '修改(确定)', NULL, 's:63:\"{\"group\":\"\\u5185\\u5bb9\",\"sort\":\"315\",\"category\":\"\\u5206\\u7c7b\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/category/view-layer:GET', 2, '查看', NULL, 's:63:\"{\"group\":\"\\u5185\\u5bb9\",\"sort\":\"311\",\"category\":\"\\u5206\\u7c7b\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/comment/delete:POST', 2, '删除', NULL, 's:63:\"{\"group\":\"\\u5185\\u5bb9\",\"sort\":\"324\",\"category\":\"\\u8bc4\\u8bba\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/comment/index:GET', 2, '列表', NULL, 's:63:\"{\"group\":\"\\u5185\\u5bb9\",\"sort\":\"320\",\"category\":\"\\u8bc4\\u8bba\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/comment/update:GET', 2, '修改(查看)', NULL, 's:63:\"{\"group\":\"\\u5185\\u5bb9\",\"sort\":\"322\",\"category\":\"\\u8bc4\\u8bba\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/comment/update:POST', 2, '修改(确定)', NULL, 's:63:\"{\"group\":\"\\u5185\\u5bb9\",\"sort\":\"323\",\"category\":\"\\u8bc4\\u8bba\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/comment/view-layer:GET', 2, '查看', NULL, 's:63:\"{\"group\":\"\\u5185\\u5bb9\",\"sort\":\"321\",\"category\":\"\\u8bc4\\u8bba\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/frontend-menu/create:GET', 2, '创建(查看)', NULL, 's:63:\"{\"group\":\"\\u83dc\\u5355\",\"sort\":\"202\",\"category\":\"\\u524d\\u53f0\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/frontend-menu/create:POST', 2, '创建(确定)', NULL, 's:63:\"{\"group\":\"\\u83dc\\u5355\",\"sort\":\"203\",\"category\":\"\\u524d\\u53f0\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/frontend-menu/delete:POST', 2, '删除', NULL, 's:63:\"{\"group\":\"\\u83dc\\u5355\",\"sort\":\"206\",\"category\":\"\\u524d\\u53f0\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/frontend-menu/index:GET', 2, '列表', NULL, 's:63:\"{\"group\":\"\\u83dc\\u5355\",\"sort\":\"200\",\"category\":\"\\u524d\\u53f0\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/frontend-menu/sort:POST', 2, '排序', NULL, 's:63:\"{\"group\":\"\\u83dc\\u5355\",\"sort\":\"207\",\"category\":\"\\u524d\\u53f0\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/frontend-menu/update:GET', 2, '修改(查看)', NULL, 's:63:\"{\"group\":\"\\u83dc\\u5355\",\"sort\":\"204\",\"category\":\"\\u524d\\u53f0\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/frontend-menu/update:POST', 2, '修改(确定)', NULL, 's:63:\"{\"group\":\"\\u83dc\\u5355\",\"sort\":\"205\",\"category\":\"\\u524d\\u53f0\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/frontend-menu/view-layer:GET', 2, '查看', NULL, 's:63:\"{\"group\":\"\\u83dc\\u5355\",\"sort\":\"201\",\"category\":\"\\u524d\\u53f0\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/menu/create:GET', 2, '创建(查看)', NULL, 's:63:\"{\"group\":\"\\u83dc\\u5355\",\"sort\":\"212\",\"category\":\"\\u540e\\u53f0\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/menu/create:POST', 2, '创建(确定)', NULL, 's:63:\"{\"group\":\"\\u83dc\\u5355\",\"sort\":\"213\",\"category\":\"\\u540e\\u53f0\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/menu/delete:POST', 2, '删除', NULL, 's:63:\"{\"group\":\"\\u83dc\\u5355\",\"sort\":\"216\",\"category\":\"\\u540e\\u53f0\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/menu/index:GET', 2, '列表', NULL, 's:63:\"{\"group\":\"\\u83dc\\u5355\",\"sort\":\"210\",\"category\":\"\\u540e\\u53f0\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/menu/sort:POST', 2, '排序', NULL, 's:63:\"{\"group\":\"\\u83dc\\u5355\",\"sort\":\"217\",\"category\":\"\\u540e\\u53f0\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/menu/update:GET', 2, '修改(查看)', NULL, 's:63:\"{\"group\":\"\\u83dc\\u5355\",\"sort\":\"214\",\"category\":\"\\u540e\\u53f0\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/menu/update:POST', 2, '修改(确定)', NULL, 's:63:\"{\"group\":\"\\u83dc\\u5355\",\"sort\":\"215\",\"category\":\"\\u540e\\u53f0\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/menu/view-layer:GET', 2, '查看', NULL, 's:63:\"{\"group\":\"\\u83dc\\u5355\",\"sort\":\"211\",\"category\":\"\\u540e\\u53f0\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/page/create:GET', 2, '创建(查看)', NULL, 's:63:\"{\"group\":\"\\u5185\\u5bb9\",\"sort\":\"332\",\"category\":\"\\u5355\\u9875\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/page/create:POST', 2, '创建(确定)', NULL, 's:63:\"{\"group\":\"\\u5185\\u5bb9\",\"sort\":\"333\",\"category\":\"\\u5355\\u9875\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/page/delete:POST', 2, '删除', NULL, 's:63:\"{\"group\":\"\\u5185\\u5bb9\",\"sort\":\"336\",\"category\":\"\\u5355\\u9875\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/page/index:GET', 2, '列表', NULL, 's:63:\"{\"group\":\"\\u5185\\u5bb9\",\"sort\":\"330\",\"category\":\"\\u5355\\u9875\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/page/sort:POST', 2, '排序', NULL, 's:63:\"{\"group\":\"\\u5185\\u5bb9\",\"sort\":\"337\",\"category\":\"\\u5355\\u9875\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/page/update:GET', 2, '修改(查看)', NULL, 's:63:\"{\"group\":\"\\u5185\\u5bb9\",\"sort\":\"334\",\"category\":\"\\u5355\\u9875\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/page/update:POST', 2, '修改(确定)', NULL, 's:63:\"{\"group\":\"\\u5185\\u5bb9\",\"sort\":\"335\",\"category\":\"\\u5355\\u9875\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/page/view-layer:GET', 2, '查看', NULL, 's:63:\"{\"group\":\"\\u5185\\u5bb9\",\"sort\":\"331\",\"category\":\"\\u5355\\u9875\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/rbac/permission-create:GET', 2, '创建(查看)', NULL, 's:63:\"{\"group\":\"\\u6743\\u9650\",\"sort\":\"502\",\"category\":\"\\u89c4\\u5219\"}\";', 1543937187, 1543937187);
INSERT INTO `feehi_auth_item` VALUES ('/rbac/permission-create:POST', 2, '创建(确定)', NULL, 's:63:\"{\"group\":\"\\u6743\\u9650\",\"sort\":\"503\",\"category\":\"\\u89c4\\u5219\"}\";', 1543937187, 1543937187);
INSERT INTO `feehi_auth_item` VALUES ('/rbac/permission-delete:POST', 2, '删除', NULL, 's:63:\"{\"group\":\"\\u6743\\u9650\",\"sort\":\"507\",\"category\":\"\\u89c4\\u5219\"}\";', 1543937187, 1543937187);
INSERT INTO `feehi_auth_item` VALUES ('/rbac/permission-sort:POST', 2, '排序', NULL, 's:63:\"{\"group\":\"\\u6743\\u9650\",\"sort\":\"501\",\"category\":\"\\u89c4\\u5219\"}\";', 1543937187, 1543937187);
INSERT INTO `feehi_auth_item` VALUES ('/rbac/permission-update:GET', 2, '修改(查看)', NULL, 's:63:\"{\"group\":\"\\u6743\\u9650\",\"sort\":\"504\",\"category\":\"\\u89c4\\u5219\"}\";', 1543937187, 1543937187);
INSERT INTO `feehi_auth_item` VALUES ('/rbac/permission-update:POST', 2, '修改(确定)', NULL, 's:63:\"{\"group\":\"\\u6743\\u9650\",\"sort\":\"505\",\"category\":\"\\u89c4\\u5219\"}\";', 1543937187, 1543937187);
INSERT INTO `feehi_auth_item` VALUES ('/rbac/permission-view-layer:GET', 2, '查看', NULL, 's:63:\"{\"group\":\"\\u6743\\u9650\",\"sort\":\"506\",\"category\":\"\\u89c4\\u5219\"}\";', 1543937187, 1543937187);
INSERT INTO `feehi_auth_item` VALUES ('/rbac/permissions:GET', 2, '列表', NULL, 's:63:\"{\"group\":\"\\u6743\\u9650\",\"sort\":\"500\",\"category\":\"\\u89c4\\u5219\"}\";', 1543937187, 1543937187);
INSERT INTO `feehi_auth_item` VALUES ('/rbac/role-create:GET', 2, '创建(查看)', NULL, 's:63:\"{\"group\":\"\\u6743\\u9650\",\"sort\":\"511\",\"category\":\"\\u89d2\\u8272\"}\";', 1543937187, 1543937187);
INSERT INTO `feehi_auth_item` VALUES ('/rbac/role-create:POST', 2, '创建(确定)', NULL, 's:63:\"{\"group\":\"\\u6743\\u9650\",\"sort\":\"512\",\"category\":\"\\u89d2\\u8272\"}\";', 1543937187, 1543937187);
INSERT INTO `feehi_auth_item` VALUES ('/rbac/role-delete:POST', 2, '删除', NULL, 's:63:\"{\"group\":\"\\u6743\\u9650\",\"sort\":\"517\",\"category\":\"\\u89d2\\u8272\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/rbac/role-sort:POST', 2, '排序', NULL, 's:63:\"{\"group\":\"\\u6743\\u9650\",\"sort\":\"516\",\"category\":\"\\u89d2\\u8272\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/rbac/role-update:GET', 2, '修改(查看)', NULL, 's:63:\"{\"group\":\"\\u6743\\u9650\",\"sort\":\"513\",\"category\":\"\\u89d2\\u8272\"}\";', 1543937187, 1543937187);
INSERT INTO `feehi_auth_item` VALUES ('/rbac/role-update:POST', 2, '修改(确定)', NULL, 's:63:\"{\"group\":\"\\u6743\\u9650\",\"sort\":\"514\",\"category\":\"\\u89d2\\u8272\"}\";', 1543937187, 1543937187);
INSERT INTO `feehi_auth_item` VALUES ('/rbac/role-view-layer:GET', 2, '查看', NULL, 's:63:\"{\"group\":\"\\u6743\\u9650\",\"sort\":\"515\",\"category\":\"\\u89d2\\u8272\"}\";', 1543937187, 1543937187);
INSERT INTO `feehi_auth_item` VALUES ('/rbac/roles:GET', 2, '列表', NULL, 's:63:\"{\"group\":\"\\u6743\\u9650\",\"sort\":\"510\",\"category\":\"\\u89d2\\u8272\"}\";', 1543937187, 1543937187);
INSERT INTO `feehi_auth_item` VALUES ('/setting/custom-create:GET', 2, '自定义设置创建(查看)', NULL, 's:81:\"{\"group\":\"\\u8bbe\\u7f6e\",\"sort\":\"133\",\"category\":\"\\u81ea\\u5b9a\\u4e49\\u8bbe\\u7f6e\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/setting/custom-create:POST', 2, '自定义设置创建(确定)', NULL, 's:81:\"{\"group\":\"\\u8bbe\\u7f6e\",\"sort\":\"134\",\"category\":\"\\u81ea\\u5b9a\\u4e49\\u8bbe\\u7f6e\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/setting/custom-delete:POST', 2, '删除', NULL, 's:81:\"{\"group\":\"\\u8bbe\\u7f6e\",\"sort\":\"132\",\"category\":\"\\u81ea\\u5b9a\\u4e49\\u8bbe\\u7f6e\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/setting/custom-update:GET', 2, '自定义设置修改(查看)', NULL, 's:81:\"{\"group\":\"\\u8bbe\\u7f6e\",\"sort\":\"135\",\"category\":\"\\u81ea\\u5b9a\\u4e49\\u8bbe\\u7f6e\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/setting/custom-update:POST', 2, '自定义设置修改(确定)', NULL, 's:81:\"{\"group\":\"\\u8bbe\\u7f6e\",\"sort\":\"136\",\"category\":\"\\u81ea\\u5b9a\\u4e49\\u8bbe\\u7f6e\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/setting/custom:GET', 2, '修改(查看)', NULL, 's:81:\"{\"group\":\"\\u8bbe\\u7f6e\",\"sort\":\"130\",\"category\":\"\\u81ea\\u5b9a\\u4e49\\u8bbe\\u7f6e\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/setting/custom:POST', 2, '修改(确定)', NULL, 's:81:\"{\"group\":\"\\u8bbe\\u7f6e\",\"sort\":\"131\",\"category\":\"\\u81ea\\u5b9a\\u4e49\\u8bbe\\u7f6e\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/setting/website:GET', 2, '网站设置(查看)', NULL, 's:75:\"{\"group\":\"\\u8bbe\\u7f6e\",\"sort\":\"100\",\"category\":\"\\u7f51\\u7ad9\\u8bbe\\u7f6e\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/setting/website:POST', 2, '网站设置(确定)', NULL, 's:75:\"{\"group\":\"\\u8bbe\\u7f6e\",\"sort\":\"101\",\"category\":\"\\u7f51\\u7ad9\\u8bbe\\u7f6e\"}\";', 1543937188, 1543937188);
INSERT INTO `feehi_auth_item` VALUES ('/user/create:GET', 2, '创建(查看)', NULL, 's:75:\"{\"group\":\"\\u7528\\u6237\",\"sort\":\"402\",\"category\":\"\\u524d\\u53f0\\u7528\\u6237\"}\";', 1543937187, 1543937187);
INSERT INTO `feehi_auth_item` VALUES ('/user/create:POST', 2, '创建(确定)', NULL, 's:75:\"{\"group\":\"\\u7528\\u6237\",\"sort\":\"403\",\"category\":\"\\u524d\\u53f0\\u7528\\u6237\"}\";', 1543937187, 1543937187);
INSERT INTO `feehi_auth_item` VALUES ('/user/delete:POST', 2, '删除', NULL, 's:75:\"{\"group\":\"\\u7528\\u6237\",\"sort\":\"406\",\"category\":\"\\u524d\\u53f0\\u7528\\u6237\"}\";', 1543937187, 1543937187);
INSERT INTO `feehi_auth_item` VALUES ('/user/index:GET', 2, '列表', NULL, 's:75:\"{\"group\":\"\\u7528\\u6237\",\"sort\":\"400\",\"category\":\"\\u524d\\u53f0\\u7528\\u6237\"}\";', 1543937187, 1543937187);
INSERT INTO `feehi_auth_item` VALUES ('/user/sort:POST', 2, '排序', NULL, 's:75:\"{\"group\":\"\\u7528\\u6237\",\"sort\":\"407\",\"category\":\"\\u524d\\u53f0\\u7528\\u6237\"}\";', 1543937187, 1543937187);
INSERT INTO `feehi_auth_item` VALUES ('/user/update:GET', 2, '修改(查看)', NULL, 's:75:\"{\"group\":\"\\u7528\\u6237\",\"sort\":\"404\",\"category\":\"\\u524d\\u53f0\\u7528\\u6237\"}\";', 1543937187, 1543937187);
INSERT INTO `feehi_auth_item` VALUES ('/user/update:POST', 2, '修改(确定)', NULL, 's:75:\"{\"group\":\"\\u7528\\u6237\",\"sort\":\"405\",\"category\":\"\\u524d\\u53f0\\u7528\\u6237\"}\";', 1543937187, 1543937187);
INSERT INTO `feehi_auth_item` VALUES ('/user/view-layer:GET', 2, '查看', NULL, 's:75:\"{\"group\":\"\\u7528\\u6237\",\"sort\":\"401\",\"category\":\"\\u524d\\u53f0\\u7528\\u6237\"}\";', 1543937187, 1543937187);

-- ----------------------------
-- Table structure for feehi_auth_item_child
-- ----------------------------
DROP TABLE IF EXISTS `feehi_auth_item_child`;
CREATE TABLE `feehi_auth_item_child`  (
  `parent` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`, `child`) USING BTREE,
  INDEX `child`(`child`) USING BTREE,
  CONSTRAINT `feehi_auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `feehi_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `feehi_auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `feehi_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feehi_auth_item_child
-- ----------------------------

-- ----------------------------
-- Table structure for feehi_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `feehi_auth_rule`;
CREATE TABLE `feehi_auth_rule`  (
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `data` blob NULL,
  `created_at` int(0) NULL DEFAULT NULL,
  `updated_at` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feehi_auth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for feehi_category
-- ----------------------------
DROP TABLE IF EXISTS `feehi_category`;
CREATE TABLE `feehi_category`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'category id(auto increment)',
  `parent_id` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'category parent id(an exist category id)',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'category name',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'category alias',
  `sort` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'category order',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'category remark info',
  `template` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'category page template path',
  `article_template` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'article detail page template path',
  `created_at` int(0) UNSIGNED NOT NULL COMMENT 'created at',
  `updated_at` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'updated at',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feehi_category
-- ----------------------------

-- ----------------------------
-- Table structure for feehi_comment
-- ----------------------------
DROP TABLE IF EXISTS `feehi_comment`;
CREATE TABLE `feehi_comment`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'comment id(auto increment)',
  `aid` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'article id',
  `uid` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'user id(0 for guest)',
  `admin_id` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'admin user id(other user reply 0)',
  `reply_to` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'reply to comment id',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '游客' COMMENT 'user nickname',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'email',
  `website_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'user website',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'comment content',
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'user ip',
  `status` smallint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'comment status(0 to be audit, 1 approved, 2 reject',
  `created_at` int(0) UNSIGNED NOT NULL COMMENT 'created at',
  `updated_at` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'updated at',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `comment_index_aid`(`aid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feehi_comment
-- ----------------------------
INSERT INTO `feehi_comment` VALUES (1, 1, 1, 0, 0, 'mmma', '', 'http://', '嗷嗷', '127.0.0.1', 1, 1676213280, 1676213280);

-- ----------------------------
-- Table structure for feehi_friendly_link
-- ----------------------------
DROP TABLE IF EXISTS `feehi_friendly_link`;
CREATE TABLE `feehi_friendly_link`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'friendly link id(auto increment)',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'website name',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'website icon url',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'website url',
  `target` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '_blank' COMMENT 'open method(_blank, _self)',
  `sort` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'order',
  `status` smallint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'status(0 hide, 1 display',
  `created_at` int(0) UNSIGNED NOT NULL COMMENT 'created at',
  `updated_at` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'updated at',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feehi_friendly_link
-- ----------------------------

-- ----------------------------
-- Table structure for feehi_menu
-- ----------------------------
DROP TABLE IF EXISTS `feehi_menu`;
CREATE TABLE `feehi_menu`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'menu id(auto increment)',
  `type` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'menu type(0 backend, 1 frontend',
  `parent_id` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'parent menu id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'menu name',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'menu url',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'menu icon',
  `sort` float UNSIGNED NOT NULL DEFAULT 0 COMMENT 'menu order',
  `target` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '_blank' COMMENT 'open method(_blank, _self',
  `is_absolute_url` smallint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'is absolute url',
  `is_display` smallint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'is display(0 no, 1 yes',
  `created_at` int(0) UNSIGNED NOT NULL COMMENT 'created at',
  `updated_at` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'updated at',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feehi_menu
-- ----------------------------
INSERT INTO `feehi_menu` VALUES (1, 0, 0, '设置', '', 'fa fa-cogs', 0, '_blank', 0, 1, 1505570067, 1505570067);
INSERT INTO `feehi_menu` VALUES (2, 0, 1, '网站设置', '/setting/website', '', 1, '_blank', 0, 1, 1505570108, 1505570108);
INSERT INTO `feehi_menu` VALUES (4, 0, 1, '自定义设置', 'setting/custom', '', 4, '_blank', 0, 1, 1505570187, 1505570187);
INSERT INTO `feehi_menu` VALUES (5, 0, 0, '菜单', '', 'fa fa-th-list', 2, '_blank', 0, 1, 1505570320, 1512380045);
INSERT INTO `feehi_menu` VALUES (6, 0, 5, '前台菜单', 'frontend-menu/index', '', 0, '_blank', 0, 1, 1505570366, 1505570366);
INSERT INTO `feehi_menu` VALUES (7, 0, 5, '后台菜单', 'menu/index', '', 0, '_blank', 0, 1, 1505570382, 1505570382);
INSERT INTO `feehi_menu` VALUES (8, 0, 0, '内容', '', 'fa fa-edit', 3, '_blank', 0, 1, 1505570558, 1512380045);
INSERT INTO `feehi_menu` VALUES (9, 0, 8, '文章', 'article/index', '', 0, '_blank', 0, 1, 1505570610, 1505570610);
INSERT INTO `feehi_menu` VALUES (10, 0, 8, '分类', 'category/index', '', 0, '_blank', 0, 1, 1505570638, 1505570638);
INSERT INTO `feehi_menu` VALUES (11, 0, 8, '评论', 'comment/index', '', 0, '_blank', 0, 1, 1505570661, 1505570707);
INSERT INTO `feehi_menu` VALUES (12, 0, 8, '单页', '[\"\\/page\\/index\"]', '', 0, '_blank', 0, 0, 1505570687, 1676283210);
INSERT INTO `feehi_menu` VALUES (13, 0, 0, '用户', 'user/index', 'fa fa-users', 4, '_blank', 0, 1, 1505570745, 1512380045);
INSERT INTO `feehi_menu` VALUES (14, 0, 0, '权限管理', '', 'fa fa-th-large', 5, '_blank', 0, 1, 1505570819, 1512380045);
INSERT INTO `feehi_menu` VALUES (15, 0, 14, '权限', 'rbac/permissions', '', 0, '_blank', 0, 1, 1505570862, 1505570862);
INSERT INTO `feehi_menu` VALUES (16, 0, 14, '角色', 'rbac/roles', '', 0, '_blank', 0, 1, 1505570882, 1505570882);
INSERT INTO `feehi_menu` VALUES (17, 0, 14, '管理员', 'admin-user/index', '', 0, '_blank', 0, 1, 1505570902, 1505570902);
INSERT INTO `feehi_menu` VALUES (23, 1, 0, '首页', 'article/index', '', 0, '_self', 0, 1, 1505636890, 1505637024);
INSERT INTO `feehi_menu` VALUES (24, 1, 0, '留言板', '{\"0\":\"\\/article\\/view\",\"id\":\"1\"}', '', 0, '_self', 0, 1, 1505636915, 1676212596);
INSERT INTO `feehi_menu` VALUES (30, 0, 0, '团队主页', '[\"\\/team\\/index\"]', 'fa fa-user', 0, '_blank', 0, 1, 1676030946, 1676209089);
INSERT INTO `feehi_menu` VALUES (31, 1, 0, '团队主页', '[\"\\/team\\/index\"]', '', 0, '_blank', 0, 1, 1676100682, 1676101804);

-- ----------------------------
-- Table structure for feehi_options
-- ----------------------------
DROP TABLE IF EXISTS `feehi_options`;
CREATE TABLE `feehi_options`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'options id(auto increment)',
  `type` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'type (0 system, 1 custom, 2 banner, 3 advertisement',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'identifier',
  `value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'value',
  `input_type` smallint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'input box type',
  `autoload` smallint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'is autoload(0 no, 1 yes',
  `tips` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'tips',
  `sort` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'order',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feehi_options
-- ----------------------------
INSERT INTO `feehi_options` VALUES (1, 0, 'seo_keywords', '俄乌战争', 1, 0, '', 0);
INSERT INTO `feehi_options` VALUES (2, 0, 'seo_description', '一个主题为俄乌战争的论坛网站。', 1, 0, '', 0);
INSERT INTO `feehi_options` VALUES (3, 0, 'website_title', 'R-U-War', 1, 0, '', 0);
INSERT INTO `feehi_options` VALUES (4, 0, 'website_description', 'Based on most popular php framework yii2', 1, 0, '', 0);
INSERT INTO `feehi_options` VALUES (5, 0, 'website_email', 'admin@feehi.com', 1, 0, '', 0);
INSERT INTO `feehi_options` VALUES (6, 0, 'website_language', 'zh-CN', 1, 0, '', 0);
INSERT INTO `feehi_options` VALUES (7, 0, 'website_icp', 'No', 1, 0, '', 0);
INSERT INTO `feehi_options` VALUES (8, 0, 'website_statics_script', '', 1, 0, '', 0);
INSERT INTO `feehi_options` VALUES (9, 0, 'website_status', '1', 1, 0, '', 0);
INSERT INTO `feehi_options` VALUES (10, 0, 'website_comment', '1', 1, 0, '', 0);
INSERT INTO `feehi_options` VALUES (11, 0, 'website_comment_need_verify', '0', 1, 0, '', 0);
INSERT INTO `feehi_options` VALUES (12, 0, 'website_timezone', 'Asia/Shanghai', 1, 0, '', 0);
INSERT INTO `feehi_options` VALUES (13, 0, 'website_url', '//localhost:8080/', 1, 0, '', 0);
INSERT INTO `feehi_options` VALUES (14, 0, 'smtp_host', '', 1, 0, '', 0);
INSERT INTO `feehi_options` VALUES (15, 0, 'smtp_username', '', 1, 0, '', 0);
INSERT INTO `feehi_options` VALUES (16, 0, 'smtp_password', '', 1, 0, '', 0);
INSERT INTO `feehi_options` VALUES (17, 0, 'smtp_port', '', 1, 0, '', 0);
INSERT INTO `feehi_options` VALUES (18, 0, 'smtp_encryption', '', 1, 0, '', 0);
INSERT INTO `feehi_options` VALUES (19, 0, 'smtp_nickname', '', 1, 0, '', 0);
INSERT INTO `feehi_options` VALUES (20, 1, 'weibo', 'http://www.weibo.com/feeppp', 1, 1, '新浪微博', 0);
INSERT INTO `feehi_options` VALUES (21, 1, 'facebook', 'http://www.facebook.com/liufee', 1, 1, 'facebook', 0);
INSERT INTO `feehi_options` VALUES (22, 1, 'wechat', '迪士尼在逃公主', 1, 1, '微信', 0);
INSERT INTO `feehi_options` VALUES (23, 1, 'qq', '1838889850', 1, 1, 'QQ号码', 0);
INSERT INTO `feehi_options` VALUES (24, 1, 'email', 'admin@feehi.com', 1, 1, '邮箱', 0);
INSERT INTO `feehi_options` VALUES (25, 2, 'index', '[{\"sign\":\"5a251a3013586\",\"img\":\"\\/uploads\\/setting\\/banner\\/5a251a301280d_1.png\",\"target\":\"_blank\",\"link\":\"\\/view\\/11\",\"sort\":\"3\",\"status\":\"1\",\"desc\":\"\"},{\"sign\":\"5a251a4932a52\",\"img\":\"\\/uploads\\/setting\\/banner\\/5a251a4930fc2_2.jpg\",\"target\":\"_blank\",\"link\":\"\\/view\\/15\",\"sort\":\"2\",\"status\":\"1\",\"desc\":\"\"},{\"sign\":\"5a251a5690fe9\",\"img\":\"\\/uploads\\/setting\\/banner\\/5a251a568f966_3.jpg\",\"target\":\"_blank\",\"link\":\"\\/view\\/16\",\"sort\":\"1\",\"status\":\"1\",\"desc\":\"\"}]', 1, 1, '首页banner', 0);
INSERT INTO `feehi_options` VALUES (26, 3, 'sidebar_right_1', '{\"ad\":\"\\/uploads\\/setting\\/ad\\/5a292c0fda836_cms.jpg\",\"link\":\"http://www.feehi.com\",\"target\":\"_blank\",\"desc\":\"FeehiCMS\",\"created_at\":1512641320,\"updated_at\":1512647776}', 1, 1, '网站右侧广告位1', 0);
INSERT INTO `feehi_options` VALUES (27, 3, 'sidebar_right_2', '{\"ad\":\"\\/uploads\\/setting\\/ad\\/5a291f9236479_22.jpg\",\"link\":\"\",\"target\":\"_blank\",\"desc\":\"\\u6700\\u597d\\u7684\\u8fd0\\u52a8\\u624b\\u8868\",\"created_at\":1512644498,\"updated_at\":1512647586}', 1, 1, '网站右侧广告位2', 0);

-- ----------------------------
-- Table structure for feehi_team
-- ----------------------------
DROP TABLE IF EXISTS `feehi_team`;
CREATE TABLE `feehi_team`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'user id(auto increment)',
  `membername` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'member name',
  `gitname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'github name',
  `occupation` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'occupation',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT 'description',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'user email',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT 'avatar url',
  `status` smallint(0) NOT NULL DEFAULT 10 COMMENT 'user status, (normal:10)',
  `created_at` int(0) NOT NULL COMMENT 'created at',
  `updated_at` int(0) NOT NULL COMMENT 'updated at',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`membername`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feehi_team
-- ----------------------------
INSERT INTO `feehi_team` VALUES (15, '晚晚', 'Wanwan0407', 'WebDeveloper', 'ahahahhahhaa', '2989825343@qq.com', '/uploads/avatar/20230212171146_63e8ad52d6a36.jpg', 10, 1676193106, 1676193106);
INSERT INTO `feehi_team` VALUES (17, '马马', 'MMMayongtian', 'WebDeveloper', '南开大学\r\n学号：2012911\r\n专业：计算机科学与技术专业\r\n简述：哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈', '1146988607@qq.com', '/uploads/avatar/20230212182245_63e8bdf5195c9.jpg', 10, 1676197365, 1676208597);

-- ----------------------------
-- Table structure for feehi_user
-- ----------------------------
DROP TABLE IF EXISTS `feehi_user`;
CREATE TABLE `feehi_user`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'user id(auto increment)',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'username',
  `auth_key` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'auth key for generate logged in cookie',
  `password_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'crypt password',
  `password_reset_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT 'reset password temp token',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'user email',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT 'avatar url',
  `access_token` varchar(42) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'token',
  `status` smallint(0) NOT NULL DEFAULT 10 COMMENT 'user status, (normal:10)',
  `created_at` int(0) NOT NULL COMMENT 'created at',
  `updated_at` int(0) NOT NULL COMMENT 'updated at',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE,
  UNIQUE INDEX `password_reset_token`(`password_reset_token`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feehi_user
-- ----------------------------
INSERT INTO `feehi_user` VALUES (1, 'mmma', '8phKWid8OO7INzOjfkQZ-9XONLK2UX40', '$2y$13$Gq3K5QTGtJPQun3RbCMeRujzSiQ1DwbflC/pIU0RRGzvhyHHj4Z3m', NULL, '298985343@qq.com', '', '', 10, 1676103494, 1676209400);

SET FOREIGN_KEY_CHECKS = 1;
