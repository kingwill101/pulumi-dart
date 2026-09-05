import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_zone_transfers_outgoing_args.dart';
import 'dns_zone_transfers_outgoing_state.dart';

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
/// const exampleDnsZoneTransfersOutgoing = new cloudflare.DnsZoneTransfersOutgoing("example_dns_zone_transfers_outgoing", {
///     zoneId: "269d8f4853475ca241c4e730be286b20",
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
/// example_dns_zone_transfers_outgoing = cloudflare.DnsZoneTransfersOutgoing("example_dns_zone_transfers_outgoing",
///     zone_id="269d8f4853475ca241c4e730be286b20",
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
///     var exampleDnsZoneTransfersOutgoing = new Cloudflare.DnsZoneTransfersOutgoing("example_dns_zone_transfers_outgoing", new()
///     {
///         ZoneId = "269d8f4853475ca241c4e730be286b20",
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
/// 		_, err := cloudflare.NewDnsZoneTransfersOutgoing(ctx, "example_dns_zone_transfers_outgoing", &cloudflare.DnsZoneTransfersOutgoingArgs{
/// 			ZoneId: pulumi.String("269d8f4853475ca241c4e730be286b20"),
/// 			Name:   pulumi.String("www.example.com."),
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
/// resource "cloudflare_dnszonetransfersoutgoing" "example_dns_zone_transfers_outgoing" {
///   zone_id = "269d8f4853475ca241c4e730be286b20"
///   name    = "www.example.com."
///   peers   = ["23ff594956f20c2a721606e94745a8aa", "00920f38ce07c2e2f4df50b1f61d4194"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.DnsZoneTransfersOutgoing;
/// import com.pulumi.cloudflare.DnsZoneTransfersOutgoingArgs;
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
///         var exampleDnsZoneTransfersOutgoing = new DnsZoneTransfersOutgoing("exampleDnsZoneTransfersOutgoing", DnsZoneTransfersOutgoingArgs.builder()
///             .zoneId("269d8f4853475ca241c4e730be286b20")
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
///   exampleDnsZoneTransfersOutgoing:
///     type: cloudflare:DnsZoneTransfersOutgoing
///     name: example_dns_zone_transfers_outgoing
///     properties:
///       zoneId: 269d8f4853475ca241c4e730be286b20
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
/// $ pulumi import cloudflare:index/dnsZoneTransfersOutgoing:DnsZoneTransfersOutgoing example '<zone_id>'
/// ```
class DnsZoneTransfersOutgoing extends pulumi.CustomResource {
  /// The time for a specific event.
  late final pulumi.Output<String> checkedTime;
  /// The time for a specific event.
  late final pulumi.Output<String> createdTime;
  /// The time for a specific event.
  late final pulumi.Output<String> lastTransferredTime;
  /// Zone name.
  late final pulumi.Output<String> name;
  /// A list of peer tags.
  late final pulumi.Output<List<String>> peers;
  /// The serial number of the SOA for the given zone.
  late final pulumi.Output<double> soaSerial;
  late final pulumi.Output<String> zoneId;

  /// Creates a new [DnsZoneTransfersOutgoing].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DnsZoneTransfersOutgoing]. {@macro pulumi_index_dns_zone_transfers_outgoing_dns_zone_transfers_outgoing_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DnsZoneTransfersOutgoing(
    String name, {
    DnsZoneTransfersOutgoingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/dnsZoneTransfersOutgoing:DnsZoneTransfersOutgoing',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    checkedTime = registerOutput<String>('checkedTime');
    createdTime = registerOutput<String>('createdTime');
    lastTransferredTime = registerOutput<String>('lastTransferredTime');
    this.name = registerOutput<String>('name');
    peers = registerOutput<List<String>>('peers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    soaSerial = registerOutput<double>('soaSerial');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [DnsZoneTransfersOutgoing] resource's state with the given [name] and [id].
  static DnsZoneTransfersOutgoing get(
    String name,
    pulumi.Input<String> id, {
    DnsZoneTransfersOutgoingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DnsZoneTransfersOutgoing._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DnsZoneTransfersOutgoing._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/dnsZoneTransfersOutgoing:DnsZoneTransfersOutgoing',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    checkedTime = registerOutput<String>('checkedTime');
    createdTime = registerOutput<String>('createdTime');
    lastTransferredTime = registerOutput<String>('lastTransferredTime');
    this.name = registerOutput<String>('name');
    peers = registerOutput<List<String>>('peers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    soaSerial = registerOutput<double>('soaSerial');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [DnsZoneTransfersOutgoing] resource.
  DnsZoneTransfersOutgoing.reference(String urn)
    : super(
        'cloudflare:index/dnsZoneTransfersOutgoing:DnsZoneTransfersOutgoing',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    checkedTime = registerOutput<String>('checkedTime');
    createdTime = registerOutput<String>('createdTime');
    lastTransferredTime = registerOutput<String>('lastTransferredTime');
    this.name = registerOutput<String>('name');
    peers = registerOutput<List<String>>('peers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    soaSerial = registerOutput<double>('soaSerial');
    zoneId = registerOutput<String>('zoneId');
  }
}
