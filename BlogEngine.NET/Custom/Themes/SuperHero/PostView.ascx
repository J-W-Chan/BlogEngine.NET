<%@ Control Language="C#" AutoEventWireup="true" EnableViewState="false" Inherits="BlogEngine.Core.Web.Controls.PostViewBase" %>
<article class="panel panel-success" id="post<%=Index %>">
    <header class="panel-heading">
        <a href="<%=Post.RelativeOrAbsoluteLink %>">
            <h3>
                <i class="fa fa-file-code-o hidden-xs"></i>
                &nbsp;<%=Server.HtmlEncode(Post.Title) %></h3>
        </a>
    </header>

    <div class="panel-body">
        <asp:PlaceHolder ID="BodyContent" runat="server" />
    </div>

    <%if (BlogEngine.Core.Security.IsAuthenticated)
      { %>
    <ul class="list-group">
        <% if (BlogEngine.Core.Security.IsAuthenticated)
           { %>
        <li class="list-group-item"><%=AdminLinks %></li>
        <li class="list-group-item">
            <i class="glyphicon glyphicon-user"></i>
            <a href="<%=BlogEngine.Core.Utils.AbsoluteWebRoot + "author/" + BlogEngine.Core.Utils.RemoveIllegalCharacters(Post.Author) + BlogEngine.Core.BlogConfig.FileExtension %>"><%=Post.AuthorProfile != null ? Post.AuthorProfile.DisplayName : Post.Author %></a>
        </li>
        <%} %>
    </ul>
    <%} %>

    <div class="panel-footer hidden-xs">
        <ul class="list-inline">
            <li>
                <span class=""><i class="glyphicon glyphicon-folder-close"></i><%=CategoryLinks(", ") %></span>
            </li>
            <li>
                <span class=""><span class="glyphicon glyphicon-comment"></span><a rel="nofollow" href="<%=Post.RelativeOrAbsoluteLink %>#comment">(<%=Post.ApprovedComments.Count %>)</a></span>
            </li>
            <% if (Post.Tags.Count > 0)
               { %>
            <li>
                <span class="glyphicon glyphicon-tags" title="<%=Resources.labels.tags %>"></span>&nbsp;<%=TagLinks(", ") %>
            </li>
            <%} %>

            <li class="pull-right">
                <span class="">
                    <i class="glyphicon glyphicon-calendar"></i>
                    <%=Post.DateCreated.ToString("yyyy-MM-dd HH:mm") %>
                </span>
            </li>
        </ul>
    </div>
</article>
