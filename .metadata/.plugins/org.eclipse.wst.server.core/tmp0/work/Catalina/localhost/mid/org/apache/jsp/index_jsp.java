/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.49
 * Generated at: 2019-10-29 12:53:09 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1572346205403L));
    _jspx_dependants.put("jar:file:/C:/Users/kimna/workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/mid/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<title>무제 문서</title>\r\n");
      out.write("<link href=\"layout.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("<div id=\"wrap\">\r\n");
      out.write("  <div id=\"page_header\">\r\n");
      out.write("    <div class=\"header1\"><img src=\"images/image_01.png\" width=\"1030\" height=\"26\" /></div>\r\n");
      out.write("    <div class=\"header2\"><img src=\"images/image_02.png\" width=\"1030\" height=\"112\" /></div>\r\n");
      out.write("  </div>\r\n");
      out.write("  <div id=\"pagenav\"><img src=\"images/image_03.png\" width=\"1030\" height=\"51\" /></div>\r\n");
      out.write("  <div id=\"page_center\">\r\n");
      out.write("    <div class=\"center_banner\"><img src=\"images/image_04.png\" width=\"233\" height=\"364\" /></div>\r\n");
      out.write("    <div class=\"table_layout\">\r\n");
      out.write("    <form action=\"result.jsp\" method=\"post\">\r\n");
      out.write("    <table width=\"100%\" height=\"290px\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td width=\"48%\" class = \"menu\">도서명</td>\r\n");
      out.write("    <td width=\"52%\" class = \"content\"><input name=\"bookName\" type=\"text\" value = \"봄날은 간다\" /></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td class = \"menu\">출판사</td>\r\n");
      out.write("    <td class = \"content\"><select name=\"bookCom\">\r\n");
      out.write("      <option value=\"김영사\" selected=\"selected\">김영사</option>\r\n");
      out.write("      <option value=\"이상한출판사\">이상한출판사</option>\r\n");
      out.write("      <option value=\"좋은출판사\">좋은출판사</option>\r\n");
      out.write("      <option value=\"나쁜책\">나쁜책</option>\r\n");
      out.write("      <option value=\"악당책\">악당책</option>\r\n");
      out.write("    </select></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td class = \"menu\">가격</td>\r\n");
      out.write("    <td class = \"content\"><p>\r\n");
      out.write("      <label>\r\n");
      out.write("        <input type=\"radio\" name=\"bookPrice\" value=\"15000\" checked=\"checked\" id=\"bookPrice_0\" />\r\n");
      out.write("        15000</label>\r\n");
      out.write("      <label>\r\n");
      out.write("        <input type=\"radio\" name=\"bookPrice\" value=\"17000\" id=\"bookPrice_1\" />\r\n");
      out.write("        17000</label>\r\n");
      out.write("      <label>\r\n");
      out.write("        <input type=\"radio\" name=\"bookPrice\" value=\"20000\" id=\"bookPrice_2\" />\r\n");
      out.write("        20000</label>\r\n");
      out.write("      <label>\r\n");
      out.write("        <input type=\"radio\" name=\"bookPrice\" value=\"25000\" id=\"bookPrice_3\" />\r\n");
      out.write("        25000</label>\r\n");
      out.write("    </p></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td class = \"menu\">분야</td>\r\n");
      out.write("    <td class = \"content\"><p>\r\n");
      out.write("      <label>\r\n");
      out.write("        <input type=\"checkbox\" name=\"bookJanre\" value=\"음악\" checked=\"checked\" id=\"bookJanre_0\" />\r\n");
      out.write("        음악</label>\r\n");
      out.write("      <label>\r\n");
      out.write("        <input type=\"checkbox\" name=\"bookJanre\" value=\"미술\" checked=\"checked\" id=\"bookJanre_1\" />\r\n");
      out.write("        미술</label>\r\n");
      out.write("      <label>\r\n");
      out.write("        <input type=\"checkbox\" name=\"bookJanre\" value=\"인문학\" id=\"bookJanre_2\" />\r\n");
      out.write("        인문학</label>\r\n");
      out.write("      <label>\r\n");
      out.write("        <input type=\"checkbox\" name=\"bookJanre\" value=\"과학\" id=\"bookJanre_3\" />\r\n");
      out.write("        과학</label>\r\n");
      out.write("      <label>\r\n");
      out.write("        <input type=\"checkbox\" name=\"bookJanre\" value=\"역사\" id=\"bookJanre_4\" />\r\n");
      out.write("        역사</label>\r\n");
      out.write("    </p></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td class = \"menu\">구매일자</td>\r\n");
      out.write("    <td class = \"bookDay\">\r\n");
      out.write("    <select name=\"bookYear\">\r\n");
      out.write("      <option value=\"2016\">2016</option>\r\n");
      out.write("      <option value=\"2017\">2017</option>\r\n");
      out.write("      <option value=\"2018\">2018</option>\r\n");
      out.write("      <option value=\"2019\">2019</option>\r\n");
      out.write("    </select>년\r\n");
      out.write("    <select name=\"bookMonth\">\r\n");
      out.write("      <option value=\"1\">1</option>\r\n");
      out.write("      <option value=\"2\">2</option>\r\n");
      out.write("      <option value=\"3\">3</option>\r\n");
      out.write("      <option value=\"4\">4</option>\r\n");
      out.write("      <option value=\"5\">5</option>\r\n");
      out.write("      <option value=\"6\">6</option>\r\n");
      out.write("      <option value=\"7\">7</option>\r\n");
      out.write("      <option value=\"8\">8</option>\r\n");
      out.write("      <option value=\"9\">9</option>\r\n");
      out.write("      <option value=\"10\">10</option>\r\n");
      out.write("      <option value=\"11\">11</option>\r\n");
      out.write("      <option value=\"12\">12</option>\r\n");
      out.write("    </select>월\r\n");
      out.write("    <select name=\"bookDate\">\r\n");
      out.write("      <option value=\"1\">1</option>\r\n");
      out.write("      <option value=\"2\">2</option>\r\n");
      out.write("      <option value=\"3\">3</option>\r\n");
      out.write("      <option value=\"4\">4</option>\r\n");
      out.write("      <option value=\"5\">5</option>\r\n");
      out.write("      <option value=\"6\">6</option>\r\n");
      out.write("      <option value=\"7\">7</option>\r\n");
      out.write("      <option value=\"8\">8</option>\r\n");
      out.write("      <option value=\"9\">9</option>\r\n");
      out.write("      <option value=\"10\">10</option>\r\n");
      out.write("      <option value=\"11\">11</option>\r\n");
      out.write("      <option value=\"12\">12</option>\r\n");
      out.write("      <option value=\"13\">13</option>\r\n");
      out.write("      <option value=\"14\">14</option>\r\n");
      out.write("      <option value=\"15\">15</option>\r\n");
      out.write("      <option value=\"16\">16</option>\r\n");
      out.write("      <option value=\"17\">17</option>\r\n");
      out.write("      <option value=\"18\">18</option>\r\n");
      out.write("      <option value=\"19\">19</option>\r\n");
      out.write("      <option value=\"20\">20</option>\r\n");
      out.write("      <option value=\"21\">21</option>\r\n");
      out.write("      <option value=\"22\">22</option>\r\n");
      out.write("      <option value=\"23\">23</option>\r\n");
      out.write("      <option value=\"24\">24</option>\r\n");
      out.write("      <option value=\"25\">25</option>\r\n");
      out.write("      <option value=\"26\">26</option>\r\n");
      out.write("      <option value=\"27\">27</option>\r\n");
      out.write("      <option value=\"28\">28</option>\r\n");
      out.write("      <option value=\"29\">29</option>\r\n");
      out.write("      <option value=\"30\">30</option>\r\n");
      out.write("      <option value=\"31\">31</option>\r\n");
      out.write("    </select>일\r\n");
      out.write("    \r\n");
      out.write("    </td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td colspan=\"2\" class = \"order\"><input name=\"order\" type=\"submit\" value = \"주문\"/></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    </form>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("  <div id=\"page_footer\">\r\n");
      out.write("    <div class=\"banner1\"><img src=\"images/image_06.png\" width=\"313\" height=\"131\" /></div>\r\n");
      out.write("    <div class=\"banner1\"><img src=\"images/image_07.png\" width=\"313\" height=\"131\" /></div>\r\n");
      out.write("    <div class=\"banner1\"><img src=\"images/image_08.png\" width=\"313\" height=\"131\" /></div>\r\n");
      out.write("    <div class=\"banner2\"><img src=\"images/image_10.png\" width=\"313\" height=\"60\" /></div>\r\n");
      out.write("    <div class=\"banner2\"><img src=\"images/image_11.png\" width=\"313\" height=\"60\" /></div>\r\n");
      out.write("    <div class=\"banner2\"><img src=\"images/image_12.png\" width=\"313\" height=\"60\" /></div>\r\n");
      out.write("  </div>\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
