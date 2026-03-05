import 'package:pulumi/pulumi.dart' as pulumi;
import 'query_pack_args.dart';
import 'system_data_response.dart';

/// An Log Analytics QueryPack definition.
///
/// Uses Azure REST API version 2023-09-01. In version 2.x of the Azure Native provider, it used API version 2019-09-01.
///
/// Other available API versions: 2019-09-01, 2019-09-01-preview, 2025-02-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native operationalinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### QueryPackCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var queryPack = new AzureNative.OperationalInsights.QueryPack("queryPack", new()
///     {
///         Location = "South Central US",
///         QueryPackName = "my-querypack",
///         ResourceGroupName = "my-resource-group",
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
/// 		_, err := operationalinsights.NewQueryPack(ctx, "queryPack", &operationalinsights.QueryPackArgs{
/// 			Location:          pulumi.String("South Central US"),
/// 			QueryPackName:     pulumi.String("my-querypack"),
/// 			ResourceGroupName: pulumi.String("my-resource-group"),
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
/// import com.pulumi.azurenative.operationalinsights.QueryPack;
/// import com.pulumi.azurenative.operationalinsights.QueryPackArgs;
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
///         var queryPack = new QueryPack("queryPack", QueryPackArgs.builder()
///             .location("South Central US")
///             .queryPackName("my-querypack")
///             .resourceGroupName("my-resource-group")
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
/// const queryPack = new azure_native.operationalinsights.QueryPack("queryPack", {
///     location: "South Central US",
///     queryPackName: "my-querypack",
///     resourceGroupName: "my-resource-group",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// query_pack = azure_native.operationalinsights.QueryPack("queryPack",
///     location="South Central US",
///     query_pack_name="my-querypack",
///     resource_group_name="my-resource-group")
///
/// ```
///
/// ```yaml
/// resources:
///   queryPack:
///     type: azure-native:operationalinsights:QueryPack
///     properties:
///       location: South Central US
///       queryPackName: my-querypack
///       resourceGroupName: my-resource-group
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### QueryPackUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var queryPack = new AzureNative.OperationalInsights.QueryPack("queryPack", new()
///     {
///         Location = "South Central US",
///         QueryPackName = "my-querypack",
///         ResourceGroupName = "my-resource-group",
///         Tags =
///         {
///             { "Tag1", "Value1" },
///         },
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
/// 		_, err := operationalinsights.NewQueryPack(ctx, "queryPack", &operationalinsights.QueryPackArgs{
/// 			Location:          pulumi.String("South Central US"),
/// 			QueryPackName:     pulumi.String("my-querypack"),
/// 			ResourceGroupName: pulumi.String("my-resource-group"),
/// 			Tags: pulumi.StringMap{
/// 				"Tag1": pulumi.String("Value1"),
/// 			},
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
/// import com.pulumi.azurenative.operationalinsights.QueryPack;
/// import com.pulumi.azurenative.operationalinsights.QueryPackArgs;
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
///         var queryPack = new QueryPack("queryPack", QueryPackArgs.builder()
///             .location("South Central US")
///             .queryPackName("my-querypack")
///             .resourceGroupName("my-resource-group")
///             .tags(Map.of("Tag1", "Value1"))
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
/// const queryPack = new azure_native.operationalinsights.QueryPack("queryPack", {
///     location: "South Central US",
///     queryPackName: "my-querypack",
///     resourceGroupName: "my-resource-group",
///     tags: {
///         Tag1: "Value1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// query_pack = azure_native.operationalinsights.QueryPack("queryPack",
///     location="South Central US",
///     query_pack_name="my-querypack",
///     resource_group_name="my-resource-group",
///     tags={
///         "Tag1": "Value1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   queryPack:
///     type: azure-native:operationalinsights:QueryPack
///     properties:
///       location: South Central US
///       queryPackName: my-querypack
///       resourceGroupName: my-resource-group
///       tags:
///         Tag1: Value1
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
/// $ pulumi import azure-native:operationalinsights:QueryPack my-querypack /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/queryPacks/{queryPackName}
/// ```
class QueryPack extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Current state of this QueryPack: whether or not is has been provisioned within the resource group it is defined. Users cannot change this value but are able to read from it. Values will include Succeeded, Deploying, Canceled, and Failed.
  late final pulumi.Output<String> provisioningState;

  /// The unique ID of your application. This field cannot be changed.
  late final pulumi.Output<String> queryPackId;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creation Date for the Log Analytics QueryPack, in ISO 8601 format.
  late final pulumi.Output<String> timeCreated;

  /// Last modified date of the Log Analytics QueryPack, in ISO 8601 format.
  late final pulumi.Output<String> timeModified;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [QueryPack].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [QueryPack]. {@macro pulumi_operationalinsights_query_pack_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  QueryPack(
    String name, {
    QueryPackArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:operationalinsights:QueryPack',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    queryPackId = registerOutput<String>('queryPackId');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    timeCreated = registerOutput<String>('timeCreated');
    timeModified = registerOutput<String>('timeModified');
    type = registerOutput<String>('type');
  }
}
