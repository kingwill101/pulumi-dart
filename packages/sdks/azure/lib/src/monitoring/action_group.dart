import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_group_args.dart';
import 'action_group_state.dart';

/// Manages an Action Group within Azure Monitor.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "monitoring-resources",
///     location: "West Europe",
/// });
/// const current = azure.core.getClientConfig({});
/// const exampleAnalyticsWorkspace = new azure.operationalinsights.AnalyticsWorkspace("example", {
///     name: "workspace-01",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleActionGroup = new azure.monitoring.ActionGroup("example", {
///     name: "CriticalAlertsAction",
///     resourceGroupName: example.name,
///     shortName: "p0action",
///     armRoleReceivers: [{
///         name: "armroleaction",
///         roleId: "de139f84-1756-47ae-9be6-808fbbe84772",
///         useCommonAlertSchema: true,
///     }],
///     automationRunbookReceivers: [{
///         name: "action_name_1",
///         automationAccountId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-runbooks/providers/Microsoft.Automation/automationAccounts/aaa001",
///         runbookName: "my runbook",
///         webhookResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-runbooks/providers/Microsoft.Automation/automationAccounts/aaa001/webHooks/webhook_alert",
///         isGlobalRunbook: true,
///         serviceUri: "https://s13events.azure-automation.net/webhooks?token=randomtoken",
///         useCommonAlertSchema: true,
///     }],
///     azureAppPushReceivers: [{
///         name: "pushtoadmin",
///         emailAddress: "admin@contoso.com",
///     }],
///     azureFunctionReceivers: [{
///         name: "funcaction",
///         functionAppResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-funcapp/providers/Microsoft.Web/sites/funcapp",
///         functionName: "myfunc",
///         httpTriggerUrl: "https://example.com/trigger",
///         useCommonAlertSchema: true,
///     }],
///     emailReceivers: [
///         {
///             name: "sendtoadmin",
///             emailAddress: "admin@contoso.com",
///         },
///         {
///             name: "sendtodevops",
///             emailAddress: "devops@contoso.com",
///             useCommonAlertSchema: true,
///         },
///     ],
///     eventHubReceivers: [{
///         name: "sendtoeventhub",
///         eventHubNamespace: "eventhubnamespace",
///         eventHubName: "eventhub1",
///         subscriptionId: "00000000-0000-0000-0000-000000000000",
///         useCommonAlertSchema: false,
///     }],
///     itsmReceivers: [{
///         name: "createorupdateticket",
///         workspaceId: pulumi.all([current, exampleAnalyticsWorkspace.workspaceId]).apply(([current, workspaceId]) => `${current.subscriptionId}|${workspaceId}`),
///         connectionId: "53de6956-42b4-41ba-be3c-b154cdf17b13",
///         ticketConfiguration: "{\"PayloadRevision\":0,\"WorkItemType\":\"Incident\",\"UseTemplate\":false,\"WorkItemData\":\"{}\",\"CreateOneWIPerCI\":false}",
///         region: "southcentralus",
///     }],
///     logicAppReceivers: [{
///         name: "logicappaction",
///         resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-logicapp/providers/Microsoft.Logic/workflows/logicapp",
///         callbackUrl: "https://logicapptriggerurl/...",
///         useCommonAlertSchema: true,
///     }],
///     smsReceivers: [{
///         name: "oncallmsg",
///         countryCode: "1",
///         phoneNumber: "1231231234",
///     }],
///     voiceReceivers: [{
///         name: "remotesupport",
///         countryCode: "86",
///         phoneNumber: "13888888888",
///     }],
///     webhookReceivers: [{
///         name: "callmyapiaswell",
///         serviceUri: "http://example.com/alert",
///         useCommonAlertSchema: true,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="monitoring-resources",
///     location="West Europe")
/// current = azure.core.get_client_config()
/// example_analytics_workspace = azure.operationalinsights.AnalyticsWorkspace("example",
///     name="workspace-01",
///     location=example.location,
///     resource_group_name=example.name)
/// example_action_group = azure.monitoring.ActionGroup("example",
///     name="CriticalAlertsAction",
///     resource_group_name=example.name,
///     short_name="p0action",
///     arm_role_receivers=[{
///         "name": "armroleaction",
///         "role_id": "de139f84-1756-47ae-9be6-808fbbe84772",
///         "use_common_alert_schema": True,
///     }],
///     automation_runbook_receivers=[{
///         "name": "action_name_1",
///         "automation_account_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-runbooks/providers/Microsoft.Automation/automationAccounts/aaa001",
///         "runbook_name": "my runbook",
///         "webhook_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-runbooks/providers/Microsoft.Automation/automationAccounts/aaa001/webHooks/webhook_alert",
///         "is_global_runbook": True,
///         "service_uri": "https://s13events.azure-automation.net/webhooks?token=randomtoken",
///         "use_common_alert_schema": True,
///     }],
///     azure_app_push_receivers=[{
///         "name": "pushtoadmin",
///         "email_address": "admin@contoso.com",
///     }],
///     azure_function_receivers=[{
///         "name": "funcaction",
///         "function_app_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-funcapp/providers/Microsoft.Web/sites/funcapp",
///         "function_name": "myfunc",
///         "http_trigger_url": "https://example.com/trigger",
///         "use_common_alert_schema": True,
///     }],
///     email_receivers=[
///         {
///             "name": "sendtoadmin",
///             "email_address": "admin@contoso.com",
///         },
///         {
///             "name": "sendtodevops",
///             "email_address": "devops@contoso.com",
///             "use_common_alert_schema": True,
///         },
///     ],
///     event_hub_receivers=[{
///         "name": "sendtoeventhub",
///         "event_hub_namespace": "eventhubnamespace",
///         "event_hub_name": "eventhub1",
///         "subscription_id": "00000000-0000-0000-0000-000000000000",
///         "use_common_alert_schema": False,
///     }],
///     itsm_receivers=[{
///         "name": "createorupdateticket",
///         "workspace_id": example_analytics_workspace.workspace_id.apply(lambda workspace_id: f"{current.subscription_id}|{workspace_id}"),
///         "connection_id": "53de6956-42b4-41ba-be3c-b154cdf17b13",
///         "ticket_configuration": "{\"PayloadRevision\":0,\"WorkItemType\":\"Incident\",\"UseTemplate\":false,\"WorkItemData\":\"{}\",\"CreateOneWIPerCI\":false}",
///         "region": "southcentralus",
///     }],
///     logic_app_receivers=[{
///         "name": "logicappaction",
///         "resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-logicapp/providers/Microsoft.Logic/workflows/logicapp",
///         "callback_url": "https://logicapptriggerurl/...",
///         "use_common_alert_schema": True,
///     }],
///     sms_receivers=[{
///         "name": "oncallmsg",
///         "country_code": "1",
///         "phone_number": "1231231234",
///     }],
///     voice_receivers=[{
///         "name": "remotesupport",
///         "country_code": "86",
///         "phone_number": "13888888888",
///     }],
///     webhook_receivers=[{
///         "name": "callmyapiaswell",
///         "service_uri": "http://example.com/alert",
///         "use_common_alert_schema": True,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "monitoring-resources",
///         Location = "West Europe",
///     });
///
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var exampleAnalyticsWorkspace = new Azure.OperationalInsights.AnalyticsWorkspace("example", new()
///     {
///         Name = "workspace-01",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleActionGroup = new Azure.Monitoring.ActionGroup("example", new()
///     {
///         Name = "CriticalAlertsAction",
///         ResourceGroupName = example.Name,
///         ShortName = "p0action",
///         ArmRoleReceivers = new[]
///         {
///             new Azure.Monitoring.Inputs.ActionGroupArmRoleReceiverArgs
///             {
///                 Name = "armroleaction",
///                 RoleId = "de139f84-1756-47ae-9be6-808fbbe84772",
///                 UseCommonAlertSchema = true,
///             },
///         },
///         AutomationRunbookReceivers = new[]
///         {
///             new Azure.Monitoring.Inputs.ActionGroupAutomationRunbookReceiverArgs
///             {
///                 Name = "action_name_1",
///                 AutomationAccountId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-runbooks/providers/Microsoft.Automation/automationAccounts/aaa001",
///                 RunbookName = "my runbook",
///                 WebhookResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-runbooks/providers/Microsoft.Automation/automationAccounts/aaa001/webHooks/webhook_alert",
///                 IsGlobalRunbook = true,
///                 ServiceUri = "https://s13events.azure-automation.net/webhooks?token=randomtoken",
///                 UseCommonAlertSchema = true,
///             },
///         },
///         AzureAppPushReceivers = new[]
///         {
///             new Azure.Monitoring.Inputs.ActionGroupAzureAppPushReceiverArgs
///             {
///                 Name = "pushtoadmin",
///                 EmailAddress = "admin@contoso.com",
///             },
///         },
///         AzureFunctionReceivers = new[]
///         {
///             new Azure.Monitoring.Inputs.ActionGroupAzureFunctionReceiverArgs
///             {
///                 Name = "funcaction",
///                 FunctionAppResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-funcapp/providers/Microsoft.Web/sites/funcapp",
///                 FunctionName = "myfunc",
///                 HttpTriggerUrl = "https://example.com/trigger",
///                 UseCommonAlertSchema = true,
///             },
///         },
///         EmailReceivers = new[]
///         {
///             new Azure.Monitoring.Inputs.ActionGroupEmailReceiverArgs
///             {
///                 Name = "sendtoadmin",
///                 EmailAddress = "admin@contoso.com",
///             },
///             new Azure.Monitoring.Inputs.ActionGroupEmailReceiverArgs
///             {
///                 Name = "sendtodevops",
///                 EmailAddress = "devops@contoso.com",
///                 UseCommonAlertSchema = true,
///             },
///         },
///         EventHubReceivers = new[]
///         {
///             new Azure.Monitoring.Inputs.ActionGroupEventHubReceiverArgs
///             {
///                 Name = "sendtoeventhub",
///                 EventHubNamespace = "eventhubnamespace",
///                 EventHubName = "eventhub1",
///                 SubscriptionId = "00000000-0000-0000-0000-000000000000",
///                 UseCommonAlertSchema = false,
///             },
///         },
///         ItsmReceivers = new[]
///         {
///             new Azure.Monitoring.Inputs.ActionGroupItsmReceiverArgs
///             {
///                 Name = "createorupdateticket",
///                 WorkspaceId = Output.Tuple(current, exampleAnalyticsWorkspace.WorkspaceId).Apply(values =>
///                 {
///                     var current = values.Item1;
///                     var workspaceId = values.Item2;
///                     return $"{current.Apply(getClientConfigResult => getClientConfigResult.SubscriptionId)}|{workspaceId}";
///                 }),
///                 ConnectionId = "53de6956-42b4-41ba-be3c-b154cdf17b13",
///                 TicketConfiguration = "{\"PayloadRevision\":0,\"WorkItemType\":\"Incident\",\"UseTemplate\":false,\"WorkItemData\":\"{}\",\"CreateOneWIPerCI\":false}",
///                 Region = "southcentralus",
///             },
///         },
///         LogicAppReceivers = new[]
///         {
///             new Azure.Monitoring.Inputs.ActionGroupLogicAppReceiverArgs
///             {
///                 Name = "logicappaction",
///                 ResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-logicapp/providers/Microsoft.Logic/workflows/logicapp",
///                 CallbackUrl = "https://logicapptriggerurl/...",
///                 UseCommonAlertSchema = true,
///             },
///         },
///         SmsReceivers = new[]
///         {
///             new Azure.Monitoring.Inputs.ActionGroupSmsReceiverArgs
///             {
///                 Name = "oncallmsg",
///                 CountryCode = "1",
///                 PhoneNumber = "1231231234",
///             },
///         },
///         VoiceReceivers = new[]
///         {
///             new Azure.Monitoring.Inputs.ActionGroupVoiceReceiverArgs
///             {
///                 Name = "remotesupport",
///                 CountryCode = "86",
///                 PhoneNumber = "13888888888",
///             },
///         },
///         WebhookReceivers = new[]
///         {
///             new Azure.Monitoring.Inputs.ActionGroupWebhookReceiverArgs
///             {
///                 Name = "callmyapiaswell",
///                 ServiceUri = "http://example.com/alert",
///                 UseCommonAlertSchema = true,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/monitoring"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/operationalinsights"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("monitoring-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAnalyticsWorkspace, err := operationalinsights.NewAnalyticsWorkspace(ctx, "example", &operationalinsights.AnalyticsWorkspaceArgs{
/// 			Name:              pulumi.String("workspace-01"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = monitoring.NewActionGroup(ctx, "example", &monitoring.ActionGroupArgs{
/// 			Name:              pulumi.String("CriticalAlertsAction"),
/// 			ResourceGroupName: example.Name,
/// 			ShortName:         pulumi.String("p0action"),
/// 			ArmRoleReceivers: monitoring.ActionGroupArmRoleReceiverArray{
/// 				&monitoring.ActionGroupArmRoleReceiverArgs{
/// 					Name:                 pulumi.String("armroleaction"),
/// 					RoleId:               pulumi.String("de139f84-1756-47ae-9be6-808fbbe84772"),
/// 					UseCommonAlertSchema: pulumi.Bool(true),
/// 				},
/// 			},
/// 			AutomationRunbookReceivers: monitoring.ActionGroupAutomationRunbookReceiverArray{
/// 				&monitoring.ActionGroupAutomationRunbookReceiverArgs{
/// 					Name:                 pulumi.String("action_name_1"),
/// 					AutomationAccountId:  pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-runbooks/providers/Microsoft.Automation/automationAccounts/aaa001"),
/// 					RunbookName:          pulumi.String("my runbook"),
/// 					WebhookResourceId:    pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-runbooks/providers/Microsoft.Automation/automationAccounts/aaa001/webHooks/webhook_alert"),
/// 					IsGlobalRunbook:      pulumi.Bool(true),
/// 					ServiceUri:           pulumi.String("https://s13events.azure-automation.net/webhooks?token=randomtoken"),
/// 					UseCommonAlertSchema: pulumi.Bool(true),
/// 				},
/// 			},
/// 			AzureAppPushReceivers: monitoring.ActionGroupAzureAppPushReceiverArray{
/// 				&monitoring.ActionGroupAzureAppPushReceiverArgs{
/// 					Name:         pulumi.String("pushtoadmin"),
/// 					EmailAddress: pulumi.String("admin@contoso.com"),
/// 				},
/// 			},
/// 			AzureFunctionReceivers: monitoring.ActionGroupAzureFunctionReceiverArray{
/// 				&monitoring.ActionGroupAzureFunctionReceiverArgs{
/// 					Name:                  pulumi.String("funcaction"),
/// 					FunctionAppResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-funcapp/providers/Microsoft.Web/sites/funcapp"),
/// 					FunctionName:          pulumi.String("myfunc"),
/// 					HttpTriggerUrl:        pulumi.String("https://example.com/trigger"),
/// 					UseCommonAlertSchema:  pulumi.Bool(true),
/// 				},
/// 			},
/// 			EmailReceivers: monitoring.ActionGroupEmailReceiverArray{
/// 				&monitoring.ActionGroupEmailReceiverArgs{
/// 					Name:         pulumi.String("sendtoadmin"),
/// 					EmailAddress: pulumi.String("admin@contoso.com"),
/// 				},
/// 				&monitoring.ActionGroupEmailReceiverArgs{
/// 					Name:                 pulumi.String("sendtodevops"),
/// 					EmailAddress:         pulumi.String("devops@contoso.com"),
/// 					UseCommonAlertSchema: pulumi.Bool(true),
/// 				},
/// 			},
/// 			EventHubReceivers: monitoring.ActionGroupEventHubReceiverArray{
/// 				&monitoring.ActionGroupEventHubReceiverArgs{
/// 					Name:                 pulumi.String("sendtoeventhub"),
/// 					EventHubNamespace:    pulumi.String("eventhubnamespace"),
/// 					EventHubName:         pulumi.String("eventhub1"),
/// 					SubscriptionId:       pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 					UseCommonAlertSchema: pulumi.Bool(false),
/// 				},
/// 			},
/// 			ItsmReceivers: monitoring.ActionGroupItsmReceiverArray{
/// 				&monitoring.ActionGroupItsmReceiverArgs{
/// 					Name: pulumi.String("createorupdateticket"),
/// 					WorkspaceId: exampleAnalyticsWorkspace.WorkspaceId.ApplyT(func(workspaceId string) (string, error) {
/// 						return fmt.Sprintf("%v|%v", current.SubscriptionId, workspaceId), nil
/// 					}).(pulumi.StringOutput),
/// 					ConnectionId:        pulumi.String("53de6956-42b4-41ba-be3c-b154cdf17b13"),
/// 					TicketConfiguration: pulumi.String("{\"PayloadRevision\":0,\"WorkItemType\":\"Incident\",\"UseTemplate\":false,\"WorkItemData\":\"{}\",\"CreateOneWIPerCI\":false}"),
/// 					Region:              pulumi.String("southcentralus"),
/// 				},
/// 			},
/// 			LogicAppReceivers: monitoring.ActionGroupLogicAppReceiverArray{
/// 				&monitoring.ActionGroupLogicAppReceiverArgs{
/// 					Name:                 pulumi.String("logicappaction"),
/// 					ResourceId:           pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-logicapp/providers/Microsoft.Logic/workflows/logicapp"),
/// 					CallbackUrl:          pulumi.String("https://logicapptriggerurl/..."),
/// 					UseCommonAlertSchema: pulumi.Bool(true),
/// 				},
/// 			},
/// 			SmsReceivers: monitoring.ActionGroupSmsReceiverArray{
/// 				&monitoring.ActionGroupSmsReceiverArgs{
/// 					Name:        pulumi.String("oncallmsg"),
/// 					CountryCode: pulumi.String("1"),
/// 					PhoneNumber: pulumi.String("1231231234"),
/// 				},
/// 			},
/// 			VoiceReceivers: monitoring.ActionGroupVoiceReceiverArray{
/// 				&monitoring.ActionGroupVoiceReceiverArgs{
/// 					Name:        pulumi.String("remotesupport"),
/// 					CountryCode: pulumi.String("86"),
/// 					PhoneNumber: pulumi.String("13888888888"),
/// 				},
/// 			},
/// 			WebhookReceivers: monitoring.ActionGroupWebhookReceiverArray{
/// 				&monitoring.ActionGroupWebhookReceiverArgs{
/// 					Name:                 pulumi.String("callmyapiaswell"),
/// 					ServiceUri:           pulumi.String("http://example.com/alert"),
/// 					UseCommonAlertSchema: pulumi.Bool(true),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_core_getclientconfig" "current" {
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "monitoring-resources"
///   location = "West Europe"
/// }
/// resource "azure_operationalinsights_analyticsworkspace" "example" {
///   name                = "workspace-01"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_monitoring_actiongroup" "example" {
///   name                = "CriticalAlertsAction"
///   resource_group_name = azure_core_resourcegroup.example.name
///   short_name          = "p0action"
///   arm_role_receivers {
///     name                    = "armroleaction"
///     role_id                 = "de139f84-1756-47ae-9be6-808fbbe84772"
///     use_common_alert_schema = true
///   }
///   automation_runbook_receivers {
///     name                    = "action_name_1"
///     automation_account_id   = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-runbooks/providers/Microsoft.Automation/automationAccounts/aaa001"
///     runbook_name            = "my runbook"
///     webhook_resource_id     = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-runbooks/providers/Microsoft.Automation/automationAccounts/aaa001/webHooks/webhook_alert"
///     is_global_runbook       = true
///     service_uri             = "https://s13events.azure-automation.net/webhooks?token=randomtoken"
///     use_common_alert_schema = true
///   }
///   azure_app_push_receivers {
///     name          = "pushtoadmin"
///     email_address = "admin@contoso.com"
///   }
///   azure_function_receivers {
///     name                     = "funcaction"
///     function_app_resource_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-funcapp/providers/Microsoft.Web/sites/funcapp"
///     function_name            = "myfunc"
///     http_trigger_url         = "https://example.com/trigger"
///     use_common_alert_schema  = true
///   }
///   email_receivers {
///     name          = "sendtoadmin"
///     email_address = "admin@contoso.com"
///   }
///   email_receivers {
///     name                    = "sendtodevops"
///     email_address           = "devops@contoso.com"
///     use_common_alert_schema = true
///   }
///   event_hub_receivers {
///     name                    = "sendtoeventhub"
///     event_hub_namespace     = "eventhubnamespace"
///     event_hub_name          = "eventhub1"
///     subscription_id         = "00000000-0000-0000-0000-000000000000"
///     use_common_alert_schema = false
///   }
///   itsm_receivers {
///     name                 = "createorupdateticket"
///     workspace_id         ="${data.azure_core_getclientconfig.current.subscription_id}|${azure_operationalinsights_analyticsworkspace.example.workspace_id}"
///     connection_id        = "53de6956-42b4-41ba-be3c-b154cdf17b13"
///     ticket_configuration = "{\"PayloadRevision\":0,\"WorkItemType\":\"Incident\",\"UseTemplate\":false,\"WorkItemData\":\"{}\",\"CreateOneWIPerCI\":false}"
///     region               = "southcentralus"
///   }
///   logic_app_receivers {
///     name                    = "logicappaction"
///     resource_id             = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-logicapp/providers/Microsoft.Logic/workflows/logicapp"
///     callback_url            = "https://logicapptriggerurl/..."
///     use_common_alert_schema = true
///   }
///   sms_receivers {
///     name         = "oncallmsg"
///     country_code = "1"
///     phone_number = "1231231234"
///   }
///   voice_receivers {
///     name         = "remotesupport"
///     country_code = "86"
///     phone_number = "13888888888"
///   }
///   webhook_receivers {
///     name                    = "callmyapiaswell"
///     service_uri             = "http://example.com/alert"
///     use_common_alert_schema = true
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspace;
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspaceArgs;
/// import com.pulumi.azure.monitoring.ActionGroup;
/// import com.pulumi.azure.monitoring.ActionGroupArgs;
/// import com.pulumi.azure.monitoring.inputs.ActionGroupArmRoleReceiverArgs;
/// import com.pulumi.azure.monitoring.inputs.ActionGroupAutomationRunbookReceiverArgs;
/// import com.pulumi.azure.monitoring.inputs.ActionGroupAzureAppPushReceiverArgs;
/// import com.pulumi.azure.monitoring.inputs.ActionGroupAzureFunctionReceiverArgs;
/// import com.pulumi.azure.monitoring.inputs.ActionGroupEmailReceiverArgs;
/// import com.pulumi.azure.monitoring.inputs.ActionGroupEventHubReceiverArgs;
/// import com.pulumi.azure.monitoring.inputs.ActionGroupItsmReceiverArgs;
/// import com.pulumi.azure.monitoring.inputs.ActionGroupLogicAppReceiverArgs;
/// import com.pulumi.azure.monitoring.inputs.ActionGroupSmsReceiverArgs;
/// import com.pulumi.azure.monitoring.inputs.ActionGroupVoiceReceiverArgs;
/// import com.pulumi.azure.monitoring.inputs.ActionGroupWebhookReceiverArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("monitoring-resources")
///             .location("West Europe")
///             .build());
///
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var exampleAnalyticsWorkspace = new AnalyticsWorkspace("exampleAnalyticsWorkspace", AnalyticsWorkspaceArgs.builder()
///             .name("workspace-01")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleActionGroup = new ActionGroup("exampleActionGroup", ActionGroupArgs.builder()
///             .name("CriticalAlertsAction")
///             .resourceGroupName(example.name())
///             .shortName("p0action")
///             .armRoleReceivers(ActionGroupArmRoleReceiverArgs.builder()
///                 .name("armroleaction")
///                 .roleId("de139f84-1756-47ae-9be6-808fbbe84772")
///                 .useCommonAlertSchema(true)
///                 .build())
///             .automationRunbookReceivers(ActionGroupAutomationRunbookReceiverArgs.builder()
///                 .name("action_name_1")
///                 .automationAccountId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-runbooks/providers/Microsoft.Automation/automationAccounts/aaa001")
///                 .runbookName("my runbook")
///                 .webhookResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-runbooks/providers/Microsoft.Automation/automationAccounts/aaa001/webHooks/webhook_alert")
///                 .isGlobalRunbook(true)
///                 .serviceUri("https://s13events.azure-automation.net/webhooks?token=randomtoken")
///                 .useCommonAlertSchema(true)
///                 .build())
///             .azureAppPushReceivers(ActionGroupAzureAppPushReceiverArgs.builder()
///                 .name("pushtoadmin")
///                 .emailAddress("admin@contoso.com")
///                 .build())
///             .azureFunctionReceivers(ActionGroupAzureFunctionReceiverArgs.builder()
///                 .name("funcaction")
///                 .functionAppResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-funcapp/providers/Microsoft.Web/sites/funcapp")
///                 .functionName("myfunc")
///                 .httpTriggerUrl("https://example.com/trigger")
///                 .useCommonAlertSchema(true)
///                 .build())
///             .emailReceivers(
///                 ActionGroupEmailReceiverArgs.builder()
///                     .name("sendtoadmin")
///                     .emailAddress("admin@contoso.com")
///                     .build(),
///                 ActionGroupEmailReceiverArgs.builder()
///                     .name("sendtodevops")
///                     .emailAddress("devops@contoso.com")
///                     .useCommonAlertSchema(true)
///                     .build())
///             .eventHubReceivers(ActionGroupEventHubReceiverArgs.builder()
///                 .name("sendtoeventhub")
///                 .eventHubNamespace("eventhubnamespace")
///                 .eventHubName("eventhub1")
///                 .subscriptionId("00000000-0000-0000-0000-000000000000")
///                 .useCommonAlertSchema(false)
///                 .build())
///             .itsmReceivers(ActionGroupItsmReceiverArgs.builder()
///                 .name("createorupdateticket")
///                 .workspaceId(exampleAnalyticsWorkspace.workspaceId().applyValue(_workspaceId -> String.format("%s|%s", current.subscriptionId(),_workspaceId)))
///                 .connectionId("53de6956-42b4-41ba-be3c-b154cdf17b13")
///                 .ticketConfiguration("{\"PayloadRevision\":0,\"WorkItemType\":\"Incident\",\"UseTemplate\":false,\"WorkItemData\":\"{}\",\"CreateOneWIPerCI\":false}")
///                 .region("southcentralus")
///                 .build())
///             .logicAppReceivers(ActionGroupLogicAppReceiverArgs.builder()
///                 .name("logicappaction")
///                 .resourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-logicapp/providers/Microsoft.Logic/workflows/logicapp")
///                 .callbackUrl("https://logicapptriggerurl/...")
///                 .useCommonAlertSchema(true)
///                 .build())
///             .smsReceivers(ActionGroupSmsReceiverArgs.builder()
///                 .name("oncallmsg")
///                 .countryCode("1")
///                 .phoneNumber("1231231234")
///                 .build())
///             .voiceReceivers(ActionGroupVoiceReceiverArgs.builder()
///                 .name("remotesupport")
///                 .countryCode("86")
///                 .phoneNumber("13888888888")
///                 .build())
///             .webhookReceivers(ActionGroupWebhookReceiverArgs.builder()
///                 .name("callmyapiaswell")
///                 .serviceUri("http://example.com/alert")
///                 .useCommonAlertSchema(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: monitoring-resources
///       location: West Europe
///   exampleAnalyticsWorkspace:
///     type: azure:operationalinsights:AnalyticsWorkspace
///     name: example
///     properties:
///       name: workspace-01
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleActionGroup:
///     type: azure:monitoring:ActionGroup
///     name: example
///     properties:
///       name: CriticalAlertsAction
///       resourceGroupName: ${example.name}
///       shortName: p0action
///       armRoleReceivers:
///         - name: armroleaction
///           roleId: de139f84-1756-47ae-9be6-808fbbe84772
///           useCommonAlertSchema: true
///       automationRunbookReceivers:
///         - name: action_name_1
///           automationAccountId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-runbooks/providers/Microsoft.Automation/automationAccounts/aaa001
///           runbookName: my runbook
///           webhookResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-runbooks/providers/Microsoft.Automation/automationAccounts/aaa001/webHooks/webhook_alert
///           isGlobalRunbook: true
///           serviceUri: https://s13events.azure-automation.net/webhooks?token=randomtoken
///           useCommonAlertSchema: true
///       azureAppPushReceivers:
///         - name: pushtoadmin
///           emailAddress: admin@contoso.com
///       azureFunctionReceivers:
///         - name: funcaction
///           functionAppResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-funcapp/providers/Microsoft.Web/sites/funcapp
///           functionName: myfunc
///           httpTriggerUrl: https://example.com/trigger
///           useCommonAlertSchema: true
///       emailReceivers:
///         - name: sendtoadmin
///           emailAddress: admin@contoso.com
///         - name: sendtodevops
///           emailAddress: devops@contoso.com
///           useCommonAlertSchema: true
///       eventHubReceivers:
///         - name: sendtoeventhub
///           eventHubNamespace: eventhubnamespace
///           eventHubName: eventhub1
///           subscriptionId: 00000000-0000-0000-0000-000000000000
///           useCommonAlertSchema: false
///       itsmReceivers:
///         - name: createorupdateticket
///           workspaceId: ${current.subscriptionId}|${exampleAnalyticsWorkspace.workspaceId}
///           connectionId: 53de6956-42b4-41ba-be3c-b154cdf17b13
///           ticketConfiguration: '{"PayloadRevision":0,"WorkItemType":"Incident","UseTemplate":false,"WorkItemData":"{}","CreateOneWIPerCI":false}'
///           region: southcentralus
///       logicAppReceivers:
///         - name: logicappaction
///           resourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-logicapp/providers/Microsoft.Logic/workflows/logicapp
///           callbackUrl: https://logicapptriggerurl/...
///           useCommonAlertSchema: true
///       smsReceivers:
///         - name: oncallmsg
///           countryCode: '1'
///           phoneNumber: '1231231234'
///       voiceReceivers:
///         - name: remotesupport
///           countryCode: '86'
///           phoneNumber: '13888888888'
///       webhookReceivers:
///         - name: callmyapiaswell
///           serviceUri: http://example.com/alert
///           useCommonAlertSchema: true
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Insights` - 2023-01-01
///
/// ## Import
///
/// Action Groups can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:monitoring/actionGroup:ActionGroup example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Insights/actionGroups/myagname
/// ```
class ActionGroup extends pulumi.CustomResource {
  /// One or more `armRoleReceiver` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> armRoleReceivers;
  /// One or more `automationRunbookReceiver` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> automationRunbookReceivers;
  /// One or more `azureAppPushReceiver` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> azureAppPushReceivers;
  /// One or more `azureFunctionReceiver` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> azureFunctionReceivers;
  /// One or more `emailReceiver` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> emailReceivers;
  /// Whether this action group is enabled. If an action group is not enabled, then none of its receivers will receive communications. Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// One or more `eventHubReceiver` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> eventHubReceivers;
  /// One or more `itsmReceiver` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> itsmReceivers;
  /// The Azure Region where the Action Group should exist. Changing this forces a new Action Group to be created. Defaults to `global`.
  late final pulumi.Output<String> location;
  /// One or more `logicAppReceiver` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> logicAppReceivers;
  /// The name of the Action Group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which to create the Action Group instance. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The short name of the action group. This will be used in SMS messages.
  late final pulumi.Output<String> shortName;
  /// One or more `smsReceiver` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> smsReceivers;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// One or more `voiceReceiver` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> voiceReceivers;
  /// One or more `webhookReceiver` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> webhookReceivers;

  /// Creates a new [ActionGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ActionGroup]. {@macro pulumi_monitoring_action_group_action_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ActionGroup(
    String name, {
    ActionGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:monitoring/actionGroup:ActionGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    armRoleReceivers = registerOutput<List<Map<String, dynamic>>?>('armRoleReceivers');
    automationRunbookReceivers = registerOutput<List<Map<String, dynamic>>?>('automationRunbookReceivers');
    azureAppPushReceivers = registerOutput<List<Map<String, dynamic>>?>('azureAppPushReceivers');
    azureFunctionReceivers = registerOutput<List<Map<String, dynamic>>?>('azureFunctionReceivers');
    emailReceivers = registerOutput<List<Map<String, dynamic>>?>('emailReceivers');
    enabled = registerOutput<bool?>('enabled');
    eventHubReceivers = registerOutput<List<Map<String, dynamic>>?>('eventHubReceivers');
    itsmReceivers = registerOutput<List<Map<String, dynamic>>?>('itsmReceivers');
    location = registerOutput<String>('location');
    logicAppReceivers = registerOutput<List<Map<String, dynamic>>?>('logicAppReceivers');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    shortName = registerOutput<String>('shortName');
    smsReceivers = registerOutput<List<Map<String, dynamic>>?>('smsReceivers');
    tags = registerOutput<Map<String, String>?>('tags');
    voiceReceivers = registerOutput<List<Map<String, dynamic>>?>('voiceReceivers');
    webhookReceivers = registerOutput<List<Map<String, dynamic>>?>('webhookReceivers');
  }

  /// Gets an existing [ActionGroup] resource's state with the given [name] and [id].
  static ActionGroup get(
    String name,
    pulumi.Input<String> id, {
    ActionGroupState? state,
  }) {
    return ActionGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ActionGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:monitoring/actionGroup:ActionGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    armRoleReceivers = registerOutput<List<Map<String, dynamic>>?>('armRoleReceivers');
    automationRunbookReceivers = registerOutput<List<Map<String, dynamic>>?>('automationRunbookReceivers');
    azureAppPushReceivers = registerOutput<List<Map<String, dynamic>>?>('azureAppPushReceivers');
    azureFunctionReceivers = registerOutput<List<Map<String, dynamic>>?>('azureFunctionReceivers');
    emailReceivers = registerOutput<List<Map<String, dynamic>>?>('emailReceivers');
    enabled = registerOutput<bool?>('enabled');
    eventHubReceivers = registerOutput<List<Map<String, dynamic>>?>('eventHubReceivers');
    itsmReceivers = registerOutput<List<Map<String, dynamic>>?>('itsmReceivers');
    location = registerOutput<String>('location');
    logicAppReceivers = registerOutput<List<Map<String, dynamic>>?>('logicAppReceivers');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    shortName = registerOutput<String>('shortName');
    smsReceivers = registerOutput<List<Map<String, dynamic>>?>('smsReceivers');
    tags = registerOutput<Map<String, String>?>('tags');
    voiceReceivers = registerOutput<List<Map<String, dynamic>>?>('voiceReceivers');
    webhookReceivers = registerOutput<List<Map<String, dynamic>>?>('webhookReceivers');
  }
}
