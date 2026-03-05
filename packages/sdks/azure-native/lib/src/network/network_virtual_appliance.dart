import 'package:pulumi/pulumi.dart' as pulumi;
import 'delegation_properties_response.dart';
import 'managed_service_identity_response.dart';
import 'network_virtual_appliance_args.dart';
import 'network_virtual_appliance_properties_format_response_network_profile.dart';
import 'partner_managed_resource_properties_response.dart';
import 'sub_resource_response.dart';
import 'virtual_appliance_sku_properties_response.dart';

/// NetworkVirtualAppliance Resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create SaaS NetworkVirtualAppliance
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkVirtualAppliance = new AzureNative.Network.NetworkVirtualAppliance("networkVirtualAppliance", new()
///     {
///         Delegation = new AzureNative.Network.Inputs.DelegationPropertiesArgs
///         {
///             ServiceName = "PaloAltoNetworks.Cloudngfw/firewalls",
///         },
///         Location = "West US",
///         NetworkVirtualApplianceName = "nva",
///         ResourceGroupName = "rg1",
///         Tags =
///         {
///             { "key1", "value1" },
///         },
///         VirtualHub = new AzureNative.Network.Inputs.SubResourceArgs
///         {
///             Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1",
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
/// 		_, err := network.NewNetworkVirtualAppliance(ctx, "networkVirtualAppliance", &network.NetworkVirtualApplianceArgs{
/// 			Delegation: &network.DelegationPropertiesArgs{
/// 				ServiceName: pulumi.String("PaloAltoNetworks.Cloudngfw/firewalls"),
/// 			},
/// 			Location:                    pulumi.String("West US"),
/// 			NetworkVirtualApplianceName: pulumi.String("nva"),
/// 			ResourceGroupName:           pulumi.String("rg1"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			VirtualHub: &network.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1"),
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
/// import com.pulumi.azurenative.network.NetworkVirtualAppliance;
/// import com.pulumi.azurenative.network.NetworkVirtualApplianceArgs;
/// import com.pulumi.azurenative.network.inputs.DelegationPropertiesArgs;
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
///         var networkVirtualAppliance = new NetworkVirtualAppliance("networkVirtualAppliance", NetworkVirtualApplianceArgs.builder()
///             .delegation(DelegationPropertiesArgs.builder()
///                 .serviceName("PaloAltoNetworks.Cloudngfw/firewalls")
///                 .build())
///             .location("West US")
///             .networkVirtualApplianceName("nva")
///             .resourceGroupName("rg1")
///             .tags(Map.of("key1", "value1"))
///             .virtualHub(SubResourceArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1")
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
/// const networkVirtualAppliance = new azure_native.network.NetworkVirtualAppliance("networkVirtualAppliance", {
///     delegation: {
///         serviceName: "PaloAltoNetworks.Cloudngfw/firewalls",
///     },
///     location: "West US",
///     networkVirtualApplianceName: "nva",
///     resourceGroupName: "rg1",
///     tags: {
///         key1: "value1",
///     },
///     virtualHub: {
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_virtual_appliance = azure_native.network.NetworkVirtualAppliance("networkVirtualAppliance",
///     delegation={
///         "service_name": "PaloAltoNetworks.Cloudngfw/firewalls",
///     },
///     location="West US",
///     network_virtual_appliance_name="nva",
///     resource_group_name="rg1",
///     tags={
///         "key1": "value1",
///     },
///     virtual_hub={
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   networkVirtualAppliance:
///     type: azure-native:network:NetworkVirtualAppliance
///     properties:
///       delegation:
///         serviceName: PaloAltoNetworks.Cloudngfw/firewalls
///       location: West US
///       networkVirtualApplianceName: nva
///       resourceGroupName: rg1
///       tags:
///         key1: value1
///       virtualHub:
///         id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1
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
/// $ pulumi import azure-native:network:NetworkVirtualAppliance nva /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkVirtualAppliances/{networkVirtualApplianceName}
/// ```
class NetworkVirtualAppliance extends pulumi.CustomResource {
  /// Details required for Additional Network Interface.
  late final pulumi.Output<List<Map<String, dynamic>>?> additionalNics;

  /// Address Prefix.
  late final pulumi.Output<String> addressPrefix;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// BootStrapConfigurationBlobs storage URLs.
  late final pulumi.Output<List<String>?> bootStrapConfigurationBlobs;

  /// CloudInitConfiguration string in plain text.
  late final pulumi.Output<String?> cloudInitConfiguration;

  /// CloudInitConfigurationBlob storage URLs.
  late final pulumi.Output<List<String>?> cloudInitConfigurationBlobs;

  /// The delegation for the Virtual Appliance
  late final pulumi.Output<DelegationPropertiesResponse?> delegation;

  /// The deployment type. PartnerManaged for the SaaS NVA
  late final pulumi.Output<String> deploymentType;

  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;

  /// The service principal that has read access to cloud-init and config blob.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;

  /// List of references to InboundSecurityRules.
  late final pulumi.Output<List<Map<String, dynamic>>> inboundSecurityRules;

  /// List of Resource Uri of Public IPs for Internet Ingress Scenario.
  late final pulumi.Output<List<Map<String, dynamic>>?>
  internetIngressPublicIps;

  /// Resource location.
  late final pulumi.Output<String?> location;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// Network Profile containing configurations for Public and Private NIC.
  late final pulumi.Output<
    NetworkVirtualAppliancePropertiesFormatResponseNetworkProfile?
  >
  networkProfile;

  /// Network Virtual Appliance SKU.
  late final pulumi.Output<VirtualApplianceSkuPropertiesResponse?> nvaSku;

  /// The delegation for the Virtual Appliance
  late final pulumi.Output<PartnerManagedResourcePropertiesResponse?>
  partnerManagedResource;

  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;

  /// Public key for SSH login.
  late final pulumi.Output<String?> sshPublicKey;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// VirtualAppliance ASN. Microsoft private, public and IANA reserved ASN are not supported.
  late final pulumi.Output<double?> virtualApplianceAsn;

  /// List of references to VirtualApplianceConnections.
  late final pulumi.Output<List<Map<String, dynamic>>>
  virtualApplianceConnections;

  /// List of Virtual Appliance Network Interfaces.
  late final pulumi.Output<List<Map<String, dynamic>>> virtualApplianceNics;

  /// List of references to VirtualApplianceSite.
  late final pulumi.Output<List<Map<String, dynamic>>> virtualApplianceSites;

  /// The Virtual Hub where Network Virtual Appliance is being deployed.
  late final pulumi.Output<SubResourceResponse?> virtualHub;

  /// Creates a new [NetworkVirtualAppliance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkVirtualAppliance]. {@macro pulumi_network_network_virtual_appliance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkVirtualAppliance(
    String name, {
    NetworkVirtualApplianceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:NetworkVirtualAppliance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    additionalNics = registerOutput<List<Map<String, dynamic>>?>(
      'additionalNics',
    );
    addressPrefix = registerOutput<String>('addressPrefix');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    bootStrapConfigurationBlobs = registerOutput<List<String>?>(
      'bootStrapConfigurationBlobs',
    );
    cloudInitConfiguration = registerOutput<String?>('cloudInitConfiguration');
    cloudInitConfigurationBlobs = registerOutput<List<String>?>(
      'cloudInitConfigurationBlobs',
    );
    delegation = registerOutput<DelegationPropertiesResponse?>(
      'delegation',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DelegationPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    deploymentType = registerOutput<String>('deploymentType');
    etag = registerOutput<String>('etag');
    identity = registerOutput<ManagedServiceIdentityResponse?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ManagedServiceIdentityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    inboundSecurityRules = registerOutput<List<Map<String, dynamic>>>(
      'inboundSecurityRules',
    );
    internetIngressPublicIps = registerOutput<List<Map<String, dynamic>>?>(
      'internetIngressPublicIps',
    );
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    networkProfile =
        registerOutput<
          NetworkVirtualAppliancePropertiesFormatResponseNetworkProfile?
        >(
          'networkProfile',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return NetworkVirtualAppliancePropertiesFormatResponseNetworkProfile.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    nvaSku = registerOutput<VirtualApplianceSkuPropertiesResponse?>(
      'nvaSku',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VirtualApplianceSkuPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    partnerManagedResource =
        registerOutput<PartnerManagedResourcePropertiesResponse?>(
          'partnerManagedResource',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return PartnerManagedResourcePropertiesResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    provisioningState = registerOutput<String>('provisioningState');
    sshPublicKey = registerOutput<String?>('sshPublicKey');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    virtualApplianceAsn = registerOutput<double?>('virtualApplianceAsn');
    virtualApplianceConnections = registerOutput<List<Map<String, dynamic>>>(
      'virtualApplianceConnections',
    );
    virtualApplianceNics = registerOutput<List<Map<String, dynamic>>>(
      'virtualApplianceNics',
    );
    virtualApplianceSites = registerOutput<List<Map<String, dynamic>>>(
      'virtualApplianceSites',
    );
    virtualHub = registerOutput<SubResourceResponse?>(
      'virtualHub',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SubResourceResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
