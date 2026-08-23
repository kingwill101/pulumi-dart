import 'package:pulumi/pulumi.dart' as pulumi;
import 'routing_configuration_args.dart';
import 'system_data_response.dart';

/// Defines the routing configuration
///
/// Uses Azure REST API version 2023-03-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create network manager routing configuration
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var routingConfiguration = new AzureNative.Network.RoutingConfiguration("routingConfiguration", new()
///     {
///         ConfigurationName = "myTestRoutingConfig",
///         Description = "A sample policy",
///         NetworkManagerName = "testNetworkManager",
///         ResourceGroupName = "rg1",
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewRoutingConfiguration(ctx, "routingConfiguration", &network.RoutingConfigurationArgs{
/// 			ConfigurationName:  pulumi.String("myTestRoutingConfig"),
/// 			Description:        pulumi.String("A sample policy"),
/// 			NetworkManagerName: pulumi.String("testNetworkManager"),
/// 			ResourceGroupName:  pulumi.String("rg1"),
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
/// resource "azure-native_network_routingconfiguration" "routingConfiguration" {
///   configuration_name   = "myTestRoutingConfig"
///   description          = "A sample policy"
///   network_manager_name = "testNetworkManager"
///   resource_group_name  = "rg1"
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
/// import com.pulumi.azurenative.network.RoutingConfiguration;
/// import com.pulumi.azurenative.network.RoutingConfigurationArgs;
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
///         var routingConfiguration = new RoutingConfiguration("routingConfiguration", RoutingConfigurationArgs.builder()
///             .configurationName("myTestRoutingConfig")
///             .description("A sample policy")
///             .networkManagerName("testNetworkManager")
///             .resourceGroupName("rg1")
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
/// const routingConfiguration = new azure_native.network.RoutingConfiguration("routingConfiguration", {
///     configurationName: "myTestRoutingConfig",
///     description: "A sample policy",
///     networkManagerName: "testNetworkManager",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// routing_configuration = azure_native.network.RoutingConfiguration("routingConfiguration",
///     configuration_name="myTestRoutingConfig",
///     description="A sample policy",
///     network_manager_name="testNetworkManager",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   routingConfiguration:
///     type: azure-native:network:RoutingConfiguration
///     properties:
///       configurationName: myTestRoutingConfig
///       description: A sample policy
///       networkManagerName: testNetworkManager
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:network:RoutingConfiguration myTestRoutingConfig /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/routingConfigurations/{configurationName}
/// ```
class RoutingConfigurationNetwork extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A description of the routing configuration.
  late final pulumi.Output<String?> description;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Unique identifier for this resource.
  late final pulumi.Output<String> resourceGuid;
  /// The system metadata related to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [RoutingConfigurationNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoutingConfigurationNetwork]. {@macro pulumi_network_routing_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoutingConfigurationNetwork(
    String name, {
    RoutingConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:RoutingConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    resourceGuid = registerOutput<String>('resourceGuid');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
