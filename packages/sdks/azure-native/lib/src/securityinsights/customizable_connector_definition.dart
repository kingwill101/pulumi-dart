import 'package:pulumi/pulumi.dart' as pulumi;
import 'customizable_connections_config_response.dart';
import 'customizable_connector_definition_args.dart';
import 'customizable_connector_ui_config_response.dart';
import 'system_data_response.dart';

/// Connector definition for kind 'Customizable'.
///
/// Uses Azure REST API version 2024-09-01. In version 2.x of the Azure Native provider, it used API version 2023-07-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create data connector definition
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var customizableConnectorDefinition = new AzureNative.SecurityInsights.CustomizableConnectorDefinition("customizableConnectorDefinition", new()
///     {
///         ConnectorUiConfig = new AzureNative.SecurityInsights.Inputs.CustomizableConnectorUiConfigArgs
///         {
///             Availability = new AzureNative.SecurityInsights.Inputs.ConnectorDefinitionsAvailabilityArgs
///             {
///                 IsPreview = false,
///                 Status = 1,
///             },
///             ConnectivityCriteria = new[]
///             {
///                 new AzureNative.SecurityInsights.Inputs.ConnectivityCriterionArgs
///                 {
///                     Type = "IsConnectedQuery",
///                     Value = new[]
///                     {
///                         @"GitHubAuditLogPolling_CL
///  | summarize LastLogReceived = max(TimeGenerated)
///  | project IsConnected = LastLogReceived > ago(30d)",
///                     },
///                 },
///             },
///             DataTypes = new[]
///             {
///                 new AzureNative.SecurityInsights.Inputs.ConnectorDataTypeArgs
///                 {
///                     LastDataReceivedQuery = @"GitHubAuditLogPolling_CL
///             | summarize Time = max(TimeGenerated)
///             | where isnotempty(Time)",
///                     Name = "GitHubAuditLogPolling_CL",
///                 },
///             },
///             DescriptionMarkdown = "The GitHub audit log connector provides the capability to ingest GitHub logs into Azure Sentinel. By connecting GitHub audit logs into Azure Sentinel, you can view this data in workbooks, use it to create custom alerts, and improve your investigation process.",
///             GraphQueries = new[]
///             {
///                 new AzureNative.SecurityInsights.Inputs.GraphQueryArgs
///                 {
///                     BaseQuery = "GitHubAuditLogPolling_CL",
///                     Legend = "GitHub audit log events",
///                     MetricName = "Total events received",
///                 },
///             },
///             InstructionSteps = new[]
///             {
///                 new AzureNative.SecurityInsights.Inputs.InstructionStepArgs
///                 {
///                     Description = @"Enable GitHub audit Logs.
///  Follow [this](https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token) to create or find your personal key",
///                     Instructions = new[]
///                     {
///                         new AzureNative.SecurityInsights.Inputs.InstructionStepDetailsArgs
///                         {
///                             Parameters = new Dictionary<string, object?>
///                             {
///                                 ["clientIdLabel"] = "Client ID",
///                                 ["clientSecretLabel"] = "Client Secret",
///                                 ["connectButtonLabel"] = "Connect",
///                                 ["disconnectButtonLabel"] = "Disconnect",
///                             },
///                             Type = "OAuthForm",
///                         },
///                     },
///                     Title = "Connect GitHub Enterprise Audit Log to Azure Sentinel",
///                 },
///             },
///             Permissions = new AzureNative.SecurityInsights.Inputs.ConnectorDefinitionsPermissionsArgs
///             {
///                 Customs = new[]
///                 {
///                     new AzureNative.SecurityInsights.Inputs.CustomPermissionDetailsArgs
///                     {
///                         Description = "You need access to GitHub personal token, the key should have 'admin:org' scope",
///                         Name = "GitHub API personal token Key",
///                     },
///                 },
///                 ResourceProvider = new[]
///                 {
///                     new AzureNative.SecurityInsights.Inputs.ConnectorDefinitionsResourceProviderArgs
///                     {
///                         PermissionsDisplayText = "read and write permissions are required.",
///                         Provider = "Microsoft.OperationalInsights/workspaces",
///                         ProviderDisplayName = "Workspace",
///                         RequiredPermissions = new AzureNative.SecurityInsights.Inputs.ResourceProviderRequiredPermissionsArgs
///                         {
///                             Action = false,
///                             Delete = false,
///                             Read = false,
///                             Write = true,
///                         },
///                         Scope = AzureNative.SecurityInsights.ProviderPermissionsScope.Workspace,
///                     },
///                 },
///             },
///             Publisher = "GitHub",
///             Title = "GitHub Enterprise Audit Log",
///         },
///         DataConnectorDefinitionName = "73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///         Kind = "Customizable",
///         ResourceGroupName = "myRg",
///         WorkspaceName = "myWorkspace",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	securityinsights "github.com/pulumi/pulumi-azure-native-sdk/securityinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securityinsights.NewCustomizableConnectorDefinition(ctx, "customizableConnectorDefinition", &securityinsights.CustomizableConnectorDefinitionArgs{
/// 			ConnectorUiConfig: &securityinsights.CustomizableConnectorUiConfigArgs{
/// 				Availability: &securityinsights.ConnectorDefinitionsAvailabilityArgs{
/// 					IsPreview: pulumi.Bool(false),
/// 					Status:    pulumi.Int(1),
/// 				},
/// 				ConnectivityCriteria: securityinsights.ConnectivityCriterionArray{
/// 					&securityinsights.ConnectivityCriterionArgs{
/// 						Type: pulumi.String("IsConnectedQuery"),
/// 						Value: pulumi.StringArray{
/// 							pulumi.String("GitHubAuditLogPolling_CL \n | summarize LastLogReceived = max(TimeGenerated)\n | project IsConnected = LastLogReceived > ago(30d)"),
/// 						},
/// 					},
/// 				},
/// 				DataTypes: securityinsights.ConnectorDataTypeArray{
/// 					&securityinsights.ConnectorDataTypeArgs{
/// 						LastDataReceivedQuery: pulumi.String("GitHubAuditLogPolling_CL \n            | summarize Time = max(TimeGenerated)\n            | where isnotempty(Time)"),
/// 						Name:                  pulumi.String("GitHubAuditLogPolling_CL"),
/// 					},
/// 				},
/// 				DescriptionMarkdown: pulumi.String("The GitHub audit log connector provides the capability to ingest GitHub logs into Azure Sentinel. By connecting GitHub audit logs into Azure Sentinel, you can view this data in workbooks, use it to create custom alerts, and improve your investigation process."),
/// 				GraphQueries: securityinsights.GraphQueryArray{
/// 					&securityinsights.GraphQueryArgs{
/// 						BaseQuery:  pulumi.String("GitHubAuditLogPolling_CL"),
/// 						Legend:     pulumi.String("GitHub audit log events"),
/// 						MetricName: pulumi.String("Total events received"),
/// 					},
/// 				},
/// 				InstructionSteps: securityinsights.InstructionStepArray{
/// 					&securityinsights.InstructionStepArgs{
/// 						Description: pulumi.String("Enable GitHub audit Logs. \n Follow [this](https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token) to create or find your personal key"),
/// 						Instructions: securityinsights.InstructionStepDetailsArray{
/// 							&securityinsights.InstructionStepDetailsArgs{
/// 								Parameters: pulumi.Any(map[string]interface{}{
/// 									"clientIdLabel":         "Client ID",
/// 									"clientSecretLabel":     "Client Secret",
/// 									"connectButtonLabel":    "Connect",
/// 									"disconnectButtonLabel": "Disconnect",
/// 								}),
/// 								Type: pulumi.String("OAuthForm"),
/// 							},
/// 						},
/// 						Title: pulumi.String("Connect GitHub Enterprise Audit Log to Azure Sentinel"),
/// 					},
/// 				},
/// 				Permissions: &securityinsights.ConnectorDefinitionsPermissionsArgs{
/// 					Customs: securityinsights.CustomPermissionDetailsArray{
/// 						&securityinsights.CustomPermissionDetailsArgs{
/// 							Description: pulumi.String("You need access to GitHub personal token, the key should have 'admin:org' scope"),
/// 							Name:        pulumi.String("GitHub API personal token Key"),
/// 						},
/// 					},
/// 					ResourceProvider: securityinsights.ConnectorDefinitionsResourceProviderArray{
/// 						&securityinsights.ConnectorDefinitionsResourceProviderArgs{
/// 							PermissionsDisplayText: pulumi.String("read and write permissions are required."),
/// 							Provider:               pulumi.String("Microsoft.OperationalInsights/workspaces"),
/// 							ProviderDisplayName:    pulumi.String("Workspace"),
/// 							RequiredPermissions: &securityinsights.ResourceProviderRequiredPermissionsArgs{
/// 								Action: pulumi.Bool(false),
/// 								Delete: pulumi.Bool(false),
/// 								Read:   pulumi.Bool(false),
/// 								Write:  pulumi.Bool(true),
/// 							},
/// 							Scope: pulumi.String(securityinsights.ProviderPermissionsScopeWorkspace),
/// 						},
/// 					},
/// 				},
/// 				Publisher: pulumi.String("GitHub"),
/// 				Title:     pulumi.String("GitHub Enterprise Audit Log"),
/// 			},
/// 			DataConnectorDefinitionName: pulumi.String("73e01a99-5cd7-4139-a149-9f2736ff2ab5"),
/// 			Kind:                        pulumi.String("Customizable"),
/// 			ResourceGroupName:           pulumi.String("myRg"),
/// 			WorkspaceName:               pulumi.String("myWorkspace"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.securityinsights.CustomizableConnectorDefinition;
/// import com.pulumi.azurenative.securityinsights.CustomizableConnectorDefinitionArgs;
/// import com.pulumi.azurenative.securityinsights.inputs.CustomizableConnectorUiConfigArgs;
/// import com.pulumi.azurenative.securityinsights.inputs.ConnectorDefinitionsAvailabilityArgs;
/// import com.pulumi.azurenative.securityinsights.inputs.ConnectorDefinitionsPermissionsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var customizableConnectorDefinition = new CustomizableConnectorDefinition("customizableConnectorDefinition", CustomizableConnectorDefinitionArgs.builder()
///             .connectorUiConfig(CustomizableConnectorUiConfigArgs.builder()
///                 .availability(ConnectorDefinitionsAvailabilityArgs.builder()
///                     .isPreview(false)
///                     .status(1)
///                     .build())
///                 .connectivityCriteria(ConnectivityCriterionArgs.builder()
///                     .type("IsConnectedQuery")
///                     .value("""
/// GitHubAuditLogPolling_CL
///  | summarize LastLogReceived = max(TimeGenerated)
///  | project IsConnected = LastLogReceived > ago(30d)                    """)
///                     .build())
///                 .dataTypes(ConnectorDataTypeArgs.builder()
///                     .lastDataReceivedQuery("""
/// GitHubAuditLogPolling_CL
///             | summarize Time = max(TimeGenerated)
///             | where isnotempty(Time)                    """)
///                     .name("GitHubAuditLogPolling_CL")
///                     .build())
///                 .descriptionMarkdown("The GitHub audit log connector provides the capability to ingest GitHub logs into Azure Sentinel. By connecting GitHub audit logs into Azure Sentinel, you can view this data in workbooks, use it to create custom alerts, and improve your investigation process.")
///                 .graphQueries(GraphQueryArgs.builder()
///                     .baseQuery("GitHubAuditLogPolling_CL")
///                     .legend("GitHub audit log events")
///                     .metricName("Total events received")
///                     .build())
///                 .instructionSteps(InstructionStepArgs.builder()
///                     .description("""
/// Enable GitHub audit Logs.
///  Follow [this](https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token) to create or find your personal key                    """)
///                     .instructions(InstructionStepDetailsArgs.builder()
///                         .parameters(Map.ofEntries(
///                             Map.entry("clientIdLabel", "Client ID"),
///                             Map.entry("clientSecretLabel", "Client Secret"),
///                             Map.entry("connectButtonLabel", "Connect"),
///                             Map.entry("disconnectButtonLabel", "Disconnect")
///                         ))
///                         .type("OAuthForm")
///                         .build())
///                     .title("Connect GitHub Enterprise Audit Log to Azure Sentinel")
///                     .build())
///                 .permissions(ConnectorDefinitionsPermissionsArgs.builder()
///                     .customs(CustomPermissionDetailsArgs.builder()
///                         .description("You need access to GitHub personal token, the key should have 'admin:org' scope")
///                         .name("GitHub API personal token Key")
///                         .build())
///                     .resourceProvider(ConnectorDefinitionsResourceProviderArgs.builder()
///                         .permissionsDisplayText("read and write permissions are required.")
///                         .provider("Microsoft.OperationalInsights/workspaces")
///                         .providerDisplayName("Workspace")
///                         .requiredPermissions(ResourceProviderRequiredPermissionsArgs.builder()
///                             .action(false)
///                             .delete(false)
///                             .read(false)
///                             .write(true)
///                             .build())
///                         .scope("Workspace")
///                         .build())
///                     .build())
///                 .publisher("GitHub")
///                 .title("GitHub Enterprise Audit Log")
///                 .build())
///             .dataConnectorDefinitionName("73e01a99-5cd7-4139-a149-9f2736ff2ab5")
///             .kind("Customizable")
///             .resourceGroupName("myRg")
///             .workspaceName("myWorkspace")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const customizableConnectorDefinition = new azure_native.securityinsights.CustomizableConnectorDefinition("customizableConnectorDefinition", {
///     connectorUiConfig: {
///         availability: {
///             isPreview: false,
///             status: 1,
///         },
///         connectivityCriteria: [{
///             type: "IsConnectedQuery",
///             value: [`GitHubAuditLogPolling_CL
///  | summarize LastLogReceived = max(TimeGenerated)
///  | project IsConnected = LastLogReceived > ago(30d)`],
///         }],
///         dataTypes: [{
///             lastDataReceivedQuery: `GitHubAuditLogPolling_CL
///             | summarize Time = max(TimeGenerated)
///             | where isnotempty(Time)`,
///             name: "GitHubAuditLogPolling_CL",
///         }],
///         descriptionMarkdown: "The GitHub audit log connector provides the capability to ingest GitHub logs into Azure Sentinel. By connecting GitHub audit logs into Azure Sentinel, you can view this data in workbooks, use it to create custom alerts, and improve your investigation process.",
///         graphQueries: [{
///             baseQuery: "GitHubAuditLogPolling_CL",
///             legend: "GitHub audit log events",
///             metricName: "Total events received",
///         }],
///         instructionSteps: [{
///             description: `Enable GitHub audit Logs.
///  Follow [this](https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token) to create or find your personal key`,
///             instructions: [{
///                 parameters: {
///                     clientIdLabel: "Client ID",
///                     clientSecretLabel: "Client Secret",
///                     connectButtonLabel: "Connect",
///                     disconnectButtonLabel: "Disconnect",
///                 },
///                 type: "OAuthForm",
///             }],
///             title: "Connect GitHub Enterprise Audit Log to Azure Sentinel",
///         }],
///         permissions: {
///             customs: [{
///                 description: "You need access to GitHub personal token, the key should have 'admin:org' scope",
///                 name: "GitHub API personal token Key",
///             }],
///             resourceProvider: [{
///                 permissionsDisplayText: "read and write permissions are required.",
///                 provider: "Microsoft.OperationalInsights/workspaces",
///                 providerDisplayName: "Workspace",
///                 requiredPermissions: {
///                     action: false,
///                     "delete": false,
///                     read: false,
///                     write: true,
///                 },
///                 scope: azure_native.securityinsights.ProviderPermissionsScope.Workspace,
///             }],
///         },
///         publisher: "GitHub",
///         title: "GitHub Enterprise Audit Log",
///     },
///     dataConnectorDefinitionName: "73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///     kind: "Customizable",
///     resourceGroupName: "myRg",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// customizable_connector_definition = azure_native.securityinsights.CustomizableConnectorDefinition("customizableConnectorDefinition",
///     connector_ui_config={
///         "availability": {
///             "is_preview": False,
///             "status": 1,
///         },
///         "connectivity_criteria": [{
///             "type": "IsConnectedQuery",
///             "value": ["""GitHubAuditLogPolling_CL
///  | summarize LastLogReceived = max(TimeGenerated)
///  | project IsConnected = LastLogReceived > ago(30d)"""],
///         }],
///         "data_types": [{
///             "last_data_received_query": """GitHubAuditLogPolling_CL
///             | summarize Time = max(TimeGenerated)
///             | where isnotempty(Time)""",
///             "name": "GitHubAuditLogPolling_CL",
///         }],
///         "description_markdown": "The GitHub audit log connector provides the capability to ingest GitHub logs into Azure Sentinel. By connecting GitHub audit logs into Azure Sentinel, you can view this data in workbooks, use it to create custom alerts, and improve your investigation process.",
///         "graph_queries": [{
///             "base_query": "GitHubAuditLogPolling_CL",
///             "legend": "GitHub audit log events",
///             "metric_name": "Total events received",
///         }],
///         "instruction_steps": [{
///             "description": """Enable GitHub audit Logs.
///  Follow [this](https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token) to create or find your personal key""",
///             "instructions": [{
///                 "parameters": {
///                     "clientIdLabel": "Client ID",
///                     "clientSecretLabel": "Client Secret",
///                     "connectButtonLabel": "Connect",
///                     "disconnectButtonLabel": "Disconnect",
///                 },
///                 "type": "OAuthForm",
///             }],
///             "title": "Connect GitHub Enterprise Audit Log to Azure Sentinel",
///         }],
///         "permissions": {
///             "customs": [{
///                 "description": "You need access to GitHub personal token, the key should have 'admin:org' scope",
///                 "name": "GitHub API personal token Key",
///             }],
///             "resource_provider": [{
///                 "permissions_display_text": "read and write permissions are required.",
///                 "provider": "Microsoft.OperationalInsights/workspaces",
///                 "provider_display_name": "Workspace",
///                 "required_permissions": {
///                     "action": False,
///                     "delete": False,
///                     "read": False,
///                     "write": True,
///                 },
///                 "scope": azure_native.securityinsights.ProviderPermissionsScope.WORKSPACE,
///             }],
///         },
///         "publisher": "GitHub",
///         "title": "GitHub Enterprise Audit Log",
///     },
///     data_connector_definition_name="73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///     kind="Customizable",
///     resource_group_name="myRg",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   customizableConnectorDefinition:
///     type: azure-native:securityinsights:CustomizableConnectorDefinition
///     properties:
///       connectorUiConfig:
///         availability:
///           isPreview: false
///           status: 1
///         connectivityCriteria:
///           - type: IsConnectedQuery
///             value:
///               - "GitHubAuditLogPolling_CL \n | summarize LastLogReceived = max(TimeGenerated)\n | project IsConnected = LastLogReceived > ago(30d)"
///         dataTypes:
///           - lastDataReceivedQuery: "GitHubAuditLogPolling_CL \n            | summarize Time = max(TimeGenerated)\n            | where isnotempty(Time)"
///             name: GitHubAuditLogPolling_CL
///         descriptionMarkdown: The GitHub audit log connector provides the capability to ingest GitHub logs into Azure Sentinel. By connecting GitHub audit logs into Azure Sentinel, you can view this data in workbooks, use it to create custom alerts, and improve your investigation process.
///         graphQueries:
///           - baseQuery: GitHubAuditLogPolling_CL
///             legend: GitHub audit log events
///             metricName: Total events received
///         instructionSteps:
///           - description: "Enable GitHub audit Logs. \n Follow [this](https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token) to create or find your personal key"
///             instructions:
///               - parameters:
///                   clientIdLabel: Client ID
///                   clientSecretLabel: Client Secret
///                   connectButtonLabel: Connect
///                   disconnectButtonLabel: Disconnect
///                 type: OAuthForm
///             title: Connect GitHub Enterprise Audit Log to Azure Sentinel
///         permissions:
///           customs:
///             - description: You need access to GitHub personal token, the key should have 'admin:org' scope
///               name: GitHub API personal token Key
///           resourceProvider:
///             - permissionsDisplayText: read and write permissions are required.
///               provider: Microsoft.OperationalInsights/workspaces
///               providerDisplayName: Workspace
///               requiredPermissions:
///                 action: false
///                 delete: false
///                 read: false
///                 write: true
///               scope: Workspace
///         publisher: GitHub
///         title: GitHub Enterprise Audit Log
///       dataConnectorDefinitionName: 73e01a99-5cd7-4139-a149-9f2736ff2ab5
///       kind: Customizable
///       resourceGroupName: myRg
///       workspaceName: myWorkspace
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:securityinsights:CustomizableConnectorDefinition 73e01a99-5cd7-4139-a149-9f2736ff2ab5 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/dataConnectorDefinitions/{dataConnectorDefinitionName}
/// ```
class CustomizableConnectorDefinition extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The UiConfig for 'Customizable' connector definition kind.
  late final pulumi.Output<CustomizableConnectionsConfigResponse?>
  connectionsConfig;

  /// The UiConfig for 'Customizable' connector definition kind.
  late final pulumi.Output<CustomizableConnectorUiConfigResponse>
  connectorUiConfig;

  /// Gets or sets the connector definition created date in UTC format.
  late final pulumi.Output<String?> createdTimeUtc;

  /// Etag of the azure resource
  late final pulumi.Output<String?> etag;

  /// The kind of the data connector definitions
  /// Expected value is 'Customizable'.
  late final pulumi.Output<String> kind;

  /// Gets or sets the connector definition last modified date in UTC format.
  late final pulumi.Output<String?> lastModifiedUtc;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [CustomizableConnectorDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomizableConnectorDefinition]. {@macro pulumi_securityinsights_customizable_connector_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomizableConnectorDefinition(
    String name, {
    CustomizableConnectorDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:securityinsights:CustomizableConnectorDefinition',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    connectionsConfig = registerOutput<CustomizableConnectionsConfigResponse?>(
      'connectionsConfig',
    );
    connectorUiConfig = registerOutput<CustomizableConnectorUiConfigResponse>(
      'connectorUiConfig',
    );
    createdTimeUtc = registerOutput<String?>('createdTimeUtc');
    etag = registerOutput<String?>('etag');
    kind = registerOutput<String>('kind');
    lastModifiedUtc = registerOutput<String?>('lastModifiedUtc');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
