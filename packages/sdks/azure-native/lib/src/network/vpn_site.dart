import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_space_response.dart';
import 'bgp_settings_response.dart';
import 'device_properties_response.dart';
import 'o365_policy_properties_response.dart';
import 'sub_resource_response.dart';
import 'vpn_site_args.dart';
import 'vpn_site_link_response.dart';

/// VpnSite Resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### VpnSiteCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vpnSite = new AzureNative.Network.VpnSite("vpnSite", new()
///     {
///         AddressSpace = new AzureNative.Network.Inputs.AddressSpaceArgs
///         {
///             AddressPrefixes = new[]
///             {
///                 "10.0.0.0/16",
///             },
///         },
///         IsSecuritySite = false,
///         Location = "West US",
///         O365Policy = new AzureNative.Network.Inputs.O365PolicyPropertiesArgs
///         {
///             BreakOutCategories = new AzureNative.Network.Inputs.O365BreakOutCategoryPoliciesArgs
///             {
///                 Allow = true,
///                 Default = false,
///                 Optimize = true,
///             },
///         },
///         ResourceGroupName = "rg1",
///         Tags =
///         {
///             { "key1", "value1" },
///         },
///         VirtualWan = new AzureNative.Network.Inputs.SubResourceArgs
///         {
///             Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualWANs/wan1",
///         },
///         VpnSiteLinks = new[]
///         {
///             new AzureNative.Network.Inputs.VpnSiteLinkArgs
///             {
///                 BgpProperties = new AzureNative.Network.Inputs.VpnLinkBgpSettingsArgs
///                 {
///                     Asn = 1234,
///                     BgpPeeringAddress = "192.168.0.0",
///                 },
///                 Fqdn = "link1.vpnsite1.contoso.com",
///                 IpAddress = "50.50.50.56",
///                 LinkProperties = new AzureNative.Network.Inputs.VpnLinkProviderPropertiesArgs
///                 {
///                     LinkProviderName = "vendor1",
///                     LinkSpeedInMbps = 0,
///                 },
///                 Name = "vpnSiteLink1",
///             },
///         },
///         VpnSiteName = "vpnSite1",
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
/// 		_, err := network.NewVpnSite(ctx, "vpnSite", &network.VpnSiteArgs{
/// 			AddressSpace: &network.AddressSpaceArgs{
/// 				AddressPrefixes: pulumi.StringArray{
/// 					pulumi.String("10.0.0.0/16"),
/// 				},
/// 			},
/// 			IsSecuritySite: pulumi.Bool(false),
/// 			Location:       pulumi.String("West US"),
/// 			O365Policy: &network.O365PolicyPropertiesArgs{
/// 				BreakOutCategories: &network.O365BreakOutCategoryPoliciesArgs{
/// 					Allow:    pulumi.Bool(true),
/// 					Default:  pulumi.Bool(false),
/// 					Optimize: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			VirtualWan: &network.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualWANs/wan1"),
/// 			},
/// 			VpnSiteLinks: network.VpnSiteLinkArray{
/// 				&network.VpnSiteLinkArgs{
/// 					BgpProperties: &network.VpnLinkBgpSettingsArgs{
/// 						Asn:               pulumi.Float64(1234),
/// 						BgpPeeringAddress: pulumi.String("192.168.0.0"),
/// 					},
/// 					Fqdn:      pulumi.String("link1.vpnsite1.contoso.com"),
/// 					IpAddress: pulumi.String("50.50.50.56"),
/// 					LinkProperties: &network.VpnLinkProviderPropertiesArgs{
/// 						LinkProviderName: pulumi.String("vendor1"),
/// 						LinkSpeedInMbps:  pulumi.Int(0),
/// 					},
/// 					Name: pulumi.String("vpnSiteLink1"),
/// 				},
/// 			},
/// 			VpnSiteName: pulumi.String("vpnSite1"),
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
/// import com.pulumi.azurenative.network.VpnSite;
/// import com.pulumi.azurenative.network.VpnSiteArgs;
/// import com.pulumi.azurenative.network.inputs.AddressSpaceArgs;
/// import com.pulumi.azurenative.network.inputs.O365PolicyPropertiesArgs;
/// import com.pulumi.azurenative.network.inputs.O365BreakOutCategoryPoliciesArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.network.inputs.VpnSiteLinkArgs;
/// import com.pulumi.azurenative.network.inputs.VpnLinkBgpSettingsArgs;
/// import com.pulumi.azurenative.network.inputs.VpnLinkProviderPropertiesArgs;
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
///         var vpnSite = new VpnSite("vpnSite", VpnSiteArgs.builder()
///             .addressSpace(AddressSpaceArgs.builder()
///                 .addressPrefixes("10.0.0.0/16")
///                 .build())
///             .isSecuritySite(false)
///             .location("West US")
///             .o365Policy(O365PolicyPropertiesArgs.builder()
///                 .breakOutCategories(O365BreakOutCategoryPoliciesArgs.builder()
///                     .allow(true)
///                     .default_(false)
///                     .optimize(true)
///                     .build())
///                 .build())
///             .resourceGroupName("rg1")
///             .tags(Map.of("key1", "value1"))
///             .virtualWan(SubResourceArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualWANs/wan1")
///                 .build())
///             .vpnSiteLinks(VpnSiteLinkArgs.builder()
///                 .bgpProperties(VpnLinkBgpSettingsArgs.builder()
///                     .asn(1234.0)
///                     .bgpPeeringAddress("192.168.0.0")
///                     .build())
///                 .fqdn("link1.vpnsite1.contoso.com")
///                 .ipAddress("50.50.50.56")
///                 .linkProperties(VpnLinkProviderPropertiesArgs.builder()
///                     .linkProviderName("vendor1")
///                     .linkSpeedInMbps(0)
///                     .build())
///                 .name("vpnSiteLink1")
///                 .build())
///             .vpnSiteName("vpnSite1")
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
/// const vpnSite = new azure_native.network.VpnSite("vpnSite", {
///     addressSpace: {
///         addressPrefixes: ["10.0.0.0/16"],
///     },
///     isSecuritySite: false,
///     location: "West US",
///     o365Policy: {
///         breakOutCategories: {
///             allow: true,
///             "default": false,
///             optimize: true,
///         },
///     },
///     resourceGroupName: "rg1",
///     tags: {
///         key1: "value1",
///     },
///     virtualWan: {
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualWANs/wan1",
///     },
///     vpnSiteLinks: [{
///         bgpProperties: {
///             asn: 1234,
///             bgpPeeringAddress: "192.168.0.0",
///         },
///         fqdn: "link1.vpnsite1.contoso.com",
///         ipAddress: "50.50.50.56",
///         linkProperties: {
///             linkProviderName: "vendor1",
///             linkSpeedInMbps: 0,
///         },
///         name: "vpnSiteLink1",
///     }],
///     vpnSiteName: "vpnSite1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// vpn_site = azure_native.network.VpnSite("vpnSite",
///     address_space={
///         "address_prefixes": ["10.0.0.0/16"],
///     },
///     is_security_site=False,
///     location="West US",
///     o365_policy={
///         "break_out_categories": {
///             "allow": True,
///             "default": False,
///             "optimize": True,
///         },
///     },
///     resource_group_name="rg1",
///     tags={
///         "key1": "value1",
///     },
///     virtual_wan={
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualWANs/wan1",
///     },
///     vpn_site_links=[{
///         "bgp_properties": {
///             "asn": 1234,
///             "bgp_peering_address": "192.168.0.0",
///         },
///         "fqdn": "link1.vpnsite1.contoso.com",
///         "ip_address": "50.50.50.56",
///         "link_properties": {
///             "link_provider_name": "vendor1",
///             "link_speed_in_mbps": 0,
///         },
///         "name": "vpnSiteLink1",
///     }],
///     vpn_site_name="vpnSite1")
///
/// ```
///
/// ```yaml
/// resources:
///   vpnSite:
///     type: azure-native:network:VpnSite
///     properties:
///       addressSpace:
///         addressPrefixes:
///           - 10.0.0.0/16
///       isSecuritySite: false
///       location: West US
///       o365Policy:
///         breakOutCategories:
///           allow: true
///           default: false
///           optimize: true
///       resourceGroupName: rg1
///       tags:
///         key1: value1
///       virtualWan:
///         id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualWANs/wan1
///       vpnSiteLinks:
///         - bgpProperties:
///             asn: 1234
///             bgpPeeringAddress: 192.168.0.0
///           fqdn: link1.vpnsite1.contoso.com
///           ipAddress: 50.50.50.56
///           linkProperties:
///             linkProviderName: vendor1
///             linkSpeedInMbps: 0
///           name: vpnSiteLink1
///       vpnSiteName: vpnSite1
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
/// $ pulumi import azure-native:network:VpnSite vpnSite1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/vpnSites/{vpnSiteName}
/// ```
class VpnSite extends pulumi.CustomResource {
  /// The AddressSpace that contains an array of IP address ranges.
  late final pulumi.Output<AddressSpaceResponse?> addressSpace;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The set of bgp properties.
  late final pulumi.Output<BgpSettingsResponse?> bgpProperties;
  /// The device properties.
  late final pulumi.Output<DevicePropertiesResponse?> deviceProperties;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// The ip-address for the vpn-site.
  late final pulumi.Output<String?> ipAddress;
  /// IsSecuritySite flag.
  late final pulumi.Output<bool?> isSecuritySite;
  /// Resource location.
  late final pulumi.Output<String> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Office365 Policy.
  late final pulumi.Output<O365PolicyPropertiesResponse?> o365Policy;
  /// The provisioning state of the VPN site resource.
  late final pulumi.Output<String> provisioningState;
  /// The key for vpn-site that can be used for connections.
  late final pulumi.Output<String?> siteKey;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// The VirtualWAN to which the vpnSite belongs.
  late final pulumi.Output<SubResourceResponse?> virtualWan;
  /// List of all vpn site links.
  late final pulumi.Output<List<VpnSiteLinkResponse>?> vpnSiteLinks;

  /// Creates a new [VpnSite].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpnSite]. {@macro pulumi_network_vpn_site_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpnSite(
    String name, {
    VpnSiteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:VpnSite',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.addressSpace = registerOutput<AddressSpaceResponse?>('addressSpace');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.bgpProperties = registerOutput<BgpSettingsResponse?>('bgpProperties');
    this.deviceProperties = registerOutput<DevicePropertiesResponse?>('deviceProperties');
    this.etag = registerOutput<String>('etag');
    this.ipAddress = registerOutput<String?>('ipAddress');
    this.isSecuritySite = registerOutput<bool?>('isSecuritySite');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.o365Policy = registerOutput<O365PolicyPropertiesResponse?>('o365Policy');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.siteKey = registerOutput<String?>('siteKey');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
    this.virtualWan = registerOutput<SubResourceResponse?>('virtualWan');
    this.vpnSiteLinks = registerOutput<List<VpnSiteLinkResponse>?>('vpnSiteLinks');
  }
}
