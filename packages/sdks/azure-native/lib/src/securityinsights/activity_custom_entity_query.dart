import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_custom_entity_query_args.dart';
import 'activity_entity_queries_properties_response_query_definitions.dart';
import 'system_data_response.dart';

/// Represents Activity entity query.
///
/// Uses Azure REST API version 2025-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-06-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates an Activity entity query.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var activityCustomEntityQuery = new AzureNative.SecurityInsights.ActivityCustomEntityQuery("activityCustomEntityQuery", new()
///     {
///         Content = "On '{{Computer}}' the account '{{TargetAccount}}' was deleted by '{{AddedBy}}'",
///         Description = "Account deleted on host",
///         Enabled = true,
///         EntitiesFilter =
///         {
///             { "Host_OsFamily", new[]
///             {
///                 "Windows",
///             } },
///         },
///         EntityQueryId = "07da3cc8-c8ad-4710-a44e-334cdcb7882b",
///         InputEntityType = AzureNative.SecurityInsights.EntityType.Host,
///         Kind = "Activity",
///         QueryDefinitions = new AzureNative.SecurityInsights.Inputs.ActivityEntityQueriesPropertiesQueryDefinitionsArgs
///         {
///             Query = @"let GetAccountActions = (v_Host_Name:string, v_Host_NTDomain:string, v_Host_DnsDomain:string, v_Host_AzureID:string, v_Host_OMSAgentID:string){
/// SecurityEvent
/// | where EventID in (4725, 4726, 4767, 4720, 4722, 4723, 4724)
/// // parsing for Host to handle variety of conventions coming from data
/// | extend Host_HostName = case(
/// Computer has '@', tostring(split(Computer, '@')[0]),
/// Computer has '\\', tostring(split(Computer, '\\')[1]),
/// Computer has '.', tostring(split(Computer, '.')[0]),
/// Computer
/// )
/// | extend Host_NTDomain = case(
/// Computer has '\\', tostring(split(Computer, '\\')[0]),
/// Computer has '.', tostring(split(Computer, '.')[-2]),
/// Computer
/// )
/// | extend Host_DnsDomain = case(
/// Computer has '\\', tostring(split(Computer, '\\')[0]),
/// Computer has '.', strcat_array(array_slice(split(Computer,'.'),-2,-1),'.'),
/// Computer
/// )
/// | where (Host_HostName =~ v_Host_Name and Host_NTDomain =~ v_Host_NTDomain)
/// or (Host_HostName =~ v_Host_Name and Host_DnsDomain =~ v_Host_DnsDomain)
/// or v_Host_AzureID =~ _ResourceId
/// or v_Host_OMSAgentID == SourceComputerId
/// | project TimeGenerated, EventID, Activity, Computer, TargetAccount, TargetUserName, TargetDomainName, TargetSid, SubjectUserName, SubjectUserSid, _ResourceId, SourceComputerId
/// | extend AddedBy = SubjectUserName
/// // Future support for Activities
/// | extend timestamp = TimeGenerated, HostCustomEntity = Computer, AccountCustomEntity = TargetAccount
/// };
/// GetAccountActions('{{Host_HostName}}', '{{Host_NTDomain}}', '{{Host_DnsDomain}}', '{{Host_AzureID}}', '{{Host_OMSAgentID}}')
///
/// | where EventID == 4726 ",
///         },
///         RequiredInputFieldsSets = new[]
///         {
///             new[]
///             {
///                 "Host_HostName",
///                 "Host_NTDomain",
///             },
///             new[]
///             {
///                 "Host_HostName",
///                 "Host_DnsDomain",
///             },
///             new[]
///             {
///                 "Host_AzureID",
///             },
///             new[]
///             {
///                 "Host_OMSAgentID",
///             },
///         },
///         ResourceGroupName = "myRg",
///         Title = "An account was deleted on this host",
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
/// 		_, err := securityinsights.NewActivityCustomEntityQuery(ctx, "activityCustomEntityQuery", &securityinsights.ActivityCustomEntityQueryArgs{
/// 			Content:     pulumi.String("On '{{Computer}}' the account '{{TargetAccount}}' was deleted by '{{AddedBy}}'"),
/// 			Description: pulumi.String("Account deleted on host"),
/// 			Enabled:     pulumi.Bool(true),
/// 			EntitiesFilter: pulumi.StringArrayMap{
/// 				"Host_OsFamily": pulumi.StringArray{
/// 					pulumi.String("Windows"),
/// 				},
/// 			},
/// 			EntityQueryId:   pulumi.String("07da3cc8-c8ad-4710-a44e-334cdcb7882b"),
/// 			InputEntityType: pulumi.String(securityinsights.EntityTypeHost),
/// 			Kind:            pulumi.String("Activity"),
/// 			QueryDefinitions: &securityinsights.ActivityEntityQueriesPropertiesQueryDefinitionsArgs{
/// 				Query: pulumi.String(`let GetAccountActions = (v_Host_Name:string, v_Host_NTDomain:string, v_Host_DnsDomain:string, v_Host_AzureID:string, v_Host_OMSAgentID:string){
/// SecurityEvent
/// | where EventID in (4725, 4726, 4767, 4720, 4722, 4723, 4724)
/// // parsing for Host to handle variety of conventions coming from data
/// | extend Host_HostName = case(
/// Computer has '@', tostring(split(Computer, '@')[0]),
/// Computer has '\\', tostring(split(Computer, '\\')[1]),
/// Computer has '.', tostring(split(Computer, '.')[0]),
/// Computer
/// )
/// | extend Host_NTDomain = case(
/// Computer has '\\', tostring(split(Computer, '\\')[0]),
/// Computer has '.', tostring(split(Computer, '.')[-2]),
/// Computer
/// )
/// | extend Host_DnsDomain = case(
/// Computer has '\\', tostring(split(Computer, '\\')[0]),
/// Computer has '.', strcat_array(array_slice(split(Computer,'.'),-2,-1),'.'),
/// Computer
/// )
/// | where (Host_HostName =~ v_Host_Name and Host_NTDomain =~ v_Host_NTDomain)
/// or (Host_HostName =~ v_Host_Name and Host_DnsDomain =~ v_Host_DnsDomain)
/// or v_Host_AzureID =~ _ResourceId
/// or v_Host_OMSAgentID == SourceComputerId
/// | project TimeGenerated, EventID, Activity, Computer, TargetAccount, TargetUserName, TargetDomainName, TargetSid, SubjectUserName, SubjectUserSid, _ResourceId, SourceComputerId
/// | extend AddedBy = SubjectUserName
/// // Future support for Activities
/// | extend timestamp = TimeGenerated, HostCustomEntity = Computer, AccountCustomEntity = TargetAccount
/// };
/// GetAccountActions('{{Host_HostName}}', '{{Host_NTDomain}}', '{{Host_DnsDomain}}', '{{Host_AzureID}}', '{{Host_OMSAgentID}}')
///
/// | where EventID == 4726 `),
/// 			},
/// 			RequiredInputFieldsSets: pulumi.StringArrayArray{
/// 				pulumi.StringArray{
/// 					pulumi.String("Host_HostName"),
/// 					pulumi.String("Host_NTDomain"),
/// 				},
/// 				pulumi.StringArray{
/// 					pulumi.String("Host_HostName"),
/// 					pulumi.String("Host_DnsDomain"),
/// 				},
/// 				pulumi.StringArray{
/// 					pulumi.String("Host_AzureID"),
/// 				},
/// 				pulumi.StringArray{
/// 					pulumi.String("Host_OMSAgentID"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myRg"),
/// 			Title:             pulumi.String("An account was deleted on this host"),
/// 			WorkspaceName:     pulumi.String("myWorkspace"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_securityinsights_activitycustomentityquery" "activityCustomEntityQuery" {
///   content     = "On '{{Computer}}' the account '{{TargetAccount}}' was deleted by '{{AddedBy}}'"
///   description = "Account deleted on host"
///   enabled     = true
///   entities_filter = {
///     "Host_OsFamily" = ["Windows"]
///   }
///   entity_query_id   = "07da3cc8-c8ad-4710-a44e-334cdcb7882b"
///   input_entity_type = "Host"
///   kind              = "Activity"
///   query_definitions = {
///     query = "let GetAccountActions = (v_Host_Name:string, v_Host_NTDomain:string, v_Host_DnsDomain:string, v_Host_AzureID:string, v_Host_OMSAgentID:string){\nSecurityEvent\n| where EventID in (4725, 4726, 4767, 4720, 4722, 4723, 4724)\n// parsing for Host to handle variety of conventions coming from data\n| extend Host_HostName = case(\nComputer has '@', tostring(split(Computer, '@')[0]),\nComputer has '\\\\', tostring(split(Computer, '\\\\')[1]),\nComputer has '.', tostring(split(Computer, '.')[0]),\nComputer\n)\n| extend Host_NTDomain = case(\nComputer has '\\\\', tostring(split(Computer, '\\\\')[0]), \nComputer has '.', tostring(split(Computer, '.')[-2]), \nComputer\n)\n| extend Host_DnsDomain = case(\nComputer has '\\\\', tostring(split(Computer, '\\\\')[0]), \nComputer has '.', strcat_array(array_slice(split(Computer,'.'),-2,-1),'.'), \nComputer\n)\n| where (Host_HostName =~ v_Host_Name and Host_NTDomain =~ v_Host_NTDomain) \nor (Host_HostName =~ v_Host_Name and Host_DnsDomain =~ v_Host_DnsDomain) \nor v_Host_AzureID =~ _ResourceId \nor v_Host_OMSAgentID == SourceComputerId\n| project TimeGenerated, EventID, Activity, Computer, TargetAccount, TargetUserName, TargetDomainName, TargetSid, SubjectUserName, SubjectUserSid, _ResourceId, SourceComputerId\n| extend AddedBy = SubjectUserName\n// Future support for Activities\n| extend timestamp = TimeGenerated, HostCustomEntity = Computer, AccountCustomEntity = TargetAccount\n};\nGetAccountActions('{{Host_HostName}}', '{{Host_NTDomain}}', '{{Host_DnsDomain}}', '{{Host_AzureID}}', '{{Host_OMSAgentID}}')\n \n| where EventID == 4726 "
///   }
///   required_input_fields_sets = [["Host_HostName", "Host_NTDomain"], ["Host_HostName", "Host_DnsDomain"], ["Host_AzureID"], ["Host_OMSAgentID"]]
///   resource_group_name        = "myRg"
///   title                      = "An account was deleted on this host"
///   workspace_name             = "myWorkspace"
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
/// import com.pulumi.azurenative.securityinsights.ActivityCustomEntityQuery;
/// import com.pulumi.azurenative.securityinsights.ActivityCustomEntityQueryArgs;
/// import com.pulumi.azurenative.securityinsights.inputs.ActivityEntityQueriesPropertiesQueryDefinitionsArgs;
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
///         var activityCustomEntityQuery = new ActivityCustomEntityQuery("activityCustomEntityQuery", ActivityCustomEntityQueryArgs.builder()
///             .content("On '{{Computer}}' the account '{{TargetAccount}}' was deleted by '{{AddedBy}}'")
///             .description("Account deleted on host")
///             .enabled(true)
///             .entitiesFilter(Map.of("Host_OsFamily", Arrays.asList("Windows")))
///             .entityQueryId("07da3cc8-c8ad-4710-a44e-334cdcb7882b")
///             .inputEntityType("Host")
///             .kind("Activity")
///             .queryDefinitions(ActivityEntityQueriesPropertiesQueryDefinitionsArgs.builder()
///                 .query("""
/// let GetAccountActions = (v_Host_Name:string, v_Host_NTDomain:string, v_Host_DnsDomain:string, v_Host_AzureID:string, v_Host_OMSAgentID:string){
/// SecurityEvent
/// | where EventID in (4725, 4726, 4767, 4720, 4722, 4723, 4724)
/// // parsing for Host to handle variety of conventions coming from data
/// | extend Host_HostName = case(
/// Computer has '@', tostring(split(Computer, '@')[0]),
/// Computer has '\\', tostring(split(Computer, '\\')[1]),
/// Computer has '.', tostring(split(Computer, '.')[0]),
/// Computer
/// )
/// | extend Host_NTDomain = case(
/// Computer has '\\', tostring(split(Computer, '\\')[0]),
/// Computer has '.', tostring(split(Computer, '.')[-2]),
/// Computer
/// )
/// | extend Host_DnsDomain = case(
/// Computer has '\\', tostring(split(Computer, '\\')[0]),
/// Computer has '.', strcat_array(array_slice(split(Computer,'.'),-2,-1),'.'),
/// Computer
/// )
/// | where (Host_HostName =~ v_Host_Name and Host_NTDomain =~ v_Host_NTDomain)
/// or (Host_HostName =~ v_Host_Name and Host_DnsDomain =~ v_Host_DnsDomain)
/// or v_Host_AzureID =~ _ResourceId
/// or v_Host_OMSAgentID == SourceComputerId
/// | project TimeGenerated, EventID, Activity, Computer, TargetAccount, TargetUserName, TargetDomainName, TargetSid, SubjectUserName, SubjectUserSid, _ResourceId, SourceComputerId
/// | extend AddedBy = SubjectUserName
/// // Future support for Activities
/// | extend timestamp = TimeGenerated, HostCustomEntity = Computer, AccountCustomEntity = TargetAccount
/// };
/// GetAccountActions('{{Host_HostName}}', '{{Host_NTDomain}}', '{{Host_DnsDomain}}', '{{Host_AzureID}}', '{{Host_OMSAgentID}}')
///
/// | where EventID == 4726                 """)
///                 .build())
///             .requiredInputFieldsSets(
///
///                     "Host_HostName",
///                     "Host_NTDomain",
///
///                     "Host_HostName",
///                     "Host_DnsDomain",
///                 "Host_AzureID",
///                 "Host_OMSAgentID")
///             .resourceGroupName("myRg")
///             .title("An account was deleted on this host")
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
/// const activityCustomEntityQuery = new azure_native.securityinsights.ActivityCustomEntityQuery("activityCustomEntityQuery", {
///     content: "On '{{Computer}}' the account '{{TargetAccount}}' was deleted by '{{AddedBy}}'",
///     description: "Account deleted on host",
///     enabled: true,
///     entitiesFilter: {
///         Host_OsFamily: ["Windows"],
///     },
///     entityQueryId: "07da3cc8-c8ad-4710-a44e-334cdcb7882b",
///     inputEntityType: azure_native.securityinsights.EntityType.Host,
///     kind: "Activity",
///     queryDefinitions: {
///         query: `let GetAccountActions = (v_Host_Name:string, v_Host_NTDomain:string, v_Host_DnsDomain:string, v_Host_AzureID:string, v_Host_OMSAgentID:string){
/// SecurityEvent
/// | where EventID in (4725, 4726, 4767, 4720, 4722, 4723, 4724)
/// // parsing for Host to handle variety of conventions coming from data
/// | extend Host_HostName = case(
/// Computer has '@', tostring(split(Computer, '@')[0]),
/// Computer has '\\\\', tostring(split(Computer, '\\\\')[1]),
/// Computer has '.', tostring(split(Computer, '.')[0]),
/// Computer
/// )
/// | extend Host_NTDomain = case(
/// Computer has '\\\\', tostring(split(Computer, '\\\\')[0]),
/// Computer has '.', tostring(split(Computer, '.')[-2]),
/// Computer
/// )
/// | extend Host_DnsDomain = case(
/// Computer has '\\\\', tostring(split(Computer, '\\\\')[0]),
/// Computer has '.', strcat_array(array_slice(split(Computer,'.'),-2,-1),'.'),
/// Computer
/// )
/// | where (Host_HostName =~ v_Host_Name and Host_NTDomain =~ v_Host_NTDomain)
/// or (Host_HostName =~ v_Host_Name and Host_DnsDomain =~ v_Host_DnsDomain)
/// or v_Host_AzureID =~ _ResourceId
/// or v_Host_OMSAgentID == SourceComputerId
/// | project TimeGenerated, EventID, Activity, Computer, TargetAccount, TargetUserName, TargetDomainName, TargetSid, SubjectUserName, SubjectUserSid, _ResourceId, SourceComputerId
/// | extend AddedBy = SubjectUserName
/// // Future support for Activities
/// | extend timestamp = TimeGenerated, HostCustomEntity = Computer, AccountCustomEntity = TargetAccount
/// };
/// GetAccountActions('{{Host_HostName}}', '{{Host_NTDomain}}', '{{Host_DnsDomain}}', '{{Host_AzureID}}', '{{Host_OMSAgentID}}')
///
/// | where EventID == 4726 `,
///     },
///     requiredInputFieldsSets: [
///         [
///             "Host_HostName",
///             "Host_NTDomain",
///         ],
///         [
///             "Host_HostName",
///             "Host_DnsDomain",
///         ],
///         ["Host_AzureID"],
///         ["Host_OMSAgentID"],
///     ],
///     resourceGroupName: "myRg",
///     title: "An account was deleted on this host",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// activity_custom_entity_query = azure_native.securityinsights.ActivityCustomEntityQuery("activityCustomEntityQuery",
///     content="On '{{Computer}}' the account '{{TargetAccount}}' was deleted by '{{AddedBy}}'",
///     description="Account deleted on host",
///     enabled=True,
///     entities_filter={
///         "Host_OsFamily": ["Windows"],
///     },
///     entity_query_id="07da3cc8-c8ad-4710-a44e-334cdcb7882b",
///     input_entity_type=azure_native.securityinsights.EntityType.HOST,
///     kind="Activity",
///     query_definitions={
///         "query": """let GetAccountActions = (v_Host_Name:string, v_Host_NTDomain:string, v_Host_DnsDomain:string, v_Host_AzureID:string, v_Host_OMSAgentID:string){
/// SecurityEvent
/// | where EventID in (4725, 4726, 4767, 4720, 4722, 4723, 4724)
/// // parsing for Host to handle variety of conventions coming from data
/// | extend Host_HostName = case(
/// Computer has '@', tostring(split(Computer, '@')[0]),
/// Computer has '\\', tostring(split(Computer, '\\')[1]),
/// Computer has '.', tostring(split(Computer, '.')[0]),
/// Computer
/// )
/// | extend Host_NTDomain = case(
/// Computer has '\\', tostring(split(Computer, '\\')[0]),
/// Computer has '.', tostring(split(Computer, '.')[-2]),
/// Computer
/// )
/// | extend Host_DnsDomain = case(
/// Computer has '\\', tostring(split(Computer, '\\')[0]),
/// Computer has '.', strcat_array(array_slice(split(Computer,'.'),-2,-1),'.'),
/// Computer
/// )
/// | where (Host_HostName =~ v_Host_Name and Host_NTDomain =~ v_Host_NTDomain)
/// or (Host_HostName =~ v_Host_Name and Host_DnsDomain =~ v_Host_DnsDomain)
/// or v_Host_AzureID =~ _ResourceId
/// or v_Host_OMSAgentID == SourceComputerId
/// | project TimeGenerated, EventID, Activity, Computer, TargetAccount, TargetUserName, TargetDomainName, TargetSid, SubjectUserName, SubjectUserSid, _ResourceId, SourceComputerId
/// | extend AddedBy = SubjectUserName
/// // Future support for Activities
/// | extend timestamp = TimeGenerated, HostCustomEntity = Computer, AccountCustomEntity = TargetAccount
/// };
/// GetAccountActions('{{Host_HostName}}', '{{Host_NTDomain}}', '{{Host_DnsDomain}}', '{{Host_AzureID}}', '{{Host_OMSAgentID}}')
///
/// | where EventID == 4726 """,
///     },
///     required_input_fields_sets=[
///         [
///             "Host_HostName",
///             "Host_NTDomain",
///         ],
///         [
///             "Host_HostName",
///             "Host_DnsDomain",
///         ],
///         ["Host_AzureID"],
///         ["Host_OMSAgentID"],
///     ],
///     resource_group_name="myRg",
///     title="An account was deleted on this host",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   activityCustomEntityQuery:
///     type: azure-native:securityinsights:ActivityCustomEntityQuery
///     properties:
///       content: On '{{Computer}}' the account '{{TargetAccount}}' was deleted by '{{AddedBy}}'
///       description: Account deleted on host
///       enabled: true
///       entitiesFilter:
///         Host_OsFamily:
///           - Windows
///       entityQueryId: 07da3cc8-c8ad-4710-a44e-334cdcb7882b
///       inputEntityType: Host
///       kind: Activity
///       queryDefinitions:
///         query: "let GetAccountActions = (v_Host_Name:string, v_Host_NTDomain:string, v_Host_DnsDomain:string, v_Host_AzureID:string, v_Host_OMSAgentID:string){\nSecurityEvent\n| where EventID in (4725, 4726, 4767, 4720, 4722, 4723, 4724)\n// parsing for Host to handle variety of conventions coming from data\n| extend Host_HostName = case(\nComputer has '@', tostring(split(Computer, '@')[0]),\nComputer has '\\\\', tostring(split(Computer, '\\\\')[1]),\nComputer has '.', tostring(split(Computer, '.')[0]),\nComputer\n)\n| extend Host_NTDomain = case(\nComputer has '\\\\', tostring(split(Computer, '\\\\')[0]), \nComputer has '.', tostring(split(Computer, '.')[-2]), \nComputer\n)\n| extend Host_DnsDomain = case(\nComputer has '\\\\', tostring(split(Computer, '\\\\')[0]), \nComputer has '.', strcat_array(array_slice(split(Computer,'.'),-2,-1),'.'), \nComputer\n)\n| where (Host_HostName =~ v_Host_Name and Host_NTDomain =~ v_Host_NTDomain) \nor (Host_HostName =~ v_Host_Name and Host_DnsDomain =~ v_Host_DnsDomain) \nor v_Host_AzureID =~ _ResourceId \nor v_Host_OMSAgentID == SourceComputerId\n| project TimeGenerated, EventID, Activity, Computer, TargetAccount, TargetUserName, TargetDomainName, TargetSid, SubjectUserName, SubjectUserSid, _ResourceId, SourceComputerId\n| extend AddedBy = SubjectUserName\n// Future support for Activities\n| extend timestamp = TimeGenerated, HostCustomEntity = Computer, AccountCustomEntity = TargetAccount\n};\nGetAccountActions('{{Host_HostName}}', '{{Host_NTDomain}}', '{{Host_DnsDomain}}', '{{Host_AzureID}}', '{{Host_OMSAgentID}}')\n \n| where EventID == 4726 "
///       requiredInputFieldsSets:
///         - - Host_HostName
///           - Host_NTDomain
///         - - Host_HostName
///           - Host_DnsDomain
///         - - Host_AzureID
///         - - Host_OMSAgentID
///       resourceGroupName: myRg
///       title: An account was deleted on this host
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
/// $ pulumi import azure-native:securityinsights:ActivityCustomEntityQuery 07da3cc8-c8ad-4710-a44e-334cdcb7882b /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/entityQueries/{entityQueryId}
/// ```
class ActivityCustomEntityQuery extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The entity query content to display in timeline
  late final pulumi.Output<String?> content;
  /// The time the activity was created
  late final pulumi.Output<String> createdTimeUtc;
  /// The entity query description
  late final pulumi.Output<String?> description;
  /// Determines whether this activity is enabled or disabled.
  late final pulumi.Output<bool?> enabled;
  /// The query applied only to entities matching to all filters
  late final pulumi.Output<Map<String, List<String>>?> entitiesFilter;
  /// Etag of the azure resource
  late final pulumi.Output<String?> etag;
  /// The type of the query's source entity
  late final pulumi.Output<String?> inputEntityType;
  /// The kind of the entity query
  /// Expected value is 'Activity'.
  late final pulumi.Output<String> kind;
  /// The last time the activity was updated
  late final pulumi.Output<String> lastModifiedTimeUtc;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The Activity query definitions
  late final pulumi.Output<ActivityEntityQueriesPropertiesResponseQueryDefinitions?> queryDefinitions;
  /// List of the fields of the source entity that are required to run the query
  late final pulumi.Output<List<Map<String, dynamic>>?> requiredInputFieldsSets;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The template id this activity was created from
  late final pulumi.Output<String?> templateName;
  /// The entity query title
  late final pulumi.Output<String?> title;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ActivityCustomEntityQuery].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ActivityCustomEntityQuery]. {@macro pulumi_securityinsights_activity_custom_entity_query_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ActivityCustomEntityQuery(
    String name, {
    ActivityCustomEntityQueryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:securityinsights:ActivityCustomEntityQuery',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    content = registerOutput<String?>('content');
    createdTimeUtc = registerOutput<String>('createdTimeUtc');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool?>('enabled');
    entitiesFilter = registerOutput<Map<String, List<String>>?>('entitiesFilter');
    etag = registerOutput<String?>('etag');
    inputEntityType = registerOutput<String?>('inputEntityType');
    kind = registerOutput<String>('kind');
    lastModifiedTimeUtc = registerOutput<String>('lastModifiedTimeUtc');
    this.name = registerOutput<String>('name');
    queryDefinitions = registerOutput<ActivityEntityQueriesPropertiesResponseQueryDefinitions?>('queryDefinitions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ActivityEntityQueriesPropertiesResponseQueryDefinitions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    requiredInputFieldsSets = registerOutput<List<Map<String, dynamic>>?>('requiredInputFieldsSets');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    templateName = registerOutput<String?>('templateName');
    title = registerOutput<String?>('title');
    type = registerOutput<String>('type');
  }
}
