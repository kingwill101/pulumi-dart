import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_security_perimeter_access_rule_args.dart';
import 'network_security_perimeter_access_rule_state.dart';

/// Manages a Network Security Perimeter Access Rule.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleNetworkSecurityPerimeter = new azure.network.NetworkSecurityPerimeter("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: "West Europe",
/// });
/// const exampleNetworkSecurityPerimeterProfile = new azure.network.NetworkSecurityPerimeterProfile("example", {
///     name: "example",
///     networkSecurityPerimeterId: exampleNetworkSecurityPerimeter.id,
/// });
/// const exampleNetworkSecurityPerimeterAccessRule = new azure.network.NetworkSecurityPerimeterAccessRule("example", {
///     name: "example",
///     networkSecurityPerimeterProfileId: exampleNetworkSecurityPerimeterProfile.id,
///     direction: "Inbound",
///     addressPrefixes: ["8.8.8.8/32"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_network_security_perimeter = azure.network.NetworkSecurityPerimeter("example",
///     name="example",
///     resource_group_name=example.name,
///     location="West Europe")
/// example_network_security_perimeter_profile = azure.network.NetworkSecurityPerimeterProfile("example",
///     name="example",
///     network_security_perimeter_id=example_network_security_perimeter.id)
/// example_network_security_perimeter_access_rule = azure.network.NetworkSecurityPerimeterAccessRule("example",
///     name="example",
///     network_security_perimeter_profile_id=example_network_security_perimeter_profile.id,
///     direction="Inbound",
///     address_prefixes=["8.8.8.8/32"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleNetworkSecurityPerimeter = new Azure.Network.NetworkSecurityPerimeter("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = "West Europe",
///     });
///
///     var exampleNetworkSecurityPerimeterProfile = new Azure.Network.NetworkSecurityPerimeterProfile("example", new()
///     {
///         Name = "example",
///         NetworkSecurityPerimeterId = exampleNetworkSecurityPerimeter.Id,
///     });
///
///     var exampleNetworkSecurityPerimeterAccessRule = new Azure.Network.NetworkSecurityPerimeterAccessRule("example", new()
///     {
///         Name = "example",
///         NetworkSecurityPerimeterProfileId = exampleNetworkSecurityPerimeterProfile.Id,
///         Direction = "Inbound",
///         AddressPrefixes = new[]
///         {
///             "8.8.8.8/32",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkSecurityPerimeter, err := network.NewNetworkSecurityPerimeter(ctx, "example", &network.NetworkSecurityPerimeterArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkSecurityPerimeterProfile, err := network.NewNetworkSecurityPerimeterProfile(ctx, "example", &network.NetworkSecurityPerimeterProfileArgs{
/// 			Name:                       pulumi.String("example"),
/// 			NetworkSecurityPerimeterId: exampleNetworkSecurityPerimeter.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNetworkSecurityPerimeterAccessRule(ctx, "example", &network.NetworkSecurityPerimeterAccessRuleArgs{
/// 			Name:                              pulumi.String("example"),
/// 			NetworkSecurityPerimeterProfileId: exampleNetworkSecurityPerimeterProfile.ID(),
/// 			Direction:                         pulumi.String("Inbound"),
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("8.8.8.8/32"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.network.NetworkSecurityPerimeter;
/// import com.pulumi.azure.network.NetworkSecurityPerimeterArgs;
/// import com.pulumi.azure.network.NetworkSecurityPerimeterProfile;
/// import com.pulumi.azure.network.NetworkSecurityPerimeterProfileArgs;
/// import com.pulumi.azure.network.NetworkSecurityPerimeterAccessRule;
/// import com.pulumi.azure.network.NetworkSecurityPerimeterAccessRuleArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleNetworkSecurityPerimeter = new NetworkSecurityPerimeter("exampleNetworkSecurityPerimeter", NetworkSecurityPerimeterArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location("West Europe")
///             .build());
///
///         var exampleNetworkSecurityPerimeterProfile = new NetworkSecurityPerimeterProfile("exampleNetworkSecurityPerimeterProfile", NetworkSecurityPerimeterProfileArgs.builder()
///             .name("example")
///             .networkSecurityPerimeterId(exampleNetworkSecurityPerimeter.id())
///             .build());
///
///         var exampleNetworkSecurityPerimeterAccessRule = new NetworkSecurityPerimeterAccessRule("exampleNetworkSecurityPerimeterAccessRule", NetworkSecurityPerimeterAccessRuleArgs.builder()
///             .name("example")
///             .networkSecurityPerimeterProfileId(exampleNetworkSecurityPerimeterProfile.id())
///             .direction("Inbound")
///             .addressPrefixes("8.8.8.8/32")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleNetworkSecurityPerimeter:
///     type: azure:network:NetworkSecurityPerimeter
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: West Europe
///   exampleNetworkSecurityPerimeterProfile:
///     type: azure:network:NetworkSecurityPerimeterProfile
///     name: example
///     properties:
///       name: example
///       networkSecurityPerimeterId: ${exampleNetworkSecurityPerimeter.id}
///   exampleNetworkSecurityPerimeterAccessRule:
///     type: azure:network:NetworkSecurityPerimeterAccessRule
///     name: example
///     properties:
///       name: example
///       networkSecurityPerimeterProfileId: ${exampleNetworkSecurityPerimeterProfile.id}
///       direction: Inbound
///       addressPrefixes:
///         - 8.8.8.8/32
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
///
/// ## Import
///
/// Network Security Perimeter Access Rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/networkSecurityPerimeterAccessRule:NetworkSecurityPerimeterAccessRule example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-rg/providers/Microsoft.Network/networkSecurityPerimeters/example-nsp/profiles/defaultProfile/accessRules/example-accessrule
/// ```
class NetworkSecurityPerimeterAccessRule extends pulumi.CustomResource {
  /// Specifies a list of CIDRs. Can only be specified when direction is set to `Inbound`. Conflicts with `fqdns`, `service_tags`, `subscription_ids`.
  late final pulumi.Output<List<String>?> addressPrefixes;
  /// The direction of the rule. Possible values are `Inbound` and `Outbound`. Changing this forces a new Network Security Perimeter Access Rule to be created.
  late final pulumi.Output<String> direction;
  /// Specifies a list of fully qualified domain names. Can only be specified when direction is set to `Outbound`. Conflicts with `address_prefixes`, `service_tags`, and `subscription_ids`.
  late final pulumi.Output<List<String>?> fqdns;
  /// The name which should be used for this Network Security Perimeter Access Rule. Changing this forces a new Network Security Perimeter Access Rule to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Network Security Perimeter Profile within which this Access Rule is created. Changing this forces a new Network Security Perimeter Access Rule to be created.
  late final pulumi.Output<String> networkSecurityPerimeterProfileId;
  /// Specifies a list of service tags. Can only be specified when direction is set to `Inbound`. Conflicts with `address_prefixes`, `fqdns`, and `subscription_ids`.
  late final pulumi.Output<List<String>?> serviceTags;
  /// Specifies a list of subscription IDs this rule applies to. Can only be specified when direction is set to `Inbound`. Conflicts with `address_prefixes`, `fqdns`, and `service_tags`.
  late final pulumi.Output<List<String>?> subscriptionIds;

  /// Creates a new [NetworkSecurityPerimeterAccessRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkSecurityPerimeterAccessRule]. {@macro pulumi_network_network_security_perimeter_access_rule_network_security_perimeter_access_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkSecurityPerimeterAccessRule(
    String name, {
    NetworkSecurityPerimeterAccessRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkSecurityPerimeterAccessRule:NetworkSecurityPerimeterAccessRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.addressPrefixes = registerOutput<List<String>?>('addressPrefixes');
    this.direction = registerOutput<String>('direction');
    this.fqdns = registerOutput<List<String>?>('fqdns');
    this.name = registerOutput<String>('name');
    this.networkSecurityPerimeterProfileId = registerOutput<String>('networkSecurityPerimeterProfileId');
    this.serviceTags = registerOutput<List<String>?>('serviceTags');
    this.subscriptionIds = registerOutput<List<String>?>('subscriptionIds');
  }

  /// Gets an existing [NetworkSecurityPerimeterAccessRule] resource's state with the given [name] and [id].
  static NetworkSecurityPerimeterAccessRule get(
    String name,
    pulumi.Input<String> id, {
    NetworkSecurityPerimeterAccessRuleState? state,
  }) {
    return NetworkSecurityPerimeterAccessRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkSecurityPerimeterAccessRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkSecurityPerimeterAccessRule:NetworkSecurityPerimeterAccessRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.addressPrefixes = registerOutput<List<String>?>('addressPrefixes');
    this.direction = registerOutput<String>('direction');
    this.fqdns = registerOutput<List<String>?>('fqdns');
    this.name = registerOutput<String>('name');
    this.networkSecurityPerimeterProfileId = registerOutput<String>('networkSecurityPerimeterProfileId');
    this.serviceTags = registerOutput<List<String>?>('serviceTags');
    this.subscriptionIds = registerOutput<List<String>?>('subscriptionIds');
  }
}
