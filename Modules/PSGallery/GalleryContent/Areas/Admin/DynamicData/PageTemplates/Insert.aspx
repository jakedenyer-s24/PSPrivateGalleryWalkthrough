﻿<%@ Page Language="C#" MasterPageFile="../Site.master" CodeBehind="Insert.aspx.cs" Inherits="NuGetGallery.Areas.Admin.DynamicData.Insert" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true">
        <DataControls>
            <asp:DataControlReference ControlID="DetailsView1" />
        </DataControls>
    </asp:DynamicDataManager>

    <h2 class="DDSubHeader">Add new entry to table <%= table.DisplayName %></h2>

    <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
        HeaderText="List of validation errors" CssClass="DDValidator" />
    <asp:DynamicValidator runat="server" ID="DetailsViewValidator" ControlToValidate="DetailsView1" Display="None" CssClass="DDValidator" />

    <asp:DetailsView runat="server" ID="DetailsView1" DataSourceID="DetailsDataSource" DefaultMode="Insert"
        OnItemCommand="DetailsView1_ItemCommand" OnItemInserted="DetailsView1_ItemInserted" RenderOuterTable="false" BorderWidth="0" AutoGenerateInsertButton="True" AutoGenerateDeleteButton="True">
        <FieldHeaderStyle BorderWidth="0" />
    </asp:DetailsView>

    <asp:EntityDataSource ID="DetailsDataSource" runat="server" EnableInsert="true" />
</asp:Content>
