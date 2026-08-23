import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_security_perimeter_association_args.dart';
import 'sub_resource_response.dart';

/// The NSP resource association resource
///
/// Uses Azure REST API version 2024-06-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-06-01-preview.
///
/// Other available API versions: 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NspAssociationPut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkSecurityPerimeterAssociation = new AzureNative.Network.NetworkSecurityPerimeterAssociation("networkSecurityPerimeterAssociation", new()
///     {
///         AccessMode = AzureNative.Network.AssociationAccessMode.Enforced,
///         AssociationName = "association1",
///         NetworkSecurityPerimeterName = "nsp1",
///         PrivateLinkResource = new AzureNative.Network.Inputs.SubResourceArgs
///         {
///             Id = "/subscriptions/{paasSubscriptionId}/resourceGroups/{paasResourceGroupName}/providers/{providerName}/{resourceType}/{resourceName}",
///         },
///         Profile = new AzureNative.Network.Inputs.SubResourceArgs
///         {
///             Id = "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/networkSecurityPerimeters/nsp1/profiles/{profileName}",
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
/// 		_, err := network.NewNetworkSecurityPerimeterAssociation(ctx, "networkSecurityPerimeterAssociation", &network.NetworkSecurityPerimeterAssociationArgs{
/// 			AccessMode:                   pulumi.String(network.AssociationAccessModeEnforced),
/// 			AssociationName:              pulumi.String("association1"),
/// 			NetworkSecurityPerimeterName: pulumi.String("nsp1"),
/// 			PrivateLinkResource: &network.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/{paasSubscriptionId}/resourceGroups/{paasResourceGroupName}/providers/{providerName}/{resourceType}/{resourceName}"),
/// 			},
/// 			Profile: &network.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/networkSecurityPerimeters/nsp1/profiles/{profileName}"),
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
/// resource "azure-native_network_networksecurityperimeterassociation" "networkSecurityPerimeterAssociation" {
///   access_mode                     = "Enforced"
///   association_name                = "association1"
///   network_security_perimeter_name = "nsp1"
///   private_link_resource = {
///     id = "/subscriptions/{paasSubscriptionId}/resourceGroups/{paasResourceGroupName}/providers/{providerName}/{resourceType}/{resourceName}"
///   }
///   profile = {
///     id = "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/networkSecurityPerimeters/nsp1/profiles/{profileName}"
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
/// import com.pulumi.azurenative.network.NetworkSecurityPerimeterAssociation;
/// import com.pulumi.azurenative.network.NetworkSecurityPerimeterAssociationArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
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
///         var networkSecurityPerimeterAssociation = new NetworkSecurityPerimeterAssociation("networkSecurityPerimeterAssociation", NetworkSecurityPerimeterAssociationArgs.builder()
///             .accessMode("Enforced")
///             .associationName("association1")
///             .networkSecurityPerimeterName("nsp1")
///             .privateLinkResource(SubResourceArgs.builder()
///                 .id("/subscriptions/{paasSubscriptionId}/resourceGroups/{paasResourceGroupName}/providers/{providerName}/{resourceType}/{resourceName}")
///                 .build())
///             .profile(SubResourceArgs.builder()
///                 .id("/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/networkSecurityPerimeters/nsp1/profiles/{profileName}")
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
/// const networkSecurityPerimeterAssociation = new azure_native.network.NetworkSecurityPerimeterAssociation("networkSecurityPerimeterAssociation", {
///     accessMode: azure_native.network.AssociationAccessMode.Enforced,
///     associationName: "association1",
///     networkSecurityPerimeterName: "nsp1",
///     privateLinkResource: {
///         id: "/subscriptions/{paasSubscriptionId}/resourceGroups/{paasResourceGroupName}/providers/{providerName}/{resourceType}/{resourceName}",
///     },
///     profile: {
///         id: "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/networkSecurityPerimeters/nsp1/profiles/{profileName}",
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
/// network_security_perimeter_association = azure_native.network.NetworkSecurityPerimeterAssociation("networkSecurityPerimeterAssociation",
///     access_mode=azure_native.network.AssociationAccessMode.ENFORCED,
///     association_name="association1",
///     network_security_perimeter_name="nsp1",
///     private_link_resource={
///         "id": "/subscriptions/{paasSubscriptionId}/resourceGroups/{paasResourceGroupName}/providers/{providerName}/{resourceType}/{resourceName}",
///     },
///     profile={
///         "id": "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/networkSecurityPerimeters/nsp1/profiles/{profileName}",
///     },
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   networkSecurityPerimeterAssociation:
///     type: azure-native:network:NetworkSecurityPerimeterAssociation
///     properties:
///       accessMode: Enforced
///       associationName: association1
///       networkSecurityPerimeterName: nsp1
///       privateLinkResource:
///         id: /subscriptions/{paasSubscriptionId}/resourceGroups/{paasResourceGroupName}/providers/{providerName}/{resourceType}/{resourceName}
///       profile:
///         id: /subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/networkSecurityPerimeters/nsp1/profiles/{profileName}
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
/// $ pulumi import azure-native:network:NetworkSecurityPerimeterAssociation association1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityPerimeters/{networkSecurityPerimeterName}/resourceAssociations/{associationName}
/// ```
class NetworkSecurityPerimeterAssociation extends pulumi.CustomResource {
  /// Access mode on the association.
  late final pulumi.Output<String?> accessMode;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Specifies if there are provisioning issues
  late final pulumi.Output<String> hasProvisioningIssues;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The PaaS resource to be associated.
  late final pulumi.Output<SubResourceResponse?> privateLinkResource;
  /// Profile id to which the PaaS resource is associated.
  late final pulumi.Output<SubResourceResponse?> profile;
  /// The provisioning state of the resource  association resource.
  late final pulumi.Output<String> provisioningState;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [NetworkSecurityPerimeterAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkSecurityPerimeterAssociation]. {@macro pulumi_network_network_security_perimeter_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkSecurityPerimeterAssociation(
    String name, {
    NetworkSecurityPerimeterAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:NetworkSecurityPerimeterAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessMode = registerOutput<String?>('accessMode');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    hasProvisioningIssues = registerOutput<String>('hasProvisioningIssues');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    privateLinkResource = registerOutput<SubResourceResponse?>('privateLinkResource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    profile = registerOutput<SubResourceResponse?>('profile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
