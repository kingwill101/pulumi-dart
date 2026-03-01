import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_network_rule_set_args.dart';
import 'nwrule_set_ip_rules_response.dart';
import 'nwrule_set_virtual_network_rules_response.dart';
import 'system_data_response.dart';

/// Description of NetworkRuleSet resource.
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2022-01-01-preview.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2025-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicebus [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NameSpaceNetworkRuleSetCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var namespaceNetworkRuleSet = new AzureNative.ServiceBus.NamespaceNetworkRuleSet("namespaceNetworkRuleSet", new()
///     {
///         DefaultAction = AzureNative.ServiceBus.DefaultAction.Deny,
///         IpRules = new[]
///         {
///             new AzureNative.ServiceBus.Inputs.NWRuleSetIpRulesArgs
///             {
///                 Action = AzureNative.ServiceBus.NetworkRuleIPAction.Allow,
///                 IpMask = "1.1.1.1",
///             },
///             new AzureNative.ServiceBus.Inputs.NWRuleSetIpRulesArgs
///             {
///                 Action = AzureNative.ServiceBus.NetworkRuleIPAction.Allow,
///                 IpMask = "1.1.1.2",
///             },
///             new AzureNative.ServiceBus.Inputs.NWRuleSetIpRulesArgs
///             {
///                 Action = AzureNative.ServiceBus.NetworkRuleIPAction.Allow,
///                 IpMask = "1.1.1.3",
///             },
///             new AzureNative.ServiceBus.Inputs.NWRuleSetIpRulesArgs
///             {
///                 Action = AzureNative.ServiceBus.NetworkRuleIPAction.Allow,
///                 IpMask = "1.1.1.4",
///             },
///             new AzureNative.ServiceBus.Inputs.NWRuleSetIpRulesArgs
///             {
///                 Action = AzureNative.ServiceBus.NetworkRuleIPAction.Allow,
///                 IpMask = "1.1.1.5",
///             },
///         },
///         NamespaceName = "sdk-Namespace-6019",
///         ResourceGroupName = "ResourceGroup",
///         VirtualNetworkRules = new[]
///         {
///             new AzureNative.ServiceBus.Inputs.NWRuleSetVirtualNetworkRulesArgs
///             {
///                 IgnoreMissingVnetServiceEndpoint = true,
///                 Subnet = new AzureNative.ServiceBus.Inputs.SubnetArgs
///                 {
///                     Id = "/subscriptions/854d368f-1828-428f-8f3c-f2affa9b2f7d/resourcegroups/alitest/providers/Microsoft.Network/virtualNetworks/myvn/subnets/subnet2",
///                 },
///             },
///             new AzureNative.ServiceBus.Inputs.NWRuleSetVirtualNetworkRulesArgs
///             {
///                 IgnoreMissingVnetServiceEndpoint = false,
///                 Subnet = new AzureNative.ServiceBus.Inputs.SubnetArgs
///                 {
///                     Id = "/subscriptions/854d368f-1828-428f-8f3c-f2affa9b2f7d/resourcegroups/alitest/providers/Microsoft.Network/virtualNetworks/myvn/subnets/subnet3",
///                 },
///             },
///             new AzureNative.ServiceBus.Inputs.NWRuleSetVirtualNetworkRulesArgs
///             {
///                 IgnoreMissingVnetServiceEndpoint = false,
///                 Subnet = new AzureNative.ServiceBus.Inputs.SubnetArgs
///                 {
///                     Id = "/subscriptions/854d368f-1828-428f-8f3c-f2affa9b2f7d/resourcegroups/alitest/providers/Microsoft.Network/virtualNetworks/myvn/subnets/subnet6",
///                 },
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
/// 	servicebus "github.com/pulumi/pulumi-azure-native-sdk/servicebus/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicebus.NewNamespaceNetworkRuleSet(ctx, "namespaceNetworkRuleSet", &servicebus.NamespaceNetworkRuleSetArgs{
/// 			DefaultAction: pulumi.String(servicebus.DefaultActionDeny),
/// 			IpRules: servicebus.NWRuleSetIpRulesArray{
/// 				&servicebus.NWRuleSetIpRulesArgs{
/// 					Action: pulumi.String(servicebus.NetworkRuleIPActionAllow),
/// 					IpMask: pulumi.String("1.1.1.1"),
/// 				},
/// 				&servicebus.NWRuleSetIpRulesArgs{
/// 					Action: pulumi.String(servicebus.NetworkRuleIPActionAllow),
/// 					IpMask: pulumi.String("1.1.1.2"),
/// 				},
/// 				&servicebus.NWRuleSetIpRulesArgs{
/// 					Action: pulumi.String(servicebus.NetworkRuleIPActionAllow),
/// 					IpMask: pulumi.String("1.1.1.3"),
/// 				},
/// 				&servicebus.NWRuleSetIpRulesArgs{
/// 					Action: pulumi.String(servicebus.NetworkRuleIPActionAllow),
/// 					IpMask: pulumi.String("1.1.1.4"),
/// 				},
/// 				&servicebus.NWRuleSetIpRulesArgs{
/// 					Action: pulumi.String(servicebus.NetworkRuleIPActionAllow),
/// 					IpMask: pulumi.String("1.1.1.5"),
/// 				},
/// 			},
/// 			NamespaceName:     pulumi.String("sdk-Namespace-6019"),
/// 			ResourceGroupName: pulumi.String("ResourceGroup"),
/// 			VirtualNetworkRules: servicebus.NWRuleSetVirtualNetworkRulesArray{
/// 				&servicebus.NWRuleSetVirtualNetworkRulesArgs{
/// 					IgnoreMissingVnetServiceEndpoint: pulumi.Bool(true),
/// 					Subnet: &servicebus.SubnetArgs{
/// 						Id: pulumi.String("/subscriptions/854d368f-1828-428f-8f3c-f2affa9b2f7d/resourcegroups/alitest/providers/Microsoft.Network/virtualNetworks/myvn/subnets/subnet2"),
/// 					},
/// 				},
/// 				&servicebus.NWRuleSetVirtualNetworkRulesArgs{
/// 					IgnoreMissingVnetServiceEndpoint: pulumi.Bool(false),
/// 					Subnet: &servicebus.SubnetArgs{
/// 						Id: pulumi.String("/subscriptions/854d368f-1828-428f-8f3c-f2affa9b2f7d/resourcegroups/alitest/providers/Microsoft.Network/virtualNetworks/myvn/subnets/subnet3"),
/// 					},
/// 				},
/// 				&servicebus.NWRuleSetVirtualNetworkRulesArgs{
/// 					IgnoreMissingVnetServiceEndpoint: pulumi.Bool(false),
/// 					Subnet: &servicebus.SubnetArgs{
/// 						Id: pulumi.String("/subscriptions/854d368f-1828-428f-8f3c-f2affa9b2f7d/resourcegroups/alitest/providers/Microsoft.Network/virtualNetworks/myvn/subnets/subnet6"),
/// 					},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.servicebus.NamespaceNetworkRuleSet;
/// import com.pulumi.azurenative.servicebus.NamespaceNetworkRuleSetArgs;
/// import com.pulumi.azurenative.servicebus.inputs.NWRuleSetIpRulesArgs;
/// import com.pulumi.azurenative.servicebus.inputs.NWRuleSetVirtualNetworkRulesArgs;
/// import com.pulumi.azurenative.servicebus.inputs.SubnetArgs;
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
///         var namespaceNetworkRuleSet = new NamespaceNetworkRuleSet("namespaceNetworkRuleSet", NamespaceNetworkRuleSetArgs.builder()
///             .defaultAction("Deny")
///             .ipRules(
///                 NWRuleSetIpRulesArgs.builder()
///                     .action("Allow")
///                     .ipMask("1.1.1.1")
///                     .build(),
///                 NWRuleSetIpRulesArgs.builder()
///                     .action("Allow")
///                     .ipMask("1.1.1.2")
///                     .build(),
///                 NWRuleSetIpRulesArgs.builder()
///                     .action("Allow")
///                     .ipMask("1.1.1.3")
///                     .build(),
///                 NWRuleSetIpRulesArgs.builder()
///                     .action("Allow")
///                     .ipMask("1.1.1.4")
///                     .build(),
///                 NWRuleSetIpRulesArgs.builder()
///                     .action("Allow")
///                     .ipMask("1.1.1.5")
///                     .build())
///             .namespaceName("sdk-Namespace-6019")
///             .resourceGroupName("ResourceGroup")
///             .virtualNetworkRules(
///                 NWRuleSetVirtualNetworkRulesArgs.builder()
///                     .ignoreMissingVnetServiceEndpoint(true)
///                     .subnet(SubnetArgs.builder()
///                         .id("/subscriptions/854d368f-1828-428f-8f3c-f2affa9b2f7d/resourcegroups/alitest/providers/Microsoft.Network/virtualNetworks/myvn/subnets/subnet2")
///                         .build())
///                     .build(),
///                 NWRuleSetVirtualNetworkRulesArgs.builder()
///                     .ignoreMissingVnetServiceEndpoint(false)
///                     .subnet(SubnetArgs.builder()
///                         .id("/subscriptions/854d368f-1828-428f-8f3c-f2affa9b2f7d/resourcegroups/alitest/providers/Microsoft.Network/virtualNetworks/myvn/subnets/subnet3")
///                         .build())
///                     .build(),
///                 NWRuleSetVirtualNetworkRulesArgs.builder()
///                     .ignoreMissingVnetServiceEndpoint(false)
///                     .subnet(SubnetArgs.builder()
///                         .id("/subscriptions/854d368f-1828-428f-8f3c-f2affa9b2f7d/resourcegroups/alitest/providers/Microsoft.Network/virtualNetworks/myvn/subnets/subnet6")
///                         .build())
///                     .build())
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
/// const namespaceNetworkRuleSet = new azure_native.servicebus.NamespaceNetworkRuleSet("namespaceNetworkRuleSet", {
///     defaultAction: azure_native.servicebus.DefaultAction.Deny,
///     ipRules: [
///         {
///             action: azure_native.servicebus.NetworkRuleIPAction.Allow,
///             ipMask: "1.1.1.1",
///         },
///         {
///             action: azure_native.servicebus.NetworkRuleIPAction.Allow,
///             ipMask: "1.1.1.2",
///         },
///         {
///             action: azure_native.servicebus.NetworkRuleIPAction.Allow,
///             ipMask: "1.1.1.3",
///         },
///         {
///             action: azure_native.servicebus.NetworkRuleIPAction.Allow,
///             ipMask: "1.1.1.4",
///         },
///         {
///             action: azure_native.servicebus.NetworkRuleIPAction.Allow,
///             ipMask: "1.1.1.5",
///         },
///     ],
///     namespaceName: "sdk-Namespace-6019",
///     resourceGroupName: "ResourceGroup",
///     virtualNetworkRules: [
///         {
///             ignoreMissingVnetServiceEndpoint: true,
///             subnet: {
///                 id: "/subscriptions/854d368f-1828-428f-8f3c-f2affa9b2f7d/resourcegroups/alitest/providers/Microsoft.Network/virtualNetworks/myvn/subnets/subnet2",
///             },
///         },
///         {
///             ignoreMissingVnetServiceEndpoint: false,
///             subnet: {
///                 id: "/subscriptions/854d368f-1828-428f-8f3c-f2affa9b2f7d/resourcegroups/alitest/providers/Microsoft.Network/virtualNetworks/myvn/subnets/subnet3",
///             },
///         },
///         {
///             ignoreMissingVnetServiceEndpoint: false,
///             subnet: {
///                 id: "/subscriptions/854d368f-1828-428f-8f3c-f2affa9b2f7d/resourcegroups/alitest/providers/Microsoft.Network/virtualNetworks/myvn/subnets/subnet6",
///             },
///         },
///     ],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// namespace_network_rule_set = azure_native.servicebus.NamespaceNetworkRuleSet("namespaceNetworkRuleSet",
///     default_action=azure_native.servicebus.DefaultAction.DENY,
///     ip_rules=[
///         {
///             "action": azure_native.servicebus.NetworkRuleIPAction.ALLOW,
///             "ip_mask": "1.1.1.1",
///         },
///         {
///             "action": azure_native.servicebus.NetworkRuleIPAction.ALLOW,
///             "ip_mask": "1.1.1.2",
///         },
///         {
///             "action": azure_native.servicebus.NetworkRuleIPAction.ALLOW,
///             "ip_mask": "1.1.1.3",
///         },
///         {
///             "action": azure_native.servicebus.NetworkRuleIPAction.ALLOW,
///             "ip_mask": "1.1.1.4",
///         },
///         {
///             "action": azure_native.servicebus.NetworkRuleIPAction.ALLOW,
///             "ip_mask": "1.1.1.5",
///         },
///     ],
///     namespace_name="sdk-Namespace-6019",
///     resource_group_name="ResourceGroup",
///     virtual_network_rules=[
///         {
///             "ignore_missing_vnet_service_endpoint": True,
///             "subnet": {
///                 "id": "/subscriptions/854d368f-1828-428f-8f3c-f2affa9b2f7d/resourcegroups/alitest/providers/Microsoft.Network/virtualNetworks/myvn/subnets/subnet2",
///             },
///         },
///         {
///             "ignore_missing_vnet_service_endpoint": False,
///             "subnet": {
///                 "id": "/subscriptions/854d368f-1828-428f-8f3c-f2affa9b2f7d/resourcegroups/alitest/providers/Microsoft.Network/virtualNetworks/myvn/subnets/subnet3",
///             },
///         },
///         {
///             "ignore_missing_vnet_service_endpoint": False,
///             "subnet": {
///                 "id": "/subscriptions/854d368f-1828-428f-8f3c-f2affa9b2f7d/resourcegroups/alitest/providers/Microsoft.Network/virtualNetworks/myvn/subnets/subnet6",
///             },
///         },
///     ])
///
/// ```
///
/// ```yaml
/// resources:
///   namespaceNetworkRuleSet:
///     type: azure-native:servicebus:NamespaceNetworkRuleSet
///     properties:
///       defaultAction: Deny
///       ipRules:
///         - action: Allow
///           ipMask: 1.1.1.1
///         - action: Allow
///           ipMask: 1.1.1.2
///         - action: Allow
///           ipMask: 1.1.1.3
///         - action: Allow
///           ipMask: 1.1.1.4
///         - action: Allow
///           ipMask: 1.1.1.5
///       namespaceName: sdk-Namespace-6019
///       resourceGroupName: ResourceGroup
///       virtualNetworkRules:
///         - ignoreMissingVnetServiceEndpoint: true
///           subnet:
///             id: /subscriptions/854d368f-1828-428f-8f3c-f2affa9b2f7d/resourcegroups/alitest/providers/Microsoft.Network/virtualNetworks/myvn/subnets/subnet2
///         - ignoreMissingVnetServiceEndpoint: false
///           subnet:
///             id: /subscriptions/854d368f-1828-428f-8f3c-f2affa9b2f7d/resourcegroups/alitest/providers/Microsoft.Network/virtualNetworks/myvn/subnets/subnet3
///         - ignoreMissingVnetServiceEndpoint: false
///           subnet:
///             id: /subscriptions/854d368f-1828-428f-8f3c-f2affa9b2f7d/resourcegroups/alitest/providers/Microsoft.Network/virtualNetworks/myvn/subnets/subnet6
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
/// $ pulumi import azure-native:servicebus:NamespaceNetworkRuleSet default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}/networkRuleSets/default
/// ```
class NamespaceNetworkRuleSet extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Default Action for Network Rule Set
  late final pulumi.Output<String?> defaultAction;
  /// List of IpRules
  late final pulumi.Output<List<NWRuleSetIpRulesResponse>?> ipRules;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// This determines if traffic is allowed over public network. By default it is enabled.
  late final pulumi.Output<String?> publicNetworkAccess;
  /// The system meta data relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Value that indicates whether Trusted Service Access is Enabled or not.
  late final pulumi.Output<bool?> trustedServiceAccessEnabled;
  /// The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"
  late final pulumi.Output<String> type;
  /// List VirtualNetwork Rules
  late final pulumi.Output<List<NWRuleSetVirtualNetworkRulesResponse>?> virtualNetworkRules;

  /// Creates a new [NamespaceNetworkRuleSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NamespaceNetworkRuleSet]. {@macro pulumi_servicebus_namespace_network_rule_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NamespaceNetworkRuleSet(
    String name, {
    NamespaceNetworkRuleSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:servicebus:NamespaceNetworkRuleSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.defaultAction = registerOutput<String?>('defaultAction');
    this.ipRules = registerOutput<List<NWRuleSetIpRulesResponse>?>('ipRules');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.trustedServiceAccessEnabled = registerOutput<bool?>('trustedServiceAccessEnabled');
    this.type = registerOutput<String>('type');
    this.virtualNetworkRules = registerOutput<List<NWRuleSetVirtualNetworkRulesResponse>?>('virtualNetworkRules');
  }
}
