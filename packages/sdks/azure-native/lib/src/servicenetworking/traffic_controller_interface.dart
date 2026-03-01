import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_id_response.dart';
import 'security_policy_configurations_response.dart';
import 'system_data_response.dart';
import 'traffic_controller_interface_args.dart';

/// Concrete tracked resource types can be created by aliasing this type using a specific property type.
///
/// Uses Azure REST API version 2025-01-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-11-01, 2024-05-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicenetworking [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Put Traffic Controller
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var trafficControllerInterface = new AzureNative.ServiceNetworking.TrafficControllerInterface("trafficControllerInterface", new()
///     {
///         Location = "NorthCentralUS",
///         ResourceGroupName = "rg1",
///         Tags =
///         {
///             { "key1", "value1" },
///         },
///         TrafficControllerName = "tc1",
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
/// 	servicenetworking "github.com/pulumi/pulumi-azure-native-sdk/servicenetworking/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicenetworking.NewTrafficControllerInterface(ctx, "trafficControllerInterface", &servicenetworking.TrafficControllerInterfaceArgs{
/// 			Location:          pulumi.String("NorthCentralUS"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			TrafficControllerName: pulumi.String("tc1"),
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
/// import com.pulumi.azurenative.servicenetworking.TrafficControllerInterface;
/// import com.pulumi.azurenative.servicenetworking.TrafficControllerInterfaceArgs;
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
///         var trafficControllerInterface = new TrafficControllerInterface("trafficControllerInterface", TrafficControllerInterfaceArgs.builder()
///             .location("NorthCentralUS")
///             .resourceGroupName("rg1")
///             .tags(Map.of("key1", "value1"))
///             .trafficControllerName("tc1")
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
/// const trafficControllerInterface = new azure_native.servicenetworking.TrafficControllerInterface("trafficControllerInterface", {
///     location: "NorthCentralUS",
///     resourceGroupName: "rg1",
///     tags: {
///         key1: "value1",
///     },
///     trafficControllerName: "tc1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// traffic_controller_interface = azure_native.servicenetworking.TrafficControllerInterface("trafficControllerInterface",
///     location="NorthCentralUS",
///     resource_group_name="rg1",
///     tags={
///         "key1": "value1",
///     },
///     traffic_controller_name="tc1")
///
/// ```
///
/// ```yaml
/// resources:
///   trafficControllerInterface:
///     type: azure-native:servicenetworking:TrafficControllerInterface
///     properties:
///       location: NorthCentralUS
///       resourceGroupName: rg1
///       tags:
///         key1: value1
///       trafficControllerName: tc1
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
/// $ pulumi import azure-native:servicenetworking:TrafficControllerInterface tc1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceNetworking/trafficControllers/{trafficControllerName}
/// ```
class TrafficControllerInterface extends pulumi.CustomResource {
  /// Associations References List
  late final pulumi.Output<List<ResourceIdResponse>> associations;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Configuration Endpoints.
  late final pulumi.Output<List<String>> configurationEndpoints;
  /// Frontends References List
  late final pulumi.Output<List<ResourceIdResponse>> frontends;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;
  /// Security Policies References List
  late final pulumi.Output<List<ResourceIdResponse>> securityPolicies;
  /// Security Policy Configuration
  late final pulumi.Output<SecurityPolicyConfigurationsResponse?> securityPolicyConfigurations;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [TrafficControllerInterface].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TrafficControllerInterface]. {@macro pulumi_servicenetworking_traffic_controller_interface_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TrafficControllerInterface(
    String name, {
    TrafficControllerInterfaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:servicenetworking:TrafficControllerInterface',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.associations = registerOutput<List<ResourceIdResponse>>('associations');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.configurationEndpoints = registerOutput<List<String>>('configurationEndpoints');
    this.frontends = registerOutput<List<ResourceIdResponse>>('frontends');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.securityPolicies = registerOutput<List<ResourceIdResponse>>('securityPolicies');
    this.securityPolicyConfigurations = registerOutput<SecurityPolicyConfigurationsResponse?>('securityPolicyConfigurations');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
