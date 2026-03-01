import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_security_perimeter_access_rule_args.dart';
import 'perimeter_based_access_rule_response.dart';
import 'subscription_id_response.dart';

/// The NSP access rule resource
///
/// Uses Azure REST API version 2024-06-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-06-01-preview.
///
/// Other available API versions: 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NspAccessRulePut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkSecurityPerimeterAccessRule = new AzureNative.Network.NetworkSecurityPerimeterAccessRule("networkSecurityPerimeterAccessRule", new()
///     {
///         AccessRuleName = "accessRule1",
///         AddressPrefixes = new[]
///         {
///             "10.11.0.0/16",
///             "10.10.1.0/24",
///         },
///         Direction = AzureNative.Network.AccessRuleDirection.Inbound,
///         NetworkSecurityPerimeterName = "nsp1",
///         ProfileName = "profile1",
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
/// 		_, err := network.NewNetworkSecurityPerimeterAccessRule(ctx, "networkSecurityPerimeterAccessRule", &network.NetworkSecurityPerimeterAccessRuleArgs{
/// 			AccessRuleName: pulumi.String("accessRule1"),
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.11.0.0/16"),
/// 				pulumi.String("10.10.1.0/24"),
/// 			},
/// 			Direction:                    pulumi.String(network.AccessRuleDirectionInbound),
/// 			NetworkSecurityPerimeterName: pulumi.String("nsp1"),
/// 			ProfileName:                  pulumi.String("profile1"),
/// 			ResourceGroupName:            pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.network.NetworkSecurityPerimeterAccessRule;
/// import com.pulumi.azurenative.network.NetworkSecurityPerimeterAccessRuleArgs;
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
///         var networkSecurityPerimeterAccessRule = new NetworkSecurityPerimeterAccessRule("networkSecurityPerimeterAccessRule", NetworkSecurityPerimeterAccessRuleArgs.builder()
///             .accessRuleName("accessRule1")
///             .addressPrefixes(
///                 "10.11.0.0/16",
///                 "10.10.1.0/24")
///             .direction("Inbound")
///             .networkSecurityPerimeterName("nsp1")
///             .profileName("profile1")
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
/// const networkSecurityPerimeterAccessRule = new azure_native.network.NetworkSecurityPerimeterAccessRule("networkSecurityPerimeterAccessRule", {
///     accessRuleName: "accessRule1",
///     addressPrefixes: [
///         "10.11.0.0/16",
///         "10.10.1.0/24",
///     ],
///     direction: azure_native.network.AccessRuleDirection.Inbound,
///     networkSecurityPerimeterName: "nsp1",
///     profileName: "profile1",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_security_perimeter_access_rule = azure_native.network.NetworkSecurityPerimeterAccessRule("networkSecurityPerimeterAccessRule",
///     access_rule_name="accessRule1",
///     address_prefixes=[
///         "10.11.0.0/16",
///         "10.10.1.0/24",
///     ],
///     direction=azure_native.network.AccessRuleDirection.INBOUND,
///     network_security_perimeter_name="nsp1",
///     profile_name="profile1",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   networkSecurityPerimeterAccessRule:
///     type: azure-native:network:NetworkSecurityPerimeterAccessRule
///     properties:
///       accessRuleName: accessRule1
///       addressPrefixes:
///         - 10.11.0.0/16
///         - 10.10.1.0/24
///       direction: Inbound
///       networkSecurityPerimeterName: nsp1
///       profileName: profile1
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
/// $ pulumi import azure-native:network:NetworkSecurityPerimeterAccessRule accessRule1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityPerimeters/{networkSecurityPerimeterName}/profiles/{profileName}/accessRules/{accessRuleName}
/// ```
class NetworkSecurityPerimeterAccessRule extends pulumi.CustomResource {
  /// Inbound address prefixes (IPv4/IPv6)
  late final pulumi.Output<List<String>?> addressPrefixes;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Direction that specifies whether the access rules is inbound/outbound.
  late final pulumi.Output<String?> direction;
  /// Outbound rules email address format.
  late final pulumi.Output<List<String>?> emailAddresses;
  /// Outbound rules fully qualified domain name format.
  late final pulumi.Output<List<String>?> fullyQualifiedDomainNames;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Rule specified by the perimeter id.
  late final pulumi.Output<List<PerimeterBasedAccessRuleResponse>> networkSecurityPerimeters;
  /// Outbound rules phone number format.
  late final pulumi.Output<List<String>?> phoneNumbers;
  /// The provisioning state of the scope assignment resource.
  late final pulumi.Output<String> provisioningState;
  /// Inbound rules service tag names.
  late final pulumi.Output<List<String>?> serviceTags;
  /// List of subscription ids
  late final pulumi.Output<List<SubscriptionIdResponse>?> subscriptions;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [NetworkSecurityPerimeterAccessRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkSecurityPerimeterAccessRule]. {@macro pulumi_network_network_security_perimeter_access_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkSecurityPerimeterAccessRule(
    String name, {
    NetworkSecurityPerimeterAccessRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:NetworkSecurityPerimeterAccessRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.addressPrefixes = registerOutput<List<String>?>('addressPrefixes');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.direction = registerOutput<String?>('direction');
    this.emailAddresses = registerOutput<List<String>?>('emailAddresses');
    this.fullyQualifiedDomainNames = registerOutput<List<String>?>('fullyQualifiedDomainNames');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.networkSecurityPerimeters = registerOutput<List<PerimeterBasedAccessRuleResponse>>('networkSecurityPerimeters');
    this.phoneNumbers = registerOutput<List<String>?>('phoneNumbers');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.serviceTags = registerOutput<List<String>?>('serviceTags');
    this.subscriptions = registerOutput<List<SubscriptionIdResponse>?>('subscriptions');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
