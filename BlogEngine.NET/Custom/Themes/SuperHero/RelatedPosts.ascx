<%@ Control Language="C#" AutoEventWireup="true" EnableViewState="false" Inherits="BlogEngine.Core.Web.Controls.RelatedPostsBase" %>
<div id="relatedPosts" class="panel panel-success  hidden-xs">
    <div class="panel-heading">
        <h3>
            <i class="fa fa-chain">&nbsp;
            </i>
            <%=Resources.labels.relatedPosts %>
        </h3>
    </div>

    <div class="list-group">
        <%foreach (var item in RelatedPostList)
          {%>
        <a href="<%=item.Link %>" class="list-group-item">
            <h4 class="list-group-item-heading"><span class="text-success"><%=item.Title %></span></h4>
            <p class="list-group-item-text"><%=item.Description %></p>
        </a>
        <% } %>
    </div>

</div>


