import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_response.dart';
import 'system_data_response.dart';
import 'workspace_args.dart';
import 'workspace_capping_response.dart';
import 'workspace_features_response.dart';
import 'workspace_sku_response.dart';

/// The top level Workspace resource container.
///
/// Uses Azure REST API version 2023-09-01. In version 2.x of the Azure Native provider, it used API version 2022-10-01.
///
/// Other available API versions: 2015-11-01-preview, 2020-03-01-preview, 2020-08-01, 2020-10-01, 2021-06-01, 2021-12-01-preview, 2022-10-01, 2025-02-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native operationalinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### WorkspacesCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspace = new AzureNative.OperationalInsights.Workspace("workspace", new()
///     {
///         Location = "australiasoutheast",
///         ResourceGroupName = "oiautorest6685",
///         RetentionInDays = 30,
///         Sku = new AzureNative.OperationalInsights.Inputs.WorkspaceSkuArgs
///         {
///             Name = AzureNative.OperationalInsights.WorkspaceSkuNameEnum.PerGB2018,
///         },
///         Tags =
///         {
///             { "tag1", "val1" },
///         },
///         WorkspaceName = "oiautorest6685",
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
/// 	operationalinsights "github.com/pulumi/pulumi-azure-native-sdk/operationalinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := operationalinsights.NewWorkspace(ctx, "workspace", &operationalinsights.WorkspaceArgs{
/// 			Location:          pulumi.String("australiasoutheast"),
/// 			ResourceGroupName: pulumi.String("oiautorest6685"),
/// 			RetentionInDays:   pulumi.Int(30),
/// 			Sku: &operationalinsights.WorkspaceSkuArgs{
/// 				Name: pulumi.String(operationalinsights.WorkspaceSkuNameEnumPerGB2018),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("val1"),
/// 			},
/// 			WorkspaceName: pulumi.String("oiautorest6685"),
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
/// import com.pulumi.azurenative.operationalinsights.Workspace;
/// import com.pulumi.azurenative.operationalinsights.WorkspaceArgs;
/// import com.pulumi.azurenative.operationalinsights.inputs.WorkspaceSkuArgs;
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
///         var workspace = new Workspace("workspace", WorkspaceArgs.builder()
///             .location("australiasoutheast")
///             .resourceGroupName("oiautorest6685")
///             .retentionInDays(30)
///             .sku(WorkspaceSkuArgs.builder()
///                 .name("PerGB2018")
///                 .build())
///             .tags(Map.of("tag1", "val1"))
///             .workspaceName("oiautorest6685")
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
/// const workspace = new azure_native.operationalinsights.Workspace("workspace", {
///     location: "australiasoutheast",
///     resourceGroupName: "oiautorest6685",
///     retentionInDays: 30,
///     sku: {
///         name: azure_native.operationalinsights.WorkspaceSkuNameEnum.PerGB2018,
///     },
///     tags: {
///         tag1: "val1",
///     },
///     workspaceName: "oiautorest6685",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace = azure_native.operationalinsights.Workspace("workspace",
///     location="australiasoutheast",
///     resource_group_name="oiautorest6685",
///     retention_in_days=30,
///     sku={
///         "name": azure_native.operationalinsights.WorkspaceSkuNameEnum.PER_GB2018,
///     },
///     tags={
///         "tag1": "val1",
///     },
///     workspace_name="oiautorest6685")
///
/// ```
///
/// ```yaml
/// resources:
///   workspace:
///     type: azure-native:operationalinsights:Workspace
///     properties:
///       location: australiasoutheast
///       resourceGroupName: oiautorest6685
///       retentionInDays: 30
///       sku:
///         name: PerGB2018
///       tags:
///         tag1: val1
///       workspaceName: oiautorest6685
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
/// $ pulumi import azure-native:operationalinsights:Workspace AzTest2170 /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}
/// ```
class Workspace extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Workspace creation date.
  late final pulumi.Output<String> createdDate;
  /// This is a read-only property. Represents the ID associated with the workspace.
  late final pulumi.Output<String> customerId;
  /// The resource ID of the default Data Collection Rule to use for this workspace. Expected format is - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Insights/dataCollectionRules/{dcrName}.
  late final pulumi.Output<String?> defaultDataCollectionRuleResourceId;
  /// The etag of the workspace.
  late final pulumi.Output<String?> etag;
  /// Workspace features.
  late final pulumi.Output<WorkspaceFeaturesResponse?> features;
  /// Indicates whether customer managed storage is mandatory for query management.
  late final pulumi.Output<bool?> forceCmkForQuery;
  /// The identity of the resource.
  late final pulumi.Output<IdentityResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Workspace modification date.
  late final pulumi.Output<String> modifiedDate;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// List of linked private link scope resources.
  late final pulumi.Output<List<Map<String, dynamic>>> privateLinkScopedResources;
  /// The provisioning state of the workspace.
  late final pulumi.Output<String> provisioningState;
  /// The network access type for accessing Log Analytics ingestion.
  late final pulumi.Output<String?> publicNetworkAccessForIngestion;
  /// The network access type for accessing Log Analytics query.
  late final pulumi.Output<String?> publicNetworkAccessForQuery;
  /// The workspace data retention in days. Allowed values are per pricing plan. See pricing tiers documentation for details.
  late final pulumi.Output<int?> retentionInDays;
  /// The SKU of the workspace.
  late final pulumi.Output<WorkspaceSkuResponse?> sku;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The daily volume cap for ingestion.
  late final pulumi.Output<WorkspaceCappingResponse?> workspaceCapping;

  /// Creates a new [Workspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workspace]. {@macro pulumi_operationalinsights_workspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workspace(
    String name, {
    WorkspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:operationalinsights:Workspace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdDate = registerOutput<String>('createdDate');
    customerId = registerOutput<String>('customerId');
    defaultDataCollectionRuleResourceId = registerOutput<String?>('defaultDataCollectionRuleResourceId');
    etag = registerOutput<String?>('etag');
    features = registerOutput<WorkspaceFeaturesResponse?>('features', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkspaceFeaturesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    forceCmkForQuery = registerOutput<bool?>('forceCmkForQuery');
    identity = registerOutput<IdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    modifiedDate = registerOutput<String>('modifiedDate');
    this.name = registerOutput<String>('name');
    privateLinkScopedResources = registerOutput<List<Map<String, dynamic>>>('privateLinkScopedResources');
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkAccessForIngestion = registerOutput<String?>('publicNetworkAccessForIngestion');
    publicNetworkAccessForQuery = registerOutput<String?>('publicNetworkAccessForQuery');
    retentionInDays = registerOutput<int?>('retentionInDays');
    sku = registerOutput<WorkspaceSkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkspaceSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    workspaceCapping = registerOutput<WorkspaceCappingResponse?>('workspaceCapping', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkspaceCappingResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
