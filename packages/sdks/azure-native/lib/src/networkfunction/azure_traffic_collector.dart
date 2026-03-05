import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_traffic_collector_args.dart';
import 'resource_reference_response.dart';
import 'tracked_resource_response_system_data.dart';

/// Azure Traffic Collector resource.
///
/// Uses Azure REST API version 2022-11-01. In version 2.x of the Azure Native provider, it used API version 2022-11-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a traffic collector
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var azureTrafficCollector = new AzureNative.NetworkFunction.AzureTrafficCollector("azureTrafficCollector", new()
///     {
///         AzureTrafficCollectorName = "atc",
///         Location = "West US",
///         ResourceGroupName = "rg1",
///         Tags =
///         {
///             { "key1", "value1" },
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
/// 	networkfunction "github.com/pulumi/pulumi-azure-native-sdk/networkfunction/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkfunction.NewAzureTrafficCollector(ctx, "azureTrafficCollector", &networkfunction.AzureTrafficCollectorArgs{
/// 			AzureTrafficCollectorName: pulumi.String("atc"),
/// 			Location:                  pulumi.String("West US"),
/// 			ResourceGroupName:         pulumi.String("rg1"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
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
/// import com.pulumi.azurenative.networkfunction.AzureTrafficCollector;
/// import com.pulumi.azurenative.networkfunction.AzureTrafficCollectorArgs;
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
///         var azureTrafficCollector = new AzureTrafficCollector("azureTrafficCollector", AzureTrafficCollectorArgs.builder()
///             .azureTrafficCollectorName("atc")
///             .location("West US")
///             .resourceGroupName("rg1")
///             .tags(Map.of("key1", "value1"))
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
/// const azureTrafficCollector = new azure_native.networkfunction.AzureTrafficCollector("azureTrafficCollector", {
///     azureTrafficCollectorName: "atc",
///     location: "West US",
///     resourceGroupName: "rg1",
///     tags: {
///         key1: "value1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// azure_traffic_collector = azure_native.networkfunction.AzureTrafficCollector("azureTrafficCollector",
///     azure_traffic_collector_name="atc",
///     location="West US",
///     resource_group_name="rg1",
///     tags={
///         "key1": "value1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   azureTrafficCollector:
///     type: azure-native:networkfunction:AzureTrafficCollector
///     properties:
///       azureTrafficCollectorName: atc
///       location: West US
///       resourceGroupName: rg1
///       tags:
///         key1: value1
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
/// $ pulumi import azure-native:networkfunction:AzureTrafficCollector atc /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetworkFunction/azureTrafficCollectors/{azureTrafficCollectorName}
/// ```
class AzureTrafficCollector extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Collector Policies for Azure Traffic Collector.
  late final pulumi.Output<List<Map<String, dynamic>>> collectorPolicies;

  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;

  /// Resource location.
  late final pulumi.Output<String> location;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// The provisioning state of the application rule collection resource.
  late final pulumi.Output<String> provisioningState;

  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<TrackedResourceResponseSystemData> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// The virtualHub to which the Azure Traffic Collector belongs.
  late final pulumi.Output<ResourceReferenceResponse?> virtualHub;

  /// Creates a new [AzureTrafficCollector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AzureTrafficCollector]. {@macro pulumi_networkfunction_azure_traffic_collector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AzureTrafficCollector(
    String name, {
    AzureTrafficCollectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:networkfunction:AzureTrafficCollector',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    collectorPolicies = registerOutput<List<Map<String, dynamic>>>(
      'collectorPolicies',
    );
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<TrackedResourceResponseSystemData>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TrackedResourceResponseSystemData.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    virtualHub = registerOutput<ResourceReferenceResponse?>(
      'virtualHub',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ResourceReferenceResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
