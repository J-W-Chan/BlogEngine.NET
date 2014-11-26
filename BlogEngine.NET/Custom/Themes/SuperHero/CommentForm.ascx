<%@ Control Language="C#" AutoEventWireup="true" EnableViewState="false" Inherits="BlogEngine.Core.Web.Controls.CommentFormBase" %>
<%@ Import Namespace="BlogEngine.Core" %>


<div class="panel panel-success">
    <div class="panel-heading">
        <h3>
            <span class="glyphicon glyphicon-plus"></span>
            &nbsp;
            <%=Resources.labels.addComment %>
        </h3>
    </div>
    <div class="panel-body">
        <div class="form-horizontal">
            <div class="form-group  has-success has-feedback">
                <div class="col-md-6 col-sm-6">
                        <input type="text" class="form-control"  name="txtName" id="txtName" placeholder="<%=Resources.labels.name %>" aria-describedby="inputUser3Status"/>
                        <span class="glyphicon glyphicon-user form-control-feedback" aria-hidden="true"></span>
                        <span id="inputUser3Status" class="sr-only"><%=Resources.labels.name %></span>

                </div>
                <div class="col-md-6 col-sm-6">
                        <input type="text" id="txtEmail" class="form-control" placeholder="<%=Resources.labels.email %>" aria-describedby="inputEmail3Status"/>
                        <span class="glyphicon glyphicon-envelope form-control-feedback" aria-hidden="true"></span>
                        <span id="inputEmail3Status" class="sr-only"><%=Resources.labels.email %></span>
                        <!-- <span id="gravatarmsg"></span> -->
                </div>
            </div>
            <div class="form-group" id="commentCompose">
                <div class="col-md-12 col-sm-12">
                    <textarea class="form-control" id="txtContent" name="txtContent" rows="3" placeholder="<%=Resources.labels.comment%>"></textarea>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-7">
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" id="cbNotify"/>
                            <%=Resources.labels.notifyOnNewComments %>
                        </label>
                    </div>
                </div>
                <div class="col-md-5 text-right">
                    <button type="submit" id="btnSaveAjax"  class="btn btn-lg btn-primary " title="<%=Resources.labels.saveComment %>"
                        onclick="return BlogEngine.validateAndSubmitCommentForm()">
                        <span class="fa fa-save"></span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>
