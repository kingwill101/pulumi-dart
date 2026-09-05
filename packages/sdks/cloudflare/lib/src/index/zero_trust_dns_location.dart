import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dns_location_args.dart';
import 'zero_trust_dns_location_endpoints.dart';
import 'zero_trust_dns_location_max_ttl.dart';
import 'zero_trust_dns_location_network.dart';
import 'zero_trust_dns_location_state.dart';

/// Accepted Permissions
///
/// - `Cloudflare Zero Trust Secure DNS Locations Write`
/// - `Zero Trust Read`
/// - `Zero Trust Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustDnsLocation = new cloudflare.ZeroTrustDnsLocation("example_zero_trust_dns_location", {
///     accountId: "699d98642c564d2e855e9661899b7252",
///     name: "Austin Office Location",
///     clientDefault: false,
///     dnsDestinationIpsId: "0e4a32c6-6fb8-4858-9296-98f51631e8e6",
///     ecsSupport: false,
///     endpoints: {
///         doh: {
///             enabled: true,
///             networks: [{
///                 network: "2001:85a3::/64",
///             }],
///             requireToken: true,
///         },
///         dot: {
///             enabled: true,
///             networks: [{
///                 network: "2001:85a3::/64",
///             }],
///         },
///         ipv4: {
///             enabled: true,
///         },
///         ipv6: {
///             enabled: true,
///             networks: [{
///                 network: "2001:85a3::/64",
///             }],
///         },
///     },
///     maxTtl: {
///         mode: "override",
///         ttlSecs: 3600,
///     },
///     networks: [{
///         network: "192.0.2.1/32",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_dns_location = cloudflare.ZeroTrustDnsLocation("example_zero_trust_dns_location",
///     account_id="699d98642c564d2e855e9661899b7252",
///     name="Austin Office Location",
///     client_default=False,
///     dns_destination_ips_id="0e4a32c6-6fb8-4858-9296-98f51631e8e6",
///     ecs_support=False,
///     endpoints={
///         "doh": {
///             "enabled": True,
///             "networks": [{
///                 "network": "2001:85a3::/64",
///             }],
///             "require_token": True,
///         },
///         "dot": {
///             "enabled": True,
///             "networks": [{
///                 "network": "2001:85a3::/64",
///             }],
///         },
///         "ipv4": {
///             "enabled": True,
///         },
///         "ipv6": {
///             "enabled": True,
///             "networks": [{
///                 "network": "2001:85a3::/64",
///             }],
///         },
///     },
///     max_ttl={
///         "mode": "override",
///         "ttl_secs": 3600,
///     },
///     networks=[{
///         "network": "192.0.2.1/32",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustDnsLocation = new Cloudflare.ZeroTrustDnsLocation("example_zero_trust_dns_location", new()
///     {
///         AccountId = "699d98642c564d2e855e9661899b7252",
///         Name = "Austin Office Location",
///         ClientDefault = false,
///         DnsDestinationIpsId = "0e4a32c6-6fb8-4858-9296-98f51631e8e6",
///         EcsSupport = false,
///         Endpoints = new Cloudflare.Inputs.ZeroTrustDnsLocationEndpointsArgs
///         {
///             Doh = new Cloudflare.Inputs.ZeroTrustDnsLocationEndpointsDohArgs
///             {
///                 Enabled = true,
///                 Networks = new[]
///                 {
///                     new Cloudflare.Inputs.ZeroTrustDnsLocationEndpointsDohNetworkArgs
///                     {
///                         Network = "2001:85a3::/64",
///                     },
///                 },
///                 RequireToken = true,
///             },
///             Dot = new Cloudflare.Inputs.ZeroTrustDnsLocationEndpointsDotArgs
///             {
///                 Enabled = true,
///                 Networks = new[]
///                 {
///                     new Cloudflare.Inputs.ZeroTrustDnsLocationEndpointsDotNetworkArgs
///                     {
///                         Network = "2001:85a3::/64",
///                     },
///                 },
///             },
///             Ipv4 = new Cloudflare.Inputs.ZeroTrustDnsLocationEndpointsIpv4Args
///             {
///                 Enabled = true,
///             },
///             Ipv6 = new Cloudflare.Inputs.ZeroTrustDnsLocationEndpointsIpv6Args
///             {
///                 Enabled = true,
///                 Networks = new[]
///                 {
///                     new Cloudflare.Inputs.ZeroTrustDnsLocationEndpointsIpv6NetworkArgs
///                     {
///                         Network = "2001:85a3::/64",
///                     },
///                 },
///             },
///         },
///         MaxTtl = new Cloudflare.Inputs.ZeroTrustDnsLocationMaxTtlArgs
///         {
///             Mode = "override",
///             TtlSecs = 3600,
///         },
///         Networks = new[]
///         {
///             new Cloudflare.Inputs.ZeroTrustDnsLocationNetworkArgs
///             {
///                 Network = "192.0.2.1/32",
///             },
///         },
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
/// 		_, err := cloudflare.NewZeroTrustDnsLocation(ctx, "example_zero_trust_dns_location", &cloudflare.ZeroTrustDnsLocationArgs{
/// 			AccountId:           pulumi.String("699d98642c564d2e855e9661899b7252"),
/// 			Name:                pulumi.String("Austin Office Location"),
/// 			ClientDefault:       pulumi.Bool(false),
/// 			DnsDestinationIpsId: pulumi.String("0e4a32c6-6fb8-4858-9296-98f51631e8e6"),
/// 			EcsSupport:          pulumi.Bool(false),
/// 			Endpoints: &cloudflare.ZeroTrustDnsLocationEndpointsArgs{
/// 				Doh: &cloudflare.ZeroTrustDnsLocationEndpointsDohArgs{
/// 					Enabled: pulumi.Bool(true),
/// 					Networks: cloudflare.ZeroTrustDnsLocationEndpointsDohNetworkArray{
/// 						&cloudflare.ZeroTrustDnsLocationEndpointsDohNetworkArgs{
/// 							Network: pulumi.String("2001:85a3::/64"),
/// 						},
/// 					},
/// 					RequireToken: pulumi.Bool(true),
/// 				},
/// 				Dot: &cloudflare.ZeroTrustDnsLocationEndpointsDotArgs{
/// 					Enabled: pulumi.Bool(true),
/// 					Networks: cloudflare.ZeroTrustDnsLocationEndpointsDotNetworkArray{
/// 						&cloudflare.ZeroTrustDnsLocationEndpointsDotNetworkArgs{
/// 							Network: pulumi.String("2001:85a3::/64"),
/// 						},
/// 					},
/// 				},
/// 				Ipv4: &cloudflare.ZeroTrustDnsLocationEndpointsIpv4Args{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 				Ipv6: &cloudflare.ZeroTrustDnsLocationEndpointsIpv6Args{
/// 					Enabled: pulumi.Bool(true),
/// 					Networks: cloudflare.ZeroTrustDnsLocationEndpointsIpv6NetworkArray{
/// 						&cloudflare.ZeroTrustDnsLocationEndpointsIpv6NetworkArgs{
/// 							Network: pulumi.String("2001:85a3::/64"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			MaxTtl: &cloudflare.ZeroTrustDnsLocationMaxTtlArgs{
/// 				Mode:    pulumi.String("override"),
/// 				TtlSecs: pulumi.Int(3600),
/// 			},
/// 			Networks: cloudflare.ZeroTrustDnsLocationNetworkArray{
/// 				&cloudflare.ZeroTrustDnsLocationNetworkArgs{
/// 					Network: pulumi.String("192.0.2.1/32"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_zerotrustdnslocation" "example_zero_trust_dns_location" {
///   account_id             = "699d98642c564d2e855e9661899b7252"
///   name                   = "Austin Office Location"
///   client_default         = false
///   dns_destination_ips_id = "0e4a32c6-6fb8-4858-9296-98f51631e8e6"
///   ecs_support            = false
///   endpoints = {
///     doh = {
///       enabled = true
///       networks = [{
///         "network" = "2001:85a3::/64"
///       }]
///       require_token = true
///     }
///     dot = {
///       enabled = true
///       networks = [{
///         "network" = "2001:85a3::/64"
///       }]
///     }
///     ipv4 = {
///       enabled = true
///     }
///     ipv6 = {
///       enabled = true
///       networks = [{
///         "network" = "2001:85a3::/64"
///       }]
///     }
///   }
///   max_ttl = {
///     mode     = "override"
///     ttl_secs = 3600
///   }
///   networks {
///     network = "192.0.2.1/32"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustDnsLocation;
/// import com.pulumi.cloudflare.ZeroTrustDnsLocationArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDnsLocationEndpointsArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDnsLocationEndpointsDohArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDnsLocationEndpointsDohNetworkArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDnsLocationEndpointsDotArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDnsLocationEndpointsDotNetworkArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDnsLocationEndpointsIpv4Args;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDnsLocationEndpointsIpv6Args;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDnsLocationEndpointsIpv6NetworkArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDnsLocationMaxTtlArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDnsLocationNetworkArgs;
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
///         var exampleZeroTrustDnsLocation = new ZeroTrustDnsLocation("exampleZeroTrustDnsLocation", ZeroTrustDnsLocationArgs.builder()
///             .accountId("699d98642c564d2e855e9661899b7252")
///             .name("Austin Office Location")
///             .clientDefault(false)
///             .dnsDestinationIpsId("0e4a32c6-6fb8-4858-9296-98f51631e8e6")
///             .ecsSupport(false)
///             .endpoints(ZeroTrustDnsLocationEndpointsArgs.builder()
///                 .doh(ZeroTrustDnsLocationEndpointsDohArgs.builder()
///                     .enabled(true)
///                     .networks(ZeroTrustDnsLocationEndpointsDohNetworkArgs.builder()
///                         .network("2001:85a3::/64")
///                         .build())
///                     .requireToken(true)
///                     .build())
///                 .dot(ZeroTrustDnsLocationEndpointsDotArgs.builder()
///                     .enabled(true)
///                     .networks(ZeroTrustDnsLocationEndpointsDotNetworkArgs.builder()
///                         .network("2001:85a3::/64")
///                         .build())
///                     .build())
///                 .ipv4(ZeroTrustDnsLocationEndpointsIpv4Args.builder()
///                     .enabled(true)
///                     .build())
///                 .ipv6(ZeroTrustDnsLocationEndpointsIpv6Args.builder()
///                     .enabled(true)
///                     .networks(ZeroTrustDnsLocationEndpointsIpv6NetworkArgs.builder()
///                         .network("2001:85a3::/64")
///                         .build())
///                     .build())
///                 .build())
///             .maxTtl(ZeroTrustDnsLocationMaxTtlArgs.builder()
///                 .mode("override")
///                 .ttlSecs(3600)
///                 .build())
///             .networks(ZeroTrustDnsLocationNetworkArgs.builder()
///                 .network("192.0.2.1/32")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustDnsLocation:
///     type: cloudflare:ZeroTrustDnsLocation
///     name: example_zero_trust_dns_location
///     properties:
///       accountId: 699d98642c564d2e855e9661899b7252
///       name: Austin Office Location
///       clientDefault: false
///       dnsDestinationIpsId: 0e4a32c6-6fb8-4858-9296-98f51631e8e6
///       ecsSupport: false
///       endpoints:
///         doh:
///           enabled: true
///           networks:
///             - network: 2001:85a3::/64
///           requireToken: true
///         dot:
///           enabled: true
///           networks:
///             - network: 2001:85a3::/64
///         ipv4:
///           enabled: true
///         ipv6:
///           enabled: true
///           networks:
///             - network: 2001:85a3::/64
///       maxTtl:
///         mode: override
///         ttlSecs: 3600
///       networks:
///         - network: 192.0.2.1/32
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustDnsLocation:ZeroTrustDnsLocation example '<account_id>/<location_id>'
/// ```
class ZeroTrustDnsLocation extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  /// Indicate whether this location is the default location.
  late final pulumi.Output<bool> clientDefault;
  late final pulumi.Output<String> createdAt;
  /// Specify the identifier of the pair of IPv4 addresses assigned to this location. When creating a location, if this field is absent or set to null, the pair of shared IPv4 addresses (0e4a32c6-6fb8-4858-9296-98f51631e8e6) is auto-assigned. When updating a location, if this field is absent or set to null, the pre-assigned pair remains unchanged.
  late final pulumi.Output<String> dnsDestinationIpsId;
  /// Specify the UUID of the IPv6 block brought to the gateway so that this location's IPv6 address is allocated from the Bring Your Own IPv6 (BYOIPv6) block rather than the standard Cloudflare IPv6 block.
  late final pulumi.Output<String> dnsDestinationIpv6BlockId;
  /// Specify the DNS over HTTPS domain that receives DNS requests. Gateway automatically generates this value.
  late final pulumi.Output<String> dohSubdomain;
  /// Indicate whether the location must resolve EDNS queries.
  late final pulumi.Output<bool> ecsSupport;
  /// Configure the destination endpoints for this location.
  late final pulumi.Output<ZeroTrustDnsLocationEndpoints?> endpoints;
  /// Defines the automatically generated IPv6 destination IP assigned to this location. Gateway counts all DNS requests sent to this IP as requests under this location.
  late final pulumi.Output<String> ip;
  /// Show the primary destination IPv4 address from the pair identified dns*destination*ips_id. This field read-only.
  late final pulumi.Output<String> ipv4Destination;
  /// Show the backup destination IPv4 address from the pair identified dns*destination*ips_id. This field read-only.
  late final pulumi.Output<String> ipv4DestinationBackup;
  /// Controls how DNS response TTLs are capped for this location relative to the account `maxTtlSecs` setting. Omitting `maxTtl` on update resets it to `inherit`.
  late final pulumi.Output<ZeroTrustDnsLocationMaxTtl> maxTtl;
  /// Specify the location name.
  late final pulumi.Output<String> name;
  /// Specify the list of network ranges from which requests at this location originate. The list takes effect only if it is non-empty and the IPv4 endpoint is enabled for this location.
  late final pulumi.Output<List<ZeroTrustDnsLocationNetwork>> networks;
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [ZeroTrustDnsLocation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustDnsLocation]. {@macro pulumi_index_zero_trust_dns_location_zero_trust_dns_location_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustDnsLocation(
    String name, {
    ZeroTrustDnsLocationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDnsLocation:ZeroTrustDnsLocation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    clientDefault = registerOutput<bool>('clientDefault');
    createdAt = registerOutput<String>('createdAt');
    dnsDestinationIpsId = registerOutput<String>('dnsDestinationIpsId');
    dnsDestinationIpv6BlockId = registerOutput<String>('dnsDestinationIpv6BlockId');
    dohSubdomain = registerOutput<String>('dohSubdomain');
    ecsSupport = registerOutput<bool>('ecsSupport');
    endpoints = registerOutput<ZeroTrustDnsLocationEndpoints?>('endpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDnsLocationEndpoints.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ip = registerOutput<String>('ip');
    ipv4Destination = registerOutput<String>('ipv4Destination');
    ipv4DestinationBackup = registerOutput<String>('ipv4DestinationBackup');
    maxTtl = registerOutput<ZeroTrustDnsLocationMaxTtl>('maxTtl', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDnsLocationMaxTtl.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networks = registerOutput<List<ZeroTrustDnsLocationNetwork>>('networks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDnsLocationNetwork>(guardedValue, (value) => ZeroTrustDnsLocationNetwork.fromMap((value as Map).cast<String, dynamic>())); });
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [ZeroTrustDnsLocation] resource's state with the given [name] and [id].
  static ZeroTrustDnsLocation get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustDnsLocationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustDnsLocation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustDnsLocation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustDnsLocation:ZeroTrustDnsLocation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    clientDefault = registerOutput<bool>('clientDefault');
    createdAt = registerOutput<String>('createdAt');
    dnsDestinationIpsId = registerOutput<String>('dnsDestinationIpsId');
    dnsDestinationIpv6BlockId = registerOutput<String>('dnsDestinationIpv6BlockId');
    dohSubdomain = registerOutput<String>('dohSubdomain');
    ecsSupport = registerOutput<bool>('ecsSupport');
    endpoints = registerOutput<ZeroTrustDnsLocationEndpoints?>('endpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDnsLocationEndpoints.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ip = registerOutput<String>('ip');
    ipv4Destination = registerOutput<String>('ipv4Destination');
    ipv4DestinationBackup = registerOutput<String>('ipv4DestinationBackup');
    maxTtl = registerOutput<ZeroTrustDnsLocationMaxTtl>('maxTtl', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDnsLocationMaxTtl.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networks = registerOutput<List<ZeroTrustDnsLocationNetwork>>('networks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDnsLocationNetwork>(guardedValue, (value) => ZeroTrustDnsLocationNetwork.fromMap((value as Map).cast<String, dynamic>())); });
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [ZeroTrustDnsLocation] resource.
  ZeroTrustDnsLocation.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustDnsLocation:ZeroTrustDnsLocation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    clientDefault = registerOutput<bool>('clientDefault');
    createdAt = registerOutput<String>('createdAt');
    dnsDestinationIpsId = registerOutput<String>('dnsDestinationIpsId');
    dnsDestinationIpv6BlockId = registerOutput<String>('dnsDestinationIpv6BlockId');
    dohSubdomain = registerOutput<String>('dohSubdomain');
    ecsSupport = registerOutput<bool>('ecsSupport');
    endpoints = registerOutput<ZeroTrustDnsLocationEndpoints?>('endpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDnsLocationEndpoints.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ip = registerOutput<String>('ip');
    ipv4Destination = registerOutput<String>('ipv4Destination');
    ipv4DestinationBackup = registerOutput<String>('ipv4DestinationBackup');
    maxTtl = registerOutput<ZeroTrustDnsLocationMaxTtl>('maxTtl', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustDnsLocationMaxTtl.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networks = registerOutput<List<ZeroTrustDnsLocationNetwork>>('networks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ZeroTrustDnsLocationNetwork>(guardedValue, (value) => ZeroTrustDnsLocationNetwork.fromMap((value as Map).cast<String, dynamic>())); });
    updatedAt = registerOutput<String>('updatedAt');
  }
}
