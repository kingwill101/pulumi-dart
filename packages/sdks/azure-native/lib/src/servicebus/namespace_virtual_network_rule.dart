import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_virtual_network_rule_args.dart';

/// Single item in a List or Get VirtualNetworkRules operation
///
/// Uses Azure REST API version 2018-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2018-01-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NameSpaceVirtualNetworkRuleCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var namespaceVirtualNetworkRule = new AzureNative.ServiceBus.NamespaceVirtualNetworkRule("namespaceVirtualNetworkRule", new()
///     {
///         NamespaceName = "sdk-Namespace-6019",
///         ResourceGroupName = "ResourceGroup",
///         VirtualNetworkRuleName = "sdk-VirtualNetworkRules-9191",
///         VirtualNetworkSubnetId = "/subscriptions/Subscription/resourceGroups/sbehvnettest/providers/Microsoft.Network/virtualNetworks/sbehvnettest/subnets/default",
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
/// 		_, err := servicebus.NewNamespaceVirtualNetworkRule(ctx, "namespaceVirtualNetworkRule", &servicebus.NamespaceVirtualNetworkRuleArgs{
/// 			NamespaceName:          pulumi.String("sdk-Namespace-6019"),
/// 			ResourceGroupName:      pulumi.String("ResourceGroup"),
/// 			VirtualNetworkRuleName: pulumi.String("sdk-VirtualNetworkRules-9191"),
/// 			VirtualNetworkSubnetId: pulumi.String("/subscriptions/Subscription/resourceGroups/sbehvnettest/providers/Microsoft.Network/virtualNetworks/sbehvnettest/subnets/default"),
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
/// resource "azure-native_servicebus_namespacevirtualnetworkrule" "namespaceVirtualNetworkRule" {
///   namespace_name            = "sdk-Namespace-6019"
///   resource_group_name       = "ResourceGroup"
///   virtual_network_rule_name = "sdk-VirtualNetworkRules-9191"
///   virtual_network_subnet_id = "/subscriptions/Subscription/resourceGroups/sbehvnettest/providers/Microsoft.Network/virtualNetworks/sbehvnettest/subnets/default"
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
/// import com.pulumi.azurenative.servicebus.NamespaceVirtualNetworkRule;
/// import com.pulumi.azurenative.servicebus.NamespaceVirtualNetworkRuleArgs;
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
///         var namespaceVirtualNetworkRule = new NamespaceVirtualNetworkRule("namespaceVirtualNetworkRule", NamespaceVirtualNetworkRuleArgs.builder()
///             .namespaceName("sdk-Namespace-6019")
///             .resourceGroupName("ResourceGroup")
///             .virtualNetworkRuleName("sdk-VirtualNetworkRules-9191")
///             .virtualNetworkSubnetId("/subscriptions/Subscription/resourceGroups/sbehvnettest/providers/Microsoft.Network/virtualNetworks/sbehvnettest/subnets/default")
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
/// const namespaceVirtualNetworkRule = new azure_native.servicebus.NamespaceVirtualNetworkRule("namespaceVirtualNetworkRule", {
///     namespaceName: "sdk-Namespace-6019",
///     resourceGroupName: "ResourceGroup",
///     virtualNetworkRuleName: "sdk-VirtualNetworkRules-9191",
///     virtualNetworkSubnetId: "/subscriptions/Subscription/resourceGroups/sbehvnettest/providers/Microsoft.Network/virtualNetworks/sbehvnettest/subnets/default",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// namespace_virtual_network_rule = azure_native.servicebus.NamespaceVirtualNetworkRule("namespaceVirtualNetworkRule",
///     namespace_name="sdk-Namespace-6019",
///     resource_group_name="ResourceGroup",
///     virtual_network_rule_name="sdk-VirtualNetworkRules-9191",
///     virtual_network_subnet_id="/subscriptions/Subscription/resourceGroups/sbehvnettest/providers/Microsoft.Network/virtualNetworks/sbehvnettest/subnets/default")
///
/// ```
///
/// ```yaml
/// resources:
///   namespaceVirtualNetworkRule:
///     type: azure-native:servicebus:NamespaceVirtualNetworkRule
///     properties:
///       namespaceName: sdk-Namespace-6019
///       resourceGroupName: ResourceGroup
///       virtualNetworkRuleName: sdk-VirtualNetworkRules-9191
///       virtualNetworkSubnetId: /subscriptions/Subscription/resourceGroups/sbehvnettest/providers/Microsoft.Network/virtualNetworks/sbehvnettest/subnets/default
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
/// $ pulumi import azure-native:servicebus:NamespaceVirtualNetworkRule sdk-VirtualNetworkRules-9191 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}/virtualnetworkrules/{virtualNetworkRuleName}
/// ```
class NamespaceVirtualNetworkRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource name
  late final pulumi.Output<String> name;
  /// Resource type
  late final pulumi.Output<String> type;
  /// Resource ID of Virtual Network Subnet
  late final pulumi.Output<String?> virtualNetworkSubnetId;

  /// Creates a new [NamespaceVirtualNetworkRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NamespaceVirtualNetworkRule]. {@macro pulumi_servicebus_namespace_virtual_network_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NamespaceVirtualNetworkRule(
    String name, {
    NamespaceVirtualNetworkRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:servicebus:NamespaceVirtualNetworkRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
    virtualNetworkSubnetId = registerOutput<String?>('virtualNetworkSubnetId');
  }
}
