import 'package:pulumi/pulumi.dart' as pulumi;
import 'magic_transit_site_wan_args.dart';
import 'magic_transit_site_wan_state.dart';
import 'magic_transit_site_wan_static_addressing.dart';

/// Accepted Permissions
///
/// - `Magic Transit Read`
/// - `Magic Transit Write`
/// - `Magic WAN Read`
/// - `Magic WAN Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleMagicTransitSiteWan = new cloudflare.MagicTransitSiteWan("example_magic_transit_site_wan", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     siteId: "023e105f4ecef8ad9ca31a8372d0c353",
///     physport: 1,
///     healthCheckRate: "low",
///     loadBalanceInnerFlows: true,
///     name: "name",
///     priority: 0,
///     provisionedDownloadKbps: 500,
///     provisionedUploadKbps: 100,
///     staticAddressing: {
///         address: "192.0.2.0/24",
///         gatewayAddress: "192.0.2.1",
///         secondaryAddress: "192.0.2.0/24",
///         secondaryGatewayAddress: "192.0.2.1",
///     },
///     vlanTag: 42,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_magic_transit_site_wan = cloudflare.MagicTransitSiteWan("example_magic_transit_site_wan",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     site_id="023e105f4ecef8ad9ca31a8372d0c353",
///     physport=1,
///     health_check_rate="low",
///     load_balance_inner_flows=True,
///     name="name",
///     priority=0,
///     provisioned_download_kbps=500,
///     provisioned_upload_kbps=100,
///     static_addressing={
///         "address": "192.0.2.0/24",
///         "gateway_address": "192.0.2.1",
///         "secondary_address": "192.0.2.0/24",
///         "secondary_gateway_address": "192.0.2.1",
///     },
///     vlan_tag=42)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleMagicTransitSiteWan = new Cloudflare.MagicTransitSiteWan("example_magic_transit_site_wan", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         SiteId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Physport = 1,
///         HealthCheckRate = "low",
///         LoadBalanceInnerFlows = true,
///         Name = "name",
///         Priority = 0,
///         ProvisionedDownloadKbps = 500,
///         ProvisionedUploadKbps = 100,
///         StaticAddressing = new Cloudflare.Inputs.MagicTransitSiteWanStaticAddressingArgs
///         {
///             Address = "192.0.2.0/24",
///             GatewayAddress = "192.0.2.1",
///             SecondaryAddress = "192.0.2.0/24",
///             SecondaryGatewayAddress = "192.0.2.1",
///         },
///         VlanTag = 42,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewMagicTransitSiteWan(ctx, "example_magic_transit_site_wan", &cloudflare.MagicTransitSiteWanArgs{
/// 			AccountId:               pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			SiteId:                  pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Physport:                pulumi.Int(1),
/// 			HealthCheckRate:         pulumi.String("low"),
/// 			LoadBalanceInnerFlows:   pulumi.Bool(true),
/// 			Name:                    pulumi.String("name"),
/// 			Priority:                pulumi.Int(0),
/// 			ProvisionedDownloadKbps: pulumi.Int(500),
/// 			ProvisionedUploadKbps:   pulumi.Int(100),
/// 			StaticAddressing: &cloudflare.MagicTransitSiteWanStaticAddressingArgs{
/// 				Address:                 pulumi.String("192.0.2.0/24"),
/// 				GatewayAddress:          pulumi.String("192.0.2.1"),
/// 				SecondaryAddress:        pulumi.String("192.0.2.0/24"),
/// 				SecondaryGatewayAddress: pulumi.String("192.0.2.1"),
/// 			},
/// 			VlanTag: pulumi.Int(42),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_magic_transit_site_wan" "example_magic_transit_site_wan" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id                = "023e105f4ecef8ad9ca31a8372d0c353"
///   site_id                   = "023e105f4ecef8ad9ca31a8372d0c353"
///   physport                  = 1
///   health_check_rate         = "low"
///   load_balance_inner_flows  = true
///   name                      = "name"
///   priority                  = 0
///   provisioned_download_kbps = 500
///   provisioned_upload_kbps   = 100
///   static_addressing = {
///     address                   = "192.0.2.0/24"
///     gateway_address           = "192.0.2.1"
///     secondary_address         = "192.0.2.0/24"
///     secondary_gateway_address = "192.0.2.1"
///   }
///   vlan_tag = 42
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.MagicTransitSiteWan;
/// import com.pulumi.cloudflare.MagicTransitSiteWanArgs;
/// import com.pulumi.cloudflare.inputs.MagicTransitSiteWanStaticAddressingArgs;
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
///         var exampleMagicTransitSiteWan = new MagicTransitSiteWan("exampleMagicTransitSiteWan", MagicTransitSiteWanArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .siteId("023e105f4ecef8ad9ca31a8372d0c353")
///             .physport(1)
///             .healthCheckRate("low")
///             .loadBalanceInnerFlows(true)
///             .name("name")
///             .priority(0)
///             .provisionedDownloadKbps(500)
///             .provisionedUploadKbps(100)
///             .staticAddressing(MagicTransitSiteWanStaticAddressingArgs.builder()
///                 .address("192.0.2.0/24")
///                 .gatewayAddress("192.0.2.1")
///                 .secondaryAddress("192.0.2.0/24")
///                 .secondaryGatewayAddress("192.0.2.1")
///                 .build())
///             .vlanTag(42)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleMagicTransitSiteWan:
///     type: cloudflare:MagicTransitSiteWan
///     name: example_magic_transit_site_wan
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       siteId: 023e105f4ecef8ad9ca31a8372d0c353
///       physport: 1
///       healthCheckRate: low
///       loadBalanceInnerFlows: true
///       name: name
///       priority: 0
///       provisionedDownloadKbps: 500
///       provisionedUploadKbps: 100
///       staticAddressing:
///         address: 192.0.2.0/24
///         gatewayAddress: 192.0.2.1
///         secondaryAddress: 192.0.2.0/24
///         secondaryGatewayAddress: 192.0.2.1
///       vlanTag: 42
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/magicTransitSiteWan:MagicTransitSiteWan example '<account_id>/<site_id>/<wan_id>'
/// ```
class MagicTransitSiteWan extends pulumi.CustomResource {
  /// Identifier
  late final pulumi.Output<String> accountId;
  /// Magic WAN health check rate for tunnels created on this link. The default value is `mid`.
  /// Available values: "low", "mid", "high".
  late final pulumi.Output<String> healthCheckRate;
  late final pulumi.Output<bool> loadBalanceInnerFlows;
  late final pulumi.Output<String?> name;
  late final pulumi.Output<int> physport;
  late final pulumi.Output<int?> priority;
  /// Provisioned download rate of the WAN circuit in kilobits per second.
  late final pulumi.Output<int?> provisionedDownloadKbps;
  /// Provisioned upload rate of the WAN circuit in kilobits per second.
  late final pulumi.Output<int?> provisionedUploadKbps;
  /// Identifier
  late final pulumi.Output<String> siteId;
  /// Static addressing configuration for a WAN. Omit to use DHCP. Submit secondary*address when the site is in high availability mode.
  late final pulumi.Output<MagicTransitSiteWanStaticAddressing?> staticAddressing;
  /// VLAN ID. Use zero for untagged.
  late final pulumi.Output<int?> vlanTag;

  /// Creates a new [MagicTransitSiteWan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MagicTransitSiteWan]. {@macro pulumi_index_magic_transit_site_wan_magic_transit_site_wan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MagicTransitSiteWan(
    String name, {
    MagicTransitSiteWanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/magicTransitSiteWan:MagicTransitSiteWan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.24.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    healthCheckRate = registerOutput<String>('healthCheckRate');
    loadBalanceInnerFlows = registerOutput<bool>('loadBalanceInnerFlows');
    this.name = registerOutput<String?>('name');
    physport = registerOutput<int>('physport');
    priority = registerOutput<int?>('priority');
    provisionedDownloadKbps = registerOutput<int?>('provisionedDownloadKbps');
    provisionedUploadKbps = registerOutput<int?>('provisionedUploadKbps');
    siteId = registerOutput<String>('siteId');
    staticAddressing = registerOutput<MagicTransitSiteWanStaticAddressing?>('staticAddressing', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicTransitSiteWanStaticAddressing.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vlanTag = registerOutput<int?>('vlanTag');
  }

  /// Gets an existing [MagicTransitSiteWan] resource's state with the given [name] and [id].
  static MagicTransitSiteWan get(
    String name,
    pulumi.Input<String> id, {
    MagicTransitSiteWanState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MagicTransitSiteWan._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MagicTransitSiteWan._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/magicTransitSiteWan:MagicTransitSiteWan',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    healthCheckRate = registerOutput<String>('healthCheckRate');
    loadBalanceInnerFlows = registerOutput<bool>('loadBalanceInnerFlows');
    this.name = registerOutput<String?>('name');
    physport = registerOutput<int>('physport');
    priority = registerOutput<int?>('priority');
    provisionedDownloadKbps = registerOutput<int?>('provisionedDownloadKbps');
    provisionedUploadKbps = registerOutput<int?>('provisionedUploadKbps');
    siteId = registerOutput<String>('siteId');
    staticAddressing = registerOutput<MagicTransitSiteWanStaticAddressing?>('staticAddressing', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicTransitSiteWanStaticAddressing.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vlanTag = registerOutput<int?>('vlanTag');
  }

  /// Creates a typed reference to an existing [MagicTransitSiteWan] resource.
  MagicTransitSiteWan.reference(String urn)
    : super(
        'cloudflare:index/magicTransitSiteWan:MagicTransitSiteWan',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    healthCheckRate = registerOutput<String>('healthCheckRate');
    loadBalanceInnerFlows = registerOutput<bool>('loadBalanceInnerFlows');
    this.name = registerOutput<String?>('name');
    physport = registerOutput<int>('physport');
    priority = registerOutput<int?>('priority');
    provisionedDownloadKbps = registerOutput<int?>('provisionedDownloadKbps');
    provisionedUploadKbps = registerOutput<int?>('provisionedUploadKbps');
    siteId = registerOutput<String>('siteId');
    staticAddressing = registerOutput<MagicTransitSiteWanStaticAddressing?>('staticAddressing', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicTransitSiteWanStaticAddressing.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vlanTag = registerOutput<int?>('vlanTag');
  }
}
