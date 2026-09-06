import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_args.dart';

/// Datasources under OMS Workspace.
///
/// Uses Azure REST API version 2023-09-01. In version 2.x of the Azure Native provider, it used API version 2020-08-01.
///
/// Other available API versions: 2015-11-01-preview, 2020-03-01-preview, 2020-08-01, 2025-02-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native operationalinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DataSourcesCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataSource = new AzureNative.OperationalInsights.DataSource("dataSource", new()
///     {
///         DataSourceName = "AzTestDS774",
///         Kind = AzureNative.OperationalInsights.DataSourceKind.AzureActivityLog,
///         Properties = new Dictionary<string, object?>
///         {
///             ["LinkedResourceId"] = "/subscriptions/00000000-0000-0000-0000-00000000000/providers/microsoft.insights/eventtypes/management",
///         },
///         ResourceGroupName = "OIAutoRest5123",
///         WorkspaceName = "AzTest9724",
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
/// 		_, err := operationalinsights.NewDataSource(ctx, "dataSource", &operationalinsights.DataSourceArgs{
/// 			DataSourceName: pulumi.String("AzTestDS774"),
/// 			Kind:           pulumi.String(operationalinsights.DataSourceKindAzureActivityLog),
/// 			Properties: pulumi.Any(map[string]interface{}{
/// 				"LinkedResourceId": "/subscriptions/00000000-0000-0000-0000-00000000000/providers/microsoft.insights/eventtypes/management",
/// 			}),
/// 			ResourceGroupName: pulumi.String("OIAutoRest5123"),
/// 			WorkspaceName:     pulumi.String("AzTest9724"),
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
/// resource "azure-native_operationalinsights_datasource" "dataSource" {
///   data_source_name = "AzTestDS774"
///   kind             = "AzureActivityLog"
///   properties = {
///     "LinkedResourceId" = "/subscriptions/00000000-0000-0000-0000-00000000000/providers/microsoft.insights/eventtypes/management"
///   }
///   resource_group_name = "OIAutoRest5123"
///   workspace_name      = "AzTest9724"
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
/// import com.pulumi.azurenative.operationalinsights.DataSource;
/// import com.pulumi.azurenative.operationalinsights.DataSourceArgs;
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
///         var dataSource = new DataSource("dataSource", DataSourceArgs.builder()
///             .dataSourceName("AzTestDS774")
///             .kind("AzureActivityLog")
///             .properties(Map.of("LinkedResourceId", "/subscriptions/00000000-0000-0000-0000-00000000000/providers/microsoft.insights/eventtypes/management"))
///             .resourceGroupName("OIAutoRest5123")
///             .workspaceName("AzTest9724")
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
/// const dataSource = new azure_native.operationalinsights.DataSource("dataSource", {
///     dataSourceName: "AzTestDS774",
///     kind: azure_native.operationalinsights.DataSourceKind.AzureActivityLog,
///     properties: {
///         LinkedResourceId: "/subscriptions/00000000-0000-0000-0000-00000000000/providers/microsoft.insights/eventtypes/management",
///     },
///     resourceGroupName: "OIAutoRest5123",
///     workspaceName: "AzTest9724",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// data_source = azure_native.operationalinsights.DataSource("dataSource",
///     data_source_name="AzTestDS774",
///     kind=azure_native.operationalinsights.DataSourceKind.AZURE_ACTIVITY_LOG,
///     properties={
///         "LinkedResourceId": "/subscriptions/00000000-0000-0000-0000-00000000000/providers/microsoft.insights/eventtypes/management",
///     },
///     resource_group_name="OIAutoRest5123",
///     workspace_name="AzTest9724")
///
/// ```
///
/// ```yaml
/// resources:
///   dataSource:
///     type: azure-native:operationalinsights:DataSource
///     properties:
///       dataSourceName: AzTestDS774
///       kind: AzureActivityLog
///       properties:
///         LinkedResourceId: /subscriptions/00000000-0000-0000-0000-00000000000/providers/microsoft.insights/eventtypes/management
///       resourceGroupName: OIAutoRest5123
///       workspaceName: AzTest9724
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
/// $ pulumi import azure-native:operationalinsights:DataSource AzTestDS774 /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/dataSources/{dataSourceName}
/// ```
class DataSource extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The ETag of the data source.
  late final pulumi.Output<String?> etag;
  /// The kind of the DataSource.
  late final pulumi.Output<String> kind;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The data source properties in raw json format, each kind of data source have it's own schema.
  late final pulumi.Output<dynamic> properties;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DataSource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataSource]. {@macro pulumi_operationalinsights_data_source_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataSource(
    String name, {
    DataSourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:operationalinsights:DataSource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    properties = registerOutput<dynamic>('properties');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [DataSource] resource.
  DataSource.reference(String urn)
    : super(
        'azure-native:operationalinsights:DataSource',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    properties = registerOutput<dynamic>('properties');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
