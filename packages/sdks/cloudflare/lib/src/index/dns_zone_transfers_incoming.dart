import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_zone_transfers_incoming_args.dart';
import 'dns_zone_transfers_incoming_state.dart';

/// Accepted Permissions
///
/// - `DNS Read`
/// - `DNS Write`
/// - `Zone Settings Read`
/// - `Zone Settings Write`
/// - `Zone Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleDnsZoneTransfersIncoming = new cloudflare.DnsZoneTransfersIncoming("example_dns_zone_transfers_incoming", {
///     zoneId: "269d8f4853475ca241c4e730be286b20",
///     autoRefreshSeconds: 86400,
///     name: "www.example.com.",
///     peers: [
///         "23ff594956f20c2a721606e94745a8aa",
///         "00920f38ce07c2e2f4df50b1f61d4194",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_dns_zone_transfers_incoming = cloudflare.DnsZoneTransfersIncoming("example_dns_zone_transfers_incoming",
///     zone_id="269d8f4853475ca241c4e730be286b20",
///     auto_refresh_seconds=float(86400),
///     name="www.example.com.",
///     peers=[
///         "23ff594956f20c2a721606e94745a8aa",
///         "00920f38ce07c2e2f4df50b1f61d4194",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleDnsZoneTransfersIncoming = new Cloudflare.DnsZoneTransfersIncoming("example_dns_zone_transfers_incoming", new()
///     {
///         ZoneId = "269d8f4853475ca241c4e730be286b20",
///         AutoRefreshSeconds = 86400,
///         Name = "www.example.com.",
///         Peers = new[]
///         {
///             "23ff594956f20c2a721606e94745a8aa",
///             "00920f38ce07c2e2f4df50b1f61d4194",
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
/// 		_, err := cloudflare.NewDnsZoneTransfersIncoming(ctx, "example_dns_zone_transfers_incoming", &cloudflare.DnsZoneTransfersIncomingArgs{
/// 			ZoneId:             pulumi.String("269d8f4853475ca241c4e730be286b20"),
/// 			AutoRefreshSeconds: pulumi.Float64(86400),
/// 			Name:               pulumi.String("www.example.com."),
/// 			Peers: pulumi.StringArray{
/// 				pulumi.String("23ff594956f20c2a721606e94745a8aa"),
/// 				pulumi.String("00920f38ce07c2e2f4df50b1f61d4194"),
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
/// resource "cloudflare_dnszonetransfersincoming" "example_dns_zone_transfers_incoming" {
///   zone_id              = "269d8f4853475ca241c4e730be286b20"
///   auto_refresh_seconds = 86400
///   name                 = "www.example.com."
///   peers                = ["23ff594956f20c2a721606e94745a8aa", "00920f38ce07c2e2f4df50b1f61d4194"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.DnsZoneTransfersIncoming;
/// import com.pulumi.cloudflare.DnsZoneTransfersIncomingArgs;
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
///         var exampleDnsZoneTransfersIncoming = new DnsZoneTransfersIncoming("exampleDnsZoneTransfersIncoming", DnsZoneTransfersIncomingArgs.builder()
///             .zoneId("269d8f4853475ca241c4e730be286b20")
///             .autoRefreshSeconds(86400.0)
///             .name("www.example.com.")
///             .peers(
///                 "23ff594956f20c2a721606e94745a8aa",
///                 "00920f38ce07c2e2f4df50b1f61d4194")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleDnsZoneTransfersIncoming:
///     type: cloudflare:DnsZoneTransfersIncoming
///     name: example_dns_zone_transfers_incoming
///     properties:
///       zoneId: 269d8f4853475ca241c4e730be286b20
///       autoRefreshSeconds: 86400
///       name: www.example.com.
///       peers:
///         - 23ff594956f20c2a721606e94745a8aa
///         - 00920f38ce07c2e2f4df50b1f61d4194
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/dnsZoneTransfersIncoming:DnsZoneTransfersIncoming example '<zone_id>'
/// ```
class DnsZoneTransfersIncoming extends pulumi.CustomResource {
  /// How often should a secondary zone auto refresh regardless of DNS NOTIFY.
  /// Not applicable for primary zones.
  late final pulumi.Output<double> autoRefreshSeconds;
  /// The time for a specific event.
  late final pulumi.Output<String> checkedTime;
  /// The time for a specific event.
  late final pulumi.Output<String> createdTime;
  /// The time for a specific event.
  late final pulumi.Output<String> modifiedTime;
  /// Zone name.
  late final pulumi.Output<String> name;
  /// A list of peer tags.
  late final pulumi.Output<List<String>> peers;
  /// The serial number of the SOA for the given zone.
  late final pulumi.Output<double> soaSerial;
  late final pulumi.Output<String> zoneId;

  /// Creates a new [DnsZoneTransfersIncoming].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DnsZoneTransfersIncoming]. {@macro pulumi_index_dns_zone_transfers_incoming_dns_zone_transfers_incoming_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DnsZoneTransfersIncoming(
    String name, {
    DnsZoneTransfersIncomingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/dnsZoneTransfersIncoming:DnsZoneTransfersIncoming',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    autoRefreshSeconds = registerOutput<double>('autoRefreshSeconds');
    checkedTime = registerOutput<String>('checkedTime');
    createdTime = registerOutput<String>('createdTime');
    modifiedTime = registerOutput<String>('modifiedTime');
    this.name = registerOutput<String>('name');
    peers = registerOutput<List<String>>('peers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    soaSerial = registerOutput<double>('soaSerial');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [DnsZoneTransfersIncoming] resource's state with the given [name] and [id].
  static DnsZoneTransfersIncoming get(
    String name,
    pulumi.Input<String> id, {
    DnsZoneTransfersIncomingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DnsZoneTransfersIncoming._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DnsZoneTransfersIncoming._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/dnsZoneTransfersIncoming:DnsZoneTransfersIncoming',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoRefreshSeconds = registerOutput<double>('autoRefreshSeconds');
    checkedTime = registerOutput<String>('checkedTime');
    createdTime = registerOutput<String>('createdTime');
    modifiedTime = registerOutput<String>('modifiedTime');
    this.name = registerOutput<String>('name');
    peers = registerOutput<List<String>>('peers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    soaSerial = registerOutput<double>('soaSerial');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [DnsZoneTransfersIncoming] resource.
  DnsZoneTransfersIncoming.reference(String urn)
    : super(
        'cloudflare:index/dnsZoneTransfersIncoming:DnsZoneTransfersIncoming',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    autoRefreshSeconds = registerOutput<double>('autoRefreshSeconds');
    checkedTime = registerOutput<String>('checkedTime');
    createdTime = registerOutput<String>('createdTime');
    modifiedTime = registerOutput<String>('modifiedTime');
    this.name = registerOutput<String>('name');
    peers = registerOutput<List<String>>('peers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    soaSerial = registerOutput<double>('soaSerial');
    zoneId = registerOutput<String>('zoneId');
  }
}
