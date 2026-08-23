import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_security_perimeter_logging_configuration_args.dart';
import 'nsp_logging_configuration_properties_response.dart';

/// The NSP logging configuration
///
/// Uses Azure REST API version 2024-06-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-06-01-preview.
///
/// Other available API versions: 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NspLoggingConfigurationPut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkSecurityPerimeterLoggingConfiguration = new AzureNative.Network.NetworkSecurityPerimeterLoggingConfiguration("networkSecurityPerimeterLoggingConfiguration", new()
///     {
///         LoggingConfigurationName = "instance",
///         NetworkSecurityPerimeterName = "nsp1",
///         Properties = new AzureNative.Network.Inputs.NspLoggingConfigurationPropertiesArgs
///         {
///             EnabledLogCategories = new[]
///             {
///                 "NspPublicInboundPerimeterRulesDenied",
///                 "NspPublicOutboundPerimeterRulesDenied",
///             },
///         },
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
/// 		_, err := network.NewNetworkSecurityPerimeterLoggingConfiguration(ctx, "networkSecurityPerimeterLoggingConfiguration", &network.NetworkSecurityPerimeterLoggingConfigurationArgs{
/// 			LoggingConfigurationName:     pulumi.String("instance"),
/// 			NetworkSecurityPerimeterName: pulumi.String("nsp1"),
/// 			Properties: &network.NspLoggingConfigurationPropertiesArgs{
/// 				EnabledLogCategories: pulumi.StringArray{
/// 					pulumi.String("NspPublicInboundPerimeterRulesDenied"),
/// 					pulumi.String("NspPublicOutboundPerimeterRulesDenied"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
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
/// resource "azure-native_network_networksecurityperimeterloggingconfiguration" "networkSecurityPerimeterLoggingConfiguration" {
///   logging_configuration_name      = "instance"
///   network_security_perimeter_name = "nsp1"
///   properties = {
///     enabled_log_categories = ["NspPublicInboundPerimeterRulesDenied", "NspPublicOutboundPerimeterRulesDenied"]
///   }
///   resource_group_name = "rg1"
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
/// import com.pulumi.azurenative.network.NetworkSecurityPerimeterLoggingConfiguration;
/// import com.pulumi.azurenative.network.NetworkSecurityPerimeterLoggingConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.NspLoggingConfigurationPropertiesArgs;
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
///         var networkSecurityPerimeterLoggingConfiguration = new NetworkSecurityPerimeterLoggingConfiguration("networkSecurityPerimeterLoggingConfiguration", NetworkSecurityPerimeterLoggingConfigurationArgs.builder()
///             .loggingConfigurationName("instance")
///             .networkSecurityPerimeterName("nsp1")
///             .properties(NspLoggingConfigurationPropertiesArgs.builder()
///                 .enabledLogCategories(
///                     "NspPublicInboundPerimeterRulesDenied",
///                     "NspPublicOutboundPerimeterRulesDenied")
///                 .build())
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
/// const networkSecurityPerimeterLoggingConfiguration = new azure_native.network.NetworkSecurityPerimeterLoggingConfiguration("networkSecurityPerimeterLoggingConfiguration", {
///     loggingConfigurationName: "instance",
///     networkSecurityPerimeterName: "nsp1",
///     properties: {
///         enabledLogCategories: [
///             "NspPublicInboundPerimeterRulesDenied",
///             "NspPublicOutboundPerimeterRulesDenied",
///         ],
///     },
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_security_perimeter_logging_configuration = azure_native.network.NetworkSecurityPerimeterLoggingConfiguration("networkSecurityPerimeterLoggingConfiguration",
///     logging_configuration_name="instance",
///     network_security_perimeter_name="nsp1",
///     properties={
///         "enabled_log_categories": [
///             "NspPublicInboundPerimeterRulesDenied",
///             "NspPublicOutboundPerimeterRulesDenied",
///         ],
///     },
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   networkSecurityPerimeterLoggingConfiguration:
///     type: azure-native:network:NetworkSecurityPerimeterLoggingConfiguration
///     properties:
///       loggingConfigurationName: instance
///       networkSecurityPerimeterName: nsp1
///       properties:
///         enabledLogCategories:
///           - NspPublicInboundPerimeterRulesDenied
///           - NspPublicOutboundPerimeterRulesDenied
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
/// $ pulumi import azure-native:network:NetworkSecurityPerimeterLoggingConfiguration instance /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityPerimeters/{networkSecurityPerimeterName}/loggingConfigurations/{loggingConfigurationName}
/// ```
class NetworkSecurityPerimeterLoggingConfiguration extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Properties of the NSP logging configuration.
  late final pulumi.Output<NspLoggingConfigurationPropertiesResponse> properties;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [NetworkSecurityPerimeterLoggingConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkSecurityPerimeterLoggingConfiguration]. {@macro pulumi_network_network_security_perimeter_logging_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkSecurityPerimeterLoggingConfiguration(
    String name, {
    NetworkSecurityPerimeterLoggingConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:NetworkSecurityPerimeterLoggingConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<NspLoggingConfigurationPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NspLoggingConfigurationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
