using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShowPage : System.Web.UI.Page
{
    protected string ShowTitle(string title, string id, string flag)
    {
        string returnString = "";
        // flag 필드 값이 N인 경우, 즉 삭제되지 않은 게시물
        if (flag == "N")
        {
            returnString += "<a href='detail.aspx?sn=" + id;
            returnString += "'class='card-body'>" + title + "</a>";
        }
        // flag 필드 값이 Y인 경우, 즉 삭제된 게시물
        else
        {
            returnString += "삭제된 게시물입니다.";
        }
        return returnString;
    }
}
