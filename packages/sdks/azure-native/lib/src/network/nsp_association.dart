import 'package:pulumi/pulumi.dart' as pulumi;
import 'nsp_association_args.dart';
import 'sub_resource_response.dart';

/// The NSP resource association resource
///
/// Uses Azure REST API version 2023-08-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-02-01-preview.
///
/// Other available API versions: 2021-02-01-preview, 2023-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
///     var nspAssociation = new AzureNative.Network.NspAssociation("nspAssociation", new()
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
/// 		_, err := network.NewNspAssociation(ctx, "nspAssociation", &network.NspAssociationArgs{
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.network.NspAssociation;
/// import com.pulumi.azurenative.network.NspAssociationArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
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
///         var nspAssociation = new NspAssociation("nspAssociation", NspAssociationArgs.builder()
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
/// const nspAssociation = new azure_native.network.NspAssociation("nspAssociation", {
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
/// nsp_association = azure_native.network.NspAssociation("nspAssociation",
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
///   nspAssociation:
///     type: azure-native:network:NspAssociation
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
/// $ pulumi import azure-native:network:NspAssociation association1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityPerimeters/{networkSecurityPerimeterName}/resourceAssociations/{associationName}
/// ```
class NspAssociation extends pulumi.CustomResource {
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

  /// Creates a new [NspAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NspAssociation]. {@macro pulumi_network_nsp_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NspAssociation(
    String name, {
    NspAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:NspAssociation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessMode = registerOutput<String?>('accessMode');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    hasProvisioningIssues = registerOutput<String>('hasProvisioningIssues');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    privateLinkResource = registerOutput<SubResourceResponse?>(
      'privateLinkResource',
    );
    profile = registerOutput<SubResourceResponse?>('profile');
    provisioningState = registerOutput<String>('provisioningState');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
