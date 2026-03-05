import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';
import 'system_data_response.dart';
import 'virtual_network_link_args.dart';

/// Describes a link to virtual network for a Private DNS zone.
///
/// Uses Azure REST API version 2024-06-01.
///
/// Other available API versions: 2018-09-01, 2020-01-01, 2020-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native privatedns [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PUT Private DNS Zone Virtual Network Link
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualNetworkLink = new AzureNative.PrivateDns.VirtualNetworkLink("virtualNetworkLink", new()
///     {
///         Location = "Global",
///         PrivateZoneName = "privatezone1.com",
///         RegistrationEnabled = false,
///         ResourceGroupName = "resourceGroup1",
///         Tags =
///         {
///             { "key1", "value1" },
///         },
///         VirtualNetwork = new AzureNative.PrivateDns.Inputs.SubResourceArgs
///         {
///             Id = "/subscriptions/virtualNetworkSubscriptionId/resourceGroups/virtualNetworkResourceGroup/providers/Microsoft.Network/virtualNetworks/virtualNetworkName",
///         },
///         VirtualNetworkLinkName = "virtualNetworkLink1",
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
/// 	privatedns "github.com/pulumi/pulumi-azure-native-sdk/privatedns/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := privatedns.NewVirtualNetworkLink(ctx, "virtualNetworkLink", &privatedns.VirtualNetworkLinkArgs{
/// 			Location:            pulumi.String("Global"),
/// 			PrivateZoneName:     pulumi.String("privatezone1.com"),
/// 			RegistrationEnabled: pulumi.Bool(false),
/// 			ResourceGroupName:   pulumi.String("resourceGroup1"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			VirtualNetwork: &privatedns.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/virtualNetworkSubscriptionId/resourceGroups/virtualNetworkResourceGroup/providers/Microsoft.Network/virtualNetworks/virtualNetworkName"),
/// 			},
/// 			VirtualNetworkLinkName: pulumi.String("virtualNetworkLink1"),
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
/// import com.pulumi.azurenative.privatedns.VirtualNetworkLink;
/// import com.pulumi.azurenative.privatedns.VirtualNetworkLinkArgs;
/// import com.pulumi.azurenative.privatedns.inputs.SubResourceArgs;
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
///         var virtualNetworkLink = new VirtualNetworkLink("virtualNetworkLink", VirtualNetworkLinkArgs.builder()
///             .location("Global")
///             .privateZoneName("privatezone1.com")
///             .registrationEnabled(false)
///             .resourceGroupName("resourceGroup1")
///             .tags(Map.of("key1", "value1"))
///             .virtualNetwork(SubResourceArgs.builder()
///                 .id("/subscriptions/virtualNetworkSubscriptionId/resourceGroups/virtualNetworkResourceGroup/providers/Microsoft.Network/virtualNetworks/virtualNetworkName")
///                 .build())
///             .virtualNetworkLinkName("virtualNetworkLink1")
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
/// const virtualNetworkLink = new azure_native.privatedns.VirtualNetworkLink("virtualNetworkLink", {
///     location: "Global",
///     privateZoneName: "privatezone1.com",
///     registrationEnabled: false,
///     resourceGroupName: "resourceGroup1",
///     tags: {
///         key1: "value1",
///     },
///     virtualNetwork: {
///         id: "/subscriptions/virtualNetworkSubscriptionId/resourceGroups/virtualNetworkResourceGroup/providers/Microsoft.Network/virtualNetworks/virtualNetworkName",
///     },
///     virtualNetworkLinkName: "virtualNetworkLink1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_network_link = azure_native.privatedns.VirtualNetworkLink("virtualNetworkLink",
///     location="Global",
///     private_zone_name="privatezone1.com",
///     registration_enabled=False,
///     resource_group_name="resourceGroup1",
///     tags={
///         "key1": "value1",
///     },
///     virtual_network={
///         "id": "/subscriptions/virtualNetworkSubscriptionId/resourceGroups/virtualNetworkResourceGroup/providers/Microsoft.Network/virtualNetworks/virtualNetworkName",
///     },
///     virtual_network_link_name="virtualNetworkLink1")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualNetworkLink:
///     type: azure-native:privatedns:VirtualNetworkLink
///     properties:
///       location: Global
///       privateZoneName: privatezone1.com
///       registrationEnabled: false
///       resourceGroupName: resourceGroup1
///       tags:
///         key1: value1
///       virtualNetwork:
///         id: /subscriptions/virtualNetworkSubscriptionId/resourceGroups/virtualNetworkResourceGroup/providers/Microsoft.Network/virtualNetworks/virtualNetworkName
///       virtualNetworkLinkName: virtualNetworkLink1
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
/// $ pulumi import azure-native:privatedns:VirtualNetworkLink virtualNetworkLink1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/privateDnsZones/{privateZoneName}/virtualNetworkLinks/{virtualNetworkLinkName}
/// ```
class VirtualNetworkLink extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The ETag of the virtual network link.
  late final pulumi.Output<String?> etag;

  /// The Azure Region where the resource lives
  late final pulumi.Output<String?> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The provisioning state of the resource. This is a read-only property and any attempt to set this value will be ignored.
  late final pulumi.Output<String> provisioningState;

  /// Is auto-registration of virtual machine records in the virtual network in the Private DNS zone enabled?
  late final pulumi.Output<bool?> registrationEnabled;

  /// The resolution policy on the virtual network link. Only applicable for virtual network links to privatelink zones, and for A,AAAA,CNAME queries. When set to 'NxDomainRedirect', Azure DNS resolver falls back to public resolution if private dns query resolution results in non-existent domain response.
  late final pulumi.Output<String?> resolutionPolicy;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// The reference of the virtual network.
  late final pulumi.Output<SubResourceResponse?> virtualNetwork;

  /// The status of the virtual network link to the Private DNS zone. Possible values are 'InProgress' and 'Done'. This is a read-only property and any attempt to set this value will be ignored.
  late final pulumi.Output<String> virtualNetworkLinkState;

  /// Creates a new [VirtualNetworkLink].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualNetworkLink]. {@macro pulumi_privatedns_virtual_network_link_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualNetworkLink(
    String name, {
    VirtualNetworkLinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:privatedns:VirtualNetworkLink',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    registrationEnabled = registerOutput<bool?>('registrationEnabled');
    resolutionPolicy = registerOutput<String?>('resolutionPolicy');
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
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    virtualNetwork = registerOutput<SubResourceResponse?>(
      'virtualNetwork',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SubResourceResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    virtualNetworkLinkState = registerOutput<String>('virtualNetworkLinkState');
  }
}
