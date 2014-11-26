<%@ Control Language="C#" AutoEventWireup="true" EnableViewState="false" Inherits="BlogEngine.Core.Web.Controls.PostNavigationBase" %>
<div id="postnavigation" class="panel panel-default hidden-xs">
    <div class="panel-body">
        <div class="col-sm-6 text-left prev-post">
            <% if(!string.IsNullOrEmpty(NextPostUrl)){ %>
            <a href="<%=NextPostUrl %>" class="nav-next"> <i class="fa fa-arrow-left"></i> <%=NextPostTitle %> </a>
            <% } %> 
        </div>   
                  
        <div class="col-sm-6 text-right next-post">
            <% if(!string.IsNullOrEmpty(PreviousPostUrl)){ %>
            <a href="<%=PreviousPostUrl %>" class="nav-prev"><%=PreviousPostTitle %> <i class="fa fa-arrow-right"></i></a>
            <% } %> 
        </div>
    </div>
</div>
