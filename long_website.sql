/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : long_website

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 22/02/2019 11:07:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user_admin
-- ----------------------------
DROP TABLE IF EXISTS `user_admin`;
CREATE TABLE `user_admin`  (
  `userid` int(255) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_admin
-- ----------------------------
INSERT INTO `user_admin` VALUES (0, 'admin', 'admin');
INSERT INTO `user_admin` VALUES (1, 'long', '213456');

-- ----------------------------
-- Table structure for user_article
-- ----------------------------
DROP TABLE IF EXISTS `user_article`;
CREATE TABLE `user_article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `date` bigint(11) NULL DEFAULT NULL,
  `isDelete` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_article
-- ----------------------------
INSERT INTO `user_article` VALUES (10, '在Nuxt中使用富文本插件vue-quill-editor（一）', '&lt;p&gt;本文采用的是&lt;span style=&quot;color: rgb(3, 47, 98);&quot;&gt;vue-quill-editor这个插件功能还不错，该有的都有。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;1、首先在plugin文件夹下创建一个插件。&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;blockquote&gt;&lt;span style=&quot;color: rgb(215, 58, 73);&quot;&gt;import&lt;/span&gt; &lt;span style=&quot;color: rgb(36, 41, 46);&quot;&gt;Vue&lt;/span&gt; &lt;span style=&quot;color: rgb(215, 58, 73);&quot;&gt;from&lt;/span&gt; &lt;span style=&quot;color: rgb(3, 47, 98);&quot;&gt;&#39;vue&#39;&lt;/span&gt;&lt;/blockquote&gt;&lt;blockquote&gt;&lt;span style=&quot;color: rgb(215, 58, 73);&quot;&gt;import&lt;/span&gt; &lt;span style=&quot;color: rgb(36, 41, 46);&quot;&gt;Quill&lt;/span&gt; &lt;span style=&quot;color: rgb(215, 58, 73);&quot;&gt;from&lt;/span&gt; &lt;span style=&quot;color: rgb(3, 47, 98);&quot;&gt;&#39;quill&#39;&lt;/span&gt;&lt;/blockquote&gt;&lt;blockquote&gt;&lt;span style=&quot;color: rgb(215, 58, 73);&quot;&gt;import&lt;/span&gt; &lt;span style=&quot;color: rgb(36, 41, 46);&quot;&gt;VueQuillEditor&lt;/span&gt; &lt;span style=&quot;color: rgb(215, 58, 73);&quot;&gt;from&lt;/span&gt; &lt;span style=&quot;color: rgb(3, 47, 98);&quot;&gt;&#39;vue-quill-editor&#39;&lt;/span&gt;&lt;/blockquote&gt;&lt;blockquote&gt;&lt;br&gt;&lt;/blockquote&gt;&lt;blockquote&gt;&lt;span style=&quot;color: rgb(215, 58, 73);&quot;&gt;import&lt;/span&gt; &lt;span style=&quot;color: rgb(3, 47, 98);&quot;&gt;&#39;quill/dist/quill.core.css&#39;&lt;/span&gt;&lt;/blockquote&gt;&lt;blockquote&gt;&lt;span style=&quot;color: rgb(215, 58, 73);&quot;&gt;import&lt;/span&gt; &lt;span style=&quot;color: rgb(3, 47, 98);&quot;&gt;&#39;quill/dist/quill.snow.css&#39;&lt;/span&gt;&lt;/blockquote&gt;&lt;blockquote&gt;&lt;br&gt;&lt;/blockquote&gt;&lt;blockquote&gt;&lt;span style=&quot;color: rgb(215, 58, 73);&quot;&gt;import&lt;/span&gt; &lt;span style=&quot;color: rgb(36, 41, 46);&quot;&gt;ImageResize&lt;/span&gt; &lt;span style=&quot;color: rgb(215, 58, 73);&quot;&gt;from&lt;/span&gt; &lt;span style=&quot;color: rgb(3, 47, 98);&quot;&gt;&#39;quill-image-resize-module&#39; // 这个是拓展插件&lt;/span&gt;&lt;/blockquote&gt;&lt;blockquote&gt;&lt;span style=&quot;color: rgb(36, 41, 46);&quot;&gt;Quill.&lt;/span&gt;&lt;span style=&quot;color: rgb(111, 66, 193);&quot;&gt;register&lt;/span&gt;&lt;span style=&quot;color: rgb(36, 41, 46);&quot;&gt;(&lt;/span&gt;&lt;span style=&quot;color: rgb(3, 47, 98);&quot;&gt;&#39;modules/imageResize&#39;&lt;/span&gt;&lt;span style=&quot;color: rgb(36, 41, 46);&quot;&gt;, ImageResize) // 引用后要注册一下 &lt;/span&gt;&lt;/blockquote&gt;&lt;blockquote&gt;&lt;br&gt;&lt;/blockquote&gt;&lt;blockquote&gt;&lt;span style=&quot;color: rgb(36, 41, 46);&quot;&gt;Vue.&lt;/span&gt;&lt;span style=&quot;color: rgb(111, 66, 193);&quot;&gt;use&lt;/span&gt;&lt;span style=&quot;color: rgb(36, 41, 46);&quot;&gt;(VueQuillEditor)&lt;/span&gt;&lt;/blockquote&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(36, 41, 46);&quot;&gt;2、在nuxt.config.js下引入此插件。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;blockquote&gt;&lt;span style=&quot;color: rgb(0, 92, 197);&quot;&gt;module&lt;/span&gt;&lt;span style=&quot;color: rgb(36, 41, 46);&quot;&gt;.exports&lt;/span&gt; &lt;span style=&quot;color: rgb(215, 58, 73);&quot;&gt;=&lt;/span&gt; &lt;span style=&quot;color: rgb(36, 41, 46);&quot;&gt;{&lt;/span&gt;&lt;/blockquote&gt;&lt;blockquote class=&quot;ql-indent-1&quot;&gt;&lt;span style=&quot;color: rgb(36, 41, 46);&quot;&gt;plugins&lt;/span&gt;&lt;span style=&quot;color: rgb(215, 58, 73);&quot;&gt;:&lt;/span&gt; &lt;span style=&quot;color: rgb(36, 41, 46);&quot;&gt;[&lt;/span&gt;&lt;/blockquote&gt;&lt;blockquote class=&quot;ql-indent-2&quot;&gt;&lt;span style=&quot;color: rgb(36, 41, 46);&quot;&gt;{ src&lt;/span&gt;&lt;span style=&quot;color: rgb(215, 58, 73);&quot;&gt;:&lt;/span&gt; &lt;span style=&quot;color: rgb(3, 47, 98);&quot;&gt;&#39;~plugins/vue-quill-editor&#39;&lt;/span&gt;&lt;span style=&quot;color: rgb(36, 41, 46);&quot;&gt;, ssr&lt;/span&gt;&lt;span style=&quot;color: rgb(215, 58, 73);&quot;&gt;:&lt;/span&gt; &lt;span style=&quot;color: rgb(0, 92, 197);&quot;&gt;false&lt;/span&gt; &lt;span style=&quot;color: rgb(36, 41, 46);&quot;&gt;} // ssr要设置为false,不然会报document undefined&lt;/span&gt;&lt;/blockquote&gt;&lt;blockquote class=&quot;ql-indent-1&quot;&gt;&lt;span style=&quot;color: rgb(36, 41, 46);&quot;&gt;]&lt;/span&gt;&lt;/blockquote&gt;&lt;blockquote&gt;&lt;span style=&quot;color: rgb(36, 41, 46);&quot;&gt;}&lt;/span&gt;&lt;/blockquote&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;3、依旧是nuxt.config.js，不过要在build下添加。&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;blockquote&gt;&lt;span style=&quot;color: rgb(0, 92, 197);&quot;&gt;module&lt;/span&gt;&lt;span style=&quot;color: rgb(36, 41, 46);&quot;&gt;.exports&lt;/span&gt; &lt;span style=&quot;color: rgb(215, 58, 73);&quot;&gt;=&lt;/span&gt; &lt;span style=&quot;color: rgb(36, 41, 46);&quot;&gt;{&lt;/span&gt;&lt;/blockquote&gt;&lt;blockquote class=&quot;ql-indent-1&quot;&gt;&lt;span style=&quot;color: rgb(36, 41, 46);&quot;&gt;build&lt;/span&gt;&lt;span style=&quot;color: rgb(215, 58, 73);&quot;&gt;:&lt;/span&gt; &lt;span style=&quot;color: rgb(36, 41, 46);&quot;&gt;{&lt;/span&gt;&lt;/blockquote&gt;&lt;blockquote class=&quot;ql-indent-2&quot;&gt;&lt;span style=&quot;color: rgb(36, 41, 46);&quot;&gt;plugins&lt;/span&gt;&lt;span style=&quot;color: rgb(215, 58, 73);&quot;&gt;:&lt;/span&gt; &lt;span style=&quot;color: rgb(36, 41, 46);&quot;&gt;[&lt;/span&gt;&lt;/blockquote&gt;&lt;blockquote class=&quot;ql-indent-3&quot;&gt;&lt;span style=&quot;color: rgb(215, 58, 73);&quot;&gt;new&lt;/span&gt; &lt;span style=&quot;color: rgb(111, 66, 193);&quot;&gt;webpack.ProvidePlugin&lt;/span&gt;&lt;span style=&quot;color: rgb(36, 41, 46);&quot;&gt;({&lt;/span&gt;&lt;/blockquote&gt;&lt;blockquote class=&quot;ql-indent-4&quot;&gt;&lt;span style=&quot;color: rgb(3, 47, 98);&quot;&gt;&#39;window.Quill&#39;&lt;/span&gt;&lt;span style=&quot;color: rgb(215, 58, 73);&quot;&gt;:&lt;/span&gt; &lt;span style=&quot;color: rgb(3, 47, 98);&quot;&gt;&#39;quill/dist/quill.js&#39;&lt;/span&gt;&lt;span style=&quot;color: rgb(36, 41, 46);&quot;&gt;,&lt;/span&gt;&lt;/blockquote&gt;&lt;blockquote class=&quot;ql-indent-4&quot;&gt;&lt;span style=&quot;color: rgb(3, 47, 98);&quot;&gt;&#39;Quill&#39;&lt;/span&gt;&lt;span style=&quot;color: rgb(215, 58, 73);&quot;&gt;:&lt;/span&gt; &lt;span style=&quot;color: rgb(3, 47, 98);&quot;&gt;&#39;quill/dist/quill.js&#39;&lt;/span&gt;&lt;/blockquote&gt;&lt;blockquote class=&quot;ql-indent-3&quot;&gt;&lt;span style=&quot;color: rgb(36, 41, 46);&quot;&gt;})&lt;/span&gt;&lt;/blockquote&gt;&lt;blockquote class=&quot;ql-indent-2&quot;&gt;&lt;span style=&quot;color: rgb(36, 41, 46);&quot;&gt;]&lt;/span&gt;&lt;/blockquote&gt;&lt;blockquote class=&quot;ql-indent-1&quot;&gt;&lt;span style=&quot;color: rgb(36, 41, 46);&quot;&gt;}&lt;/span&gt;&lt;/blockquote&gt;&lt;blockquote&gt;&lt;span style=&quot;color: rgb(36, 41, 46);&quot;&gt;}&lt;/span&gt;&lt;/blockquote&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;4、封装插件，当然也可以直接用&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;blockquote&gt;&666;lt;&lt;span style=&quot;color: rgb(34, 134, 58);&quot;&gt;template&lt;/span&gt;&666;gt;&lt;/blockquote&gt;&lt;blockquote class=&quot;ql-indent-1&quot;&gt;&666;lt;&lt;span style=&quot;color: rgb(34, 134, 58);&quot;&gt;div&lt;/span&gt;&666;gt;&lt;/blockquote&gt;&lt;blockquote class=&quot;ql-indent-2&quot;&gt;&666;lt;&lt;span style=&quot;color: rgb(34, 134, 58);&quot;&gt;no-ssr&lt;/span&gt;&666;gt;&666;lt;!-- no-ssr用法详见nuxt文档 ，此处这样写即可--&666;gt;&lt;/blockquote&gt;&lt;blockquote class=&quot;ql-indent-3&quot;&gt;&666;lt;&lt;span style=&quot;color: rgb(34, 134, 58);&quot;&gt;quill-editor&lt;/span&gt;&lt;/blockquote&gt;&lt;blockquote class=&quot;ql-indent-4&quot;&gt;&lt;span style=&quot;color: rgb(111, 66, 193);&quot;&gt;v-model&lt;/span&gt;=&lt;span style=&quot;color: rgb(3, 47, 98);&quot;&gt;&#39;editorContent&#39;&lt;/span&gt;&lt;/blockquote&gt;&lt;blockquote class=&quot;ql-indent-4&quot;&gt;&lt;span style=&quot;color: rgb(111, 66, 193);&quot;&gt;ref&lt;/span&gt;=&lt;span style=&quot;color: rgb(3, 47, 98);&quot;&gt;&#39;textEditor&#39;&lt;/span&gt;&lt;/blockquote&gt;&lt;blockquote class=&quot;ql-indent-4&quot;&gt;&lt;span style=&quot;color: rgb(111, 66, 193);&quot;&gt;:options&lt;/span&gt;=&lt;span style=&quot;color: rgb(3, 47, 98);&quot;&gt;&#39;editorOption&#39;&lt;/span&gt;&lt;/blockquote&gt;&lt;blockquote class=&quot;ql-indent-3&quot;&gt;&666;gt;&666;lt;/&lt;span style=&quot;color: rgb(34, 134, 58);&quot;&gt;quill-editor&lt;/span&gt;&666;gt;&lt;/blockquote&gt;&lt;blockquote class=&quot;ql-indent-2&quot;&gt;&666;lt;/&lt;span style=&quot;color: rgb(34, 134, 58);&quot;&gt;no-ssr&lt;/span&gt;&666;gt;&lt;/blockquote&gt;&lt;blockquote class=&quot;ql-indent-1&quot;&gt;&666;lt;/&lt;span style=&quot;color: rgb(34, 134, 58);&quot;&gt;div&lt;/span&gt;&666;gt;&lt;/blockquote&gt;&lt;blockquote&gt;&666;lt;/&lt;span style=&quot;color: rgb(34, 134, 58);&quot;&gt;template&lt;/span&gt;&666;gt;&lt;/blockquote&gt;&lt;blockquote&gt;&lt;br&gt;&lt;/blockquote&gt;&lt;blockquote&gt;&666;lt;&lt;span style=&quot;color: rgb(34, 134, 58);&quot;&gt;script&lt;/span&gt;&666;gt;&lt;/blockquote&gt;&lt;blockquote&gt;&lt;span style=&quot;color: rgb(215, 58, 73);&quot;&gt;export&lt;/span&gt; &lt;span style=&quot;color: rgb(0, 92, 197);&quot;&gt;default&lt;/span&gt; { &lt;/blockquote&gt;&lt;blockquote class=&quot;ql-indent-1&quot;&gt;&lt;span style=&quot;color: rgb(111, 66, 193);&quot;&gt;data&lt;/span&gt; () { &lt;/blockquote&gt;&lt;blockquote class=&quot;ql-indent-2&quot;&gt;&lt;span style=&quot;color: rgb(215, 58, 73);&quot;&gt;return&lt;/span&gt; { &lt;/blockquote&gt;&lt;blockquote class=&quot;ql-indent-3&quot;&gt;editorContent&lt;span style=&quot;color: rgb(215, 58, 73);&quot;&gt;:&lt;/span&gt; &lt;span style=&quot;color: rgb(3, 47, 98);&quot;&gt;&#39;&#39;&lt;/span&gt;,&lt;/blockquote&gt;&lt;blockquote class=&quot;ql-indent-3&quot;&gt;editorOption&lt;span style=&quot;color: rgb(215, 58, 73);&quot;&gt;:&lt;/span&gt; { &lt;/blockquote&gt;&lt;blockquote class=&quot;ql-indent-4&quot;&gt;placeholder&lt;span style=&quot;color: rgb(215, 58, 73);&quot;&gt;:&lt;/span&gt; &lt;span style=&quot;color: rgb(3, 47, 98);&quot;&gt;&#39;What’s on your mind?&#39;&lt;/span&gt;, &lt;/blockquote&gt;&lt;blockquote class=&quot;ql-indent-4&quot;&gt;theme&lt;span style=&quot;color: rgb(215, 58, 73);&quot;&gt;:&lt;/span&gt; &lt;span style=&quot;color: rgb(3, 47, 98);&quot;&gt;&#39;snow&#39;&lt;/span&gt;, &lt;/blockquote&gt;&lt;blockquote class=&quot;ql-indent-4&quot;&gt;modules&lt;span style=&quot;color: rgb(215, 58, 73);&quot;&gt;:&lt;/span&gt; { &lt;/blockquote&gt;&lt;blockquote class=&quot;ql-indent-5&quot;&gt;imageResize&lt;span style=&quot;color: rgb(215, 58, 73);&quot;&gt;:&lt;/span&gt; &lt;span style=&quot;color: rgb(0, 92, 197);&quot;&gt;true&lt;/span&gt; &lt;/blockquote&gt;&lt;blockquote class=&quot;ql-indent-4&quot;&gt;} &lt;/blockquote&gt;&lt;blockquote class=&quot;ql-indent-3&quot;&gt;}&lt;/blockquote&gt;&lt;blockquote class=&quot;ql-indent-2&quot;&gt;}&lt;/blockquote&gt;&lt;blockquote class=&quot;ql-indent-1&quot;&gt;}&lt;/blockquote&gt;&lt;blockquote&gt;}&lt;/blockquote&gt;&lt;blockquote&gt;&666;lt;/&lt;span style=&quot;color: rgb(34, 134, 58);&quot;&gt;script&lt;/span&gt;&666;gt;&lt;/blockquote&gt;', 1543394731438, 0);

SET FOREIGN_KEY_CHECKS = 1;
