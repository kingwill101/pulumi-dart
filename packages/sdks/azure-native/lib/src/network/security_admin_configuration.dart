import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_admin_configuration_args.dart';
import 'system_data_response.dart';

/// Defines the security admin configuration
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2021-02-01-preview, 2022-01-01, 2022-02-01-preview, 2022-04-01-preview, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-01-01-preview, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create manual-mode security admin configuration
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var securityAdminConfiguration = new AzureNative.Network.SecurityAdminConfiguration("securityAdminConfiguration", new()
///     {
///         ConfigurationName = "myTestSecurityConfig",
///         Description = "A configuration which will update any network groups ip addresses at commit times.",
///         NetworkGroupAddressSpaceAggregationOption = AzureNative.Network.AddressSpaceAggregationOption.Manual,
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
/// 		_, err := network.NewSecurityAdminConfiguration(ctx, "securityAdminConfiguration", &network.SecurityAdminConfigurationArgs{
/// 			ConfigurationName: pulumi.String("myTestSecurityConfig"),
/// 			Description:       pulumi.String("A configuration which will update any network groups ip addresses at commit times."),
/// 			NetworkGroupAddressSpaceAggregationOption: pulumi.String(network.AddressSpaceAggregationOptionManual),
/// 			NetworkManagerName:                        pulumi.String("testNetworkManager"),
/// 			ResourceGroupName:                         pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.network.SecurityAdminConfiguration;
/// import com.pulumi.azurenative.network.SecurityAdminConfigurationArgs;
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
///         var securityAdminConfiguration = new SecurityAdminConfiguration("securityAdminConfiguration", SecurityAdminConfigurationArgs.builder()
///             .configurationName("myTestSecurityConfig")
///             .description("A configuration which will update any network groups ip addresses at commit times.")
///             .networkGroupAddressSpaceAggregationOption("Manual")
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
/// const securityAdminConfiguration = new azure_native.network.SecurityAdminConfiguration("securityAdminConfiguration", {
///     configurationName: "myTestSecurityConfig",
///     description: "A configuration which will update any network groups ip addresses at commit times.",
///     networkGroupAddressSpaceAggregationOption: azure_native.network.AddressSpaceAggregationOption.Manual,
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
/// security_admin_configuration = azure_native.network.SecurityAdminConfiguration("securityAdminConfiguration",
///     configuration_name="myTestSecurityConfig",
///     description="A configuration which will update any network groups ip addresses at commit times.",
///     network_group_address_space_aggregation_option=azure_native.network.AddressSpaceAggregationOption.MANUAL,
///     network_manager_name="testNetworkManager",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   securityAdminConfiguration:
///     type: azure-native:network:SecurityAdminConfiguration
///     properties:
///       configurationName: myTestSecurityConfig
///       description: A configuration which will update any network groups ip addresses at commit times.
///       networkGroupAddressSpaceAggregationOption: Manual
///       networkManagerName: testNetworkManager
///       resourceGroupName: rg1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create network manager security admin configuration
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var securityAdminConfiguration = new AzureNative.Network.SecurityAdminConfiguration("securityAdminConfiguration", new()
///     {
///         ApplyOnNetworkIntentPolicyBasedServices = new[]
///         {
///             AzureNative.Network.NetworkIntentPolicyBasedService.None,
///         },
///         ConfigurationName = "myTestSecurityConfig",
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
/// 		_, err := network.NewSecurityAdminConfiguration(ctx, "securityAdminConfiguration", &network.SecurityAdminConfigurationArgs{
/// 			ApplyOnNetworkIntentPolicyBasedServices: pulumi.StringArray{
/// 				pulumi.String(network.NetworkIntentPolicyBasedServiceNone),
/// 			},
/// 			ConfigurationName:  pulumi.String("myTestSecurityConfig"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.network.SecurityAdminConfiguration;
/// import com.pulumi.azurenative.network.SecurityAdminConfigurationArgs;
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
///         var securityAdminConfiguration = new SecurityAdminConfiguration("securityAdminConfiguration", SecurityAdminConfigurationArgs.builder()
///             .applyOnNetworkIntentPolicyBasedServices("None")
///             .configurationName("myTestSecurityConfig")
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
/// const securityAdminConfiguration = new azure_native.network.SecurityAdminConfiguration("securityAdminConfiguration", {
///     applyOnNetworkIntentPolicyBasedServices: [azure_native.network.NetworkIntentPolicyBasedService.None],
///     configurationName: "myTestSecurityConfig",
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
/// security_admin_configuration = azure_native.network.SecurityAdminConfiguration("securityAdminConfiguration",
///     apply_on_network_intent_policy_based_services=[azure_native.network.NetworkIntentPolicyBasedService.NONE],
///     configuration_name="myTestSecurityConfig",
///     description="A sample policy",
///     network_manager_name="testNetworkManager",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   securityAdminConfiguration:
///     type: azure-native:network:SecurityAdminConfiguration
///     properties:
///       applyOnNetworkIntentPolicyBasedServices:
///         - None
///       configurationName: myTestSecurityConfig
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
/// $ pulumi import azure-native:network:SecurityAdminConfiguration myTestSecurityConfig /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/securityAdminConfigurations/{configurationName}
/// ```
class SecurityAdminConfiguration extends pulumi.CustomResource {
  /// Enum list of network intent policy based services.
  late final pulumi.Output<List<String>?>
  applyOnNetworkIntentPolicyBasedServices;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// A description of the security configuration.
  late final pulumi.Output<String?> description;

  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// Determine update behavior for changes to network groups referenced within the rules in this configuration.
  late final pulumi.Output<String?> networkGroupAddressSpaceAggregationOption;

  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;

  /// Unique identifier for this resource.
  late final pulumi.Output<String> resourceGuid;

  /// The system metadata related to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [SecurityAdminConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityAdminConfiguration]. {@macro pulumi_network_security_admin_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityAdminConfiguration(
    String name, {
    SecurityAdminConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:SecurityAdminConfiguration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    applyOnNetworkIntentPolicyBasedServices = registerOutput<List<String>?>(
      'applyOnNetworkIntentPolicyBasedServices',
    );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    networkGroupAddressSpaceAggregationOption = registerOutput<String?>(
      'networkGroupAddressSpaceAggregationOption',
    );
    provisioningState = registerOutput<String>('provisioningState');
    resourceGuid = registerOutput<String>('resourceGuid');
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
    type = registerOutput<String>('type');
  }
}
