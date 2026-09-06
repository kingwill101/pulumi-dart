import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_prefix_item_response.dart';
import 'system_data_response.dart';
import 'user_rule_args.dart';

/// Network security user rule.
///
/// Uses Azure REST API version 2022-04-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-04-01-preview.
///
/// Other available API versions: 2021-02-01-preview, 2022-02-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a default user rule
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var userRule = new AzureNative.Network.UserRule("userRule", new()
///     {
///         ConfigurationName = "myTestSecurityConfig",
///         NetworkManagerName = "testNetworkManager",
///         ResourceGroupName = "rg1",
///         RuleCollectionName = "testRuleCollection",
///         RuleName = "SampleDefaultUserRule",
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
/// 		_, err := network.NewUserRule(ctx, "userRule", &network.UserRuleArgs{
/// 			ConfigurationName:  pulumi.String("myTestSecurityConfig"),
/// 			NetworkManagerName: pulumi.String("testNetworkManager"),
/// 			ResourceGroupName:  pulumi.String("rg1"),
/// 			RuleCollectionName: pulumi.String("testRuleCollection"),
/// 			RuleName:           pulumi.String("SampleDefaultUserRule"),
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
/// resource "azure-native_network_userrule" "userRule" {
///   configuration_name   = "myTestSecurityConfig"
///   network_manager_name = "testNetworkManager"
///   resource_group_name  = "rg1"
///   rule_collection_name = "testRuleCollection"
///   rule_name            = "SampleDefaultUserRule"
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
/// import com.pulumi.azurenative.network.UserRule;
/// import com.pulumi.azurenative.network.UserRuleArgs;
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
///         var userRule = new UserRule("userRule", UserRuleArgs.builder()
///             .configurationName("myTestSecurityConfig")
///             .networkManagerName("testNetworkManager")
///             .resourceGroupName("rg1")
///             .ruleCollectionName("testRuleCollection")
///             .ruleName("SampleDefaultUserRule")
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
/// const userRule = new azure_native.network.UserRule("userRule", {
///     configurationName: "myTestSecurityConfig",
///     networkManagerName: "testNetworkManager",
///     resourceGroupName: "rg1",
///     ruleCollectionName: "testRuleCollection",
///     ruleName: "SampleDefaultUserRule",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// user_rule = azure_native.network.UserRule("userRule",
///     configuration_name="myTestSecurityConfig",
///     network_manager_name="testNetworkManager",
///     resource_group_name="rg1",
///     rule_collection_name="testRuleCollection",
///     rule_name="SampleDefaultUserRule")
///
/// ```
///
/// ```yaml
/// resources:
///   userRule:
///     type: azure-native:network:UserRule
///     properties:
///       configurationName: myTestSecurityConfig
///       networkManagerName: testNetworkManager
///       resourceGroupName: rg1
///       ruleCollectionName: testRuleCollection
///       ruleName: SampleDefaultUserRule
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a user rule
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var userRule = new AzureNative.Network.UserRule("userRule", new()
///     {
///         ConfigurationName = "myTestSecurityConfig",
///         Description = "Sample User Rule",
///         DestinationPortRanges = new[]
///         {
///             "22",
///         },
///         Destinations = new[]
///         {
///             new AzureNative.Network.Inputs.AddressPrefixItemArgs
///             {
///                 AddressPrefix = "*",
///                 AddressPrefixType = AzureNative.Network.AddressPrefixType.IPPrefix,
///             },
///         },
///         Direction = AzureNative.Network.SecurityConfigurationRuleDirection.Inbound,
///         Kind = "Custom",
///         NetworkManagerName = "testNetworkManager",
///         Protocol = AzureNative.Network.SecurityConfigurationRuleProtocol.Tcp,
///         ResourceGroupName = "rg1",
///         RuleCollectionName = "testRuleCollection",
///         RuleName = "SampleUserRule",
///         SourcePortRanges = new[]
///         {
///             "0-65535",
///         },
///         Sources = new[]
///         {
///             new AzureNative.Network.Inputs.AddressPrefixItemArgs
///             {
///                 AddressPrefix = "*",
///                 AddressPrefixType = AzureNative.Network.AddressPrefixType.IPPrefix,
///             },
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewUserRule(ctx, "userRule", &network.UserRuleArgs{
/// 			ConfigurationName: pulumi.String("myTestSecurityConfig"),
/// 			Description:       pulumi.String("Sample User Rule"),
/// 			DestinationPortRanges: pulumi.StringArray{
/// 				pulumi.String("22"),
/// 			},
/// 			Destinations: network.AddressPrefixItemArray{
/// 				&network.AddressPrefixItemArgs{
/// 					AddressPrefix:     pulumi.String("*"),
/// 					AddressPrefixType: pulumi.String(network.AddressPrefixTypeIPPrefix),
/// 				},
/// 			},
/// 			Direction:          pulumi.String(network.SecurityConfigurationRuleDirectionInbound),
/// 			Kind:               pulumi.String("Custom"),
/// 			NetworkManagerName: pulumi.String("testNetworkManager"),
/// 			Protocol:           pulumi.String(network.SecurityConfigurationRuleProtocolTcp),
/// 			ResourceGroupName:  pulumi.String("rg1"),
/// 			RuleCollectionName: pulumi.String("testRuleCollection"),
/// 			RuleName:           pulumi.String("SampleUserRule"),
/// 			SourcePortRanges: pulumi.StringArray{
/// 				pulumi.String("0-65535"),
/// 			},
/// 			Sources: network.AddressPrefixItemArray{
/// 				&network.AddressPrefixItemArgs{
/// 					AddressPrefix:     pulumi.String("*"),
/// 					AddressPrefixType: pulumi.String(network.AddressPrefixTypeIPPrefix),
/// 				},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_network_userrule" "userRule" {
///   configuration_name      = "myTestSecurityConfig"
///   description             = "Sample User Rule"
///   destination_port_ranges = ["22"]
///   destinations {
///     address_prefix      = "*"
///     address_prefix_type = "IPPrefix"
///   }
///   direction            = "Inbound"
///   kind                 = "Custom"
///   network_manager_name = "testNetworkManager"
///   protocol             = "Tcp"
///   resource_group_name  = "rg1"
///   rule_collection_name = "testRuleCollection"
///   rule_name            = "SampleUserRule"
///   source_port_ranges   = ["0-65535"]
///   sources {
///     address_prefix      = "*"
///     address_prefix_type = "IPPrefix"
///   }
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
/// import com.pulumi.azurenative.network.UserRule;
/// import com.pulumi.azurenative.network.UserRuleArgs;
/// import com.pulumi.azurenative.network.inputs.AddressPrefixItemArgs;
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
///         var userRule = new UserRule("userRule", UserRuleArgs.builder()
///             .configurationName("myTestSecurityConfig")
///             .description("Sample User Rule")
///             .destinationPortRanges("22")
///             .destinations(AddressPrefixItemArgs.builder()
///                 .addressPrefix("*")
///                 .addressPrefixType("IPPrefix")
///                 .build())
///             .direction("Inbound")
///             .kind("Custom")
///             .networkManagerName("testNetworkManager")
///             .protocol("Tcp")
///             .resourceGroupName("rg1")
///             .ruleCollectionName("testRuleCollection")
///             .ruleName("SampleUserRule")
///             .sourcePortRanges("0-65535")
///             .sources(AddressPrefixItemArgs.builder()
///                 .addressPrefix("*")
///                 .addressPrefixType("IPPrefix")
///                 .build())
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
/// const userRule = new azure_native.network.UserRule("userRule", {
///     configurationName: "myTestSecurityConfig",
///     description: "Sample User Rule",
///     destinationPortRanges: ["22"],
///     destinations: [{
///         addressPrefix: "*",
///         addressPrefixType: azure_native.network.AddressPrefixType.IPPrefix,
///     }],
///     direction: azure_native.network.SecurityConfigurationRuleDirection.Inbound,
///     kind: "Custom",
///     networkManagerName: "testNetworkManager",
///     protocol: azure_native.network.SecurityConfigurationRuleProtocol.Tcp,
///     resourceGroupName: "rg1",
///     ruleCollectionName: "testRuleCollection",
///     ruleName: "SampleUserRule",
///     sourcePortRanges: ["0-65535"],
///     sources: [{
///         addressPrefix: "*",
///         addressPrefixType: azure_native.network.AddressPrefixType.IPPrefix,
///     }],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// user_rule = azure_native.network.UserRule("userRule",
///     configuration_name="myTestSecurityConfig",
///     description="Sample User Rule",
///     destination_port_ranges=["22"],
///     destinations=[{
///         "address_prefix": "*",
///         "address_prefix_type": azure_native.network.AddressPrefixType.IP_PREFIX,
///     }],
///     direction=azure_native.network.SecurityConfigurationRuleDirection.INBOUND,
///     kind="Custom",
///     network_manager_name="testNetworkManager",
///     protocol=azure_native.network.SecurityConfigurationRuleProtocol.TCP,
///     resource_group_name="rg1",
///     rule_collection_name="testRuleCollection",
///     rule_name="SampleUserRule",
///     source_port_ranges=["0-65535"],
///     sources=[{
///         "address_prefix": "*",
///         "address_prefix_type": azure_native.network.AddressPrefixType.IP_PREFIX,
///     }])
///
/// ```
///
/// ```yaml
/// resources:
///   userRule:
///     type: azure-native:network:UserRule
///     properties:
///       configurationName: myTestSecurityConfig
///       description: Sample User Rule
///       destinationPortRanges:
///         - '22'
///       destinations:
///         - addressPrefix: '*'
///           addressPrefixType: IPPrefix
///       direction: Inbound
///       kind: Custom
///       networkManagerName: testNetworkManager
///       protocol: Tcp
///       resourceGroupName: rg1
///       ruleCollectionName: testRuleCollection
///       ruleName: SampleUserRule
///       sourcePortRanges:
///         - 0-65535
///       sources:
///         - addressPrefix: '*'
///           addressPrefixType: IPPrefix
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
/// $ pulumi import azure-native:network:UserRule SampleUserRule /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/securityUserConfigurations/{configurationName}/ruleCollections/{ruleCollectionName}/rules/{ruleName}
/// ```
class UserRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A description for this rule.
  late final pulumi.Output<String?> description;
  /// The destination port ranges.
  late final pulumi.Output<List<String>?> destinationPortRanges;
  /// The destination address prefixes. CIDR or destination IP ranges.
  late final pulumi.Output<List<AddressPrefixItemResponse>?> destinations;
  /// Indicates if the traffic matched against the rule in inbound or outbound.
  late final pulumi.Output<String> direction;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// Whether the rule is custom or default.
  /// Expected value is 'Custom'.
  late final pulumi.Output<String> kind;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Network protocol this rule applies to.
  late final pulumi.Output<String> protocol;
  /// The provisioning state of the security configuration user rule resource.
  late final pulumi.Output<String> provisioningState;
  /// The source port ranges.
  late final pulumi.Output<List<String>?> sourcePortRanges;
  /// The CIDR or source IP ranges.
  late final pulumi.Output<List<AddressPrefixItemResponse>?> sources;
  /// The system metadata related to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [UserRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserRule]. {@macro pulumi_network_user_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserRule(
    String name, {
    UserRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:UserRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    destinationPortRanges = registerOutput<List<String>?>('destinationPortRanges', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    destinations = registerOutput<List<AddressPrefixItemResponse>?>('destinations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AddressPrefixItemResponse>(guardedValue, (value) => AddressPrefixItemResponse.fromMap((value as Map).cast<String, dynamic>())); });
    direction = registerOutput<String>('direction');
    etag = registerOutput<String>('etag');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    protocol = registerOutput<String>('protocol');
    provisioningState = registerOutput<String>('provisioningState');
    sourcePortRanges = registerOutput<List<String>?>('sourcePortRanges', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    sources = registerOutput<List<AddressPrefixItemResponse>?>('sources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AddressPrefixItemResponse>(guardedValue, (value) => AddressPrefixItemResponse.fromMap((value as Map).cast<String, dynamic>())); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [UserRule] resource.
  UserRule.reference(String urn)
    : super(
        'azure-native:network:UserRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    destinationPortRanges = registerOutput<List<String>?>('destinationPortRanges', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    destinations = registerOutput<List<AddressPrefixItemResponse>?>('destinations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AddressPrefixItemResponse>(guardedValue, (value) => AddressPrefixItemResponse.fromMap((value as Map).cast<String, dynamic>())); });
    direction = registerOutput<String>('direction');
    etag = registerOutput<String>('etag');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    protocol = registerOutput<String>('protocol');
    provisioningState = registerOutput<String>('provisioningState');
    sourcePortRanges = registerOutput<List<String>?>('sourcePortRanges', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    sources = registerOutput<List<AddressPrefixItemResponse>?>('sources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AddressPrefixItemResponse>(guardedValue, (value) => AddressPrefixItemResponse.fromMap((value as Map).cast<String, dynamic>())); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
