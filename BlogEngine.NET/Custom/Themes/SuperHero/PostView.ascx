<%@ Control Language="C#" AutoEventWireup="true" EnableViewState="false" Inherits="BlogEngine.Core.Web.Controls.PostViewBase" %>
<article class="panel panel-default" id="post<%=Index %>">
    <header class="panel-heading">
        <a href="#">
        <h3><%--<span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>--%>
            <i class="fa fa-file-code-o hidden-xs"></i>
            &nbsp;<%=Server.HtmlEncode(Post.Title) %></h3></a>

        <%--<h2 class="post-title">
            <a href="<%=Post.RelativeOrAbsoluteLink %>"><%=Server.HtmlEncode(Post.Title) %></a>
        </h2>
        <div class="post-info clearfix">
            <span class="post-date"><i class="glyphicon glyphicon-calendar"></i><%=Post.DateCreated.ToString("d. MMMM yyyy") %></span>
            <span class="post-author"><i class="glyphicon glyphicon-user"></i><a href="<%=BlogEngine.Core.Utils.AbsoluteWebRoot + "author/" + BlogEngine.Core.Utils.RemoveIllegalCharacters(Post.Author) + BlogEngine.Core.BlogConfig.FileExtension %>"><%=Post.AuthorProfile != null ? Post.AuthorProfile.DisplayName : Post.Author %></a></span>
            <span class="post-category"><i class="glyphicon glyphicon-folder-close"></i><%=CategoryLinks(", ") %></span>
            <a rel="nofollow" class="pull-right post-comment-link" href="<%=Post.RelativeOrAbsoluteLink %>#comment"><i class="glyphicon glyphicon-comment"></i>(<%=Post.ApprovedComments.Count %>)</a>
        </div>--%>
    </header>

    <div class="panel-body">
        <asp:PlaceHolder ID="BodyContent" runat="server" />
    </div>
    <%if (BlogEngine.Core.Security.IsAuthenticated || Location == BlogEngine.Core.ServingLocation.SinglePost)
      { %>
    <ul class="list-group">
        <% if (Location == BlogEngine.Core.ServingLocation.SinglePost)
           {%>
        <li class="list-group-item">
            <%=Resources.labels.tags %> : <%=TagLinks(", ") %>
        </li>
        <%--<li class="list-group-item">
            <%=Rating %>
        </li>--%>
        <%} %>
        <% if (BlogEngine.Core.Security.IsAuthenticated)
           { %>
        <li class="list-group-item"><%=AdminLinks %></li>
        <%} %>
    </ul>
    <%} %>
    <div class="panel-footer hidden-xs">
        <ul class="list-inline">

            <%--<li>
                <span class="text-info"><i class="glyphicon glyphicon-user"></i><a href="<%=BlogEngine.Core.Utils.AbsoluteWebRoot + "author/" + BlogEngine.Core.Utils.RemoveIllegalCharacters(Post.Author) + BlogEngine.Core.BlogConfig.FileExtension %>"><%=Post.AuthorProfile != null ? Post.AuthorProfile.DisplayName : Post.Author %></a></span>
            </li>--%>
            <li>
                <span class=""><i class="glyphicon glyphicon-folder-close"></i><%=CategoryLinks(", ") %></span>
            </li>
            <li>
                <span class=""><span class="glyphicon glyphicon-comment"></span><a rel="nofollow" href="<%=Post.RelativeOrAbsoluteLink %>#comment">(<%=Post.ApprovedComments.Count %>)</a></span>
            </li>
            <li class="pull-right"><span class=""><i class="glyphicon glyphicon-calendar"></i><%=Post.DateCreated.ToString("yyyy-MM-dd HH:mm") %></span></li>
        </ul>
    </div>

    <%--<% if (Location == BlogEngine.Core.ServingLocation.SinglePost)
       {%>
    <footer class="post-footer">
        <div class="post-tags">
            <%=Resources.labels.tags %> : <%=TagLinks(", ") %>
        </div>
        <div class="post-rating">
            <%=Rating %>
        </div>

    </footer>

    <%} %>--%>
</article>
