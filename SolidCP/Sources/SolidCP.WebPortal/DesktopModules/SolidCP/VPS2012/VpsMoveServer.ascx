﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="VpsMoveServer.ascx.cs" Inherits="SolidCP.Portal.VPS2012.VpsMoveServer" %>
<%@ Register Src="../UserControls/SimpleMessageBox.ascx" TagName="SimpleMessageBox" TagPrefix="scp" %>
<%@ Register Src="UserControls/Menu.ascx" TagName="Menu" TagPrefix="scp" %>
<%@ Register Src="UserControls/Breadcrumb.ascx" TagName="Breadcrumb" TagPrefix="scp" %>
<%@ Register Src="../UserControls/PasswordControl.ascx" TagName="PasswordControl" TagPrefix="scp" %>
<%@ Register Src="../UserControls/CollapsiblePanel.ascx" TagName="CollapsiblePanel" TagPrefix="scp" %>
<%@ Register Src="../UserControls/CheckBoxOption.ascx" TagName="CheckBoxOption" TagPrefix="scp" %>
<%@ Register Src="../UserControls/EnableAsyncTasksSupport.ascx" TagName="EnableAsyncTasksSupport" TagPrefix="scp" %>

<scp:EnableAsyncTasksSupport id="asyncTasks" runat="server"/>

	    <div class="Content">
		    <div class="Center">
			    <div class="panel-body form-horizontal">
    			    	
                    <scp:SimpleMessageBox id="messageBox" runat="server" />
                    
                    <asp:ValidationSummary ID="validatorsSummary" runat="server" 
                        ValidationGroup="MoveWizard" ShowMessageBox="True" ShowSummary="False" />
                        
                    
                    <table cellpadding="3">
                        <tr>
                            <td class="FormLabel150">
                                <asp:Localize ID="locSourceService" runat="server" meta:resourcekey="locSourceService" Text="Source Service:"></asp:Localize>
                            </td>
                            <td>
                                <asp:Literal ID="SourceHyperVService" runat="server"></asp:Literal>
                            </td>
                        </tr>
                        <tr>
                            <td class="FormLabel150">
                                <asp:Localize ID="locDestinationService" runat="server" meta:resourcekey="locDestinationService" Text="Destination Service:"></asp:Localize>
                            </td>
                            <td>
                                <asp:DropDownList ID="HyperVServices" runat="server" CssClass="form-control"
                                    DataValueField="ServiceId" DataTextField="FullServiceName"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredHyperVService" runat="server"
                                    ControlToValidate="HyperVServices" ValidationGroup="MoveWizard" meta:resourcekey="RequiredHyperVService"
                                    Display="Dynamic" SetFocusOnError="true" Text="*">
                                </asp:RequiredFieldValidator>
                            </td>
                        </tr>
                    </table>
                    
                    <p>
                        <CPCC:StyleButton id="btnCancel" CssClass="btn btn-warning" runat="server" CausesValidation="False" OnClick="btnCancel_Click"> <i class="fa fa-times">&nbsp;</i>&nbsp;<asp:Localize runat="server" meta:resourcekey="btnCancel"/> </CPCC:StyleButton>&nbsp;
                        <CPCC:StyleButton id="btnMove" CssClass="btn btn-success" runat="server" OnClick="btnMove_Click" ValidationGroup="MoveWizard"> <i class="fa fa-check">&nbsp;</i>&nbsp;<asp:Localize runat="server" meta:resourcekey="btnMoveText"/> </CPCC:StyleButton>
                    </p>
                        
			    </div>
		    </div>
	    </div>
