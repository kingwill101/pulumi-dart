import 'package:pulumi/pulumi.dart' as pulumi;
import 'magic_network_monitoring_rule_args.dart';
import 'magic_network_monitoring_rule_state.dart';

/// Accepted Permissions
///
/// - `Magic Network Monitoring Admin`
/// - `Magic Network Monitoring Config Read`
/// - `Magic Network Monitoring Config Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleMagicNetworkMonitoringRule = new cloudflare.MagicNetworkMonitoringRule("example_magic_network_monitoring_rule", {
///     accountId: "6f91088a406011ed95aed352566e8d4c",
///     automaticAdvertisement: true,
///     name: "my_rule_1",
///     prefixes: ["203.0.113.1/32"],
///     type: "zscore",
///     bandwidthThreshold: 1000,
///     duration: "1m",
///     packetThreshold: 10000,
///     prefixMatch: "exact",
///     zscoreSensitivity: "high",
///     zscoreTarget: "bits",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_magic_network_monitoring_rule = cloudflare.MagicNetworkMonitoringRule("example_magic_network_monitoring_rule",
///     account_id="6f91088a406011ed95aed352566e8d4c",
///     automatic_advertisement=True,
///     name="my_rule_1",
///     prefixes=["203.0.113.1/32"],
///     type="zscore",
///     bandwidth_threshold=float(1000),
///     duration="1m",
///     packet_threshold=float(10000),
///     prefix_match="exact",
///     zscore_sensitivity="high",
///     zscore_target="bits")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleMagicNetworkMonitoringRule = new Cloudflare.MagicNetworkMonitoringRule("example_magic_network_monitoring_rule", new()
///     {
///         AccountId = "6f91088a406011ed95aed352566e8d4c",
///         AutomaticAdvertisement = true,
///         Name = "my_rule_1",
///         Prefixes = new[]
///         {
///             "203.0.113.1/32",
///         },
///         Type = "zscore",
///         BandwidthThreshold = 1000,
///         Duration = "1m",
///         PacketThreshold = 10000,
///         PrefixMatch = "exact",
///         ZscoreSensitivity = "high",
///         ZscoreTarget = "bits",
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
/// 		_, err := cloudflare.NewMagicNetworkMonitoringRule(ctx, "example_magic_network_monitoring_rule", &cloudflare.MagicNetworkMonitoringRuleArgs{
/// 			AccountId:              pulumi.String("6f91088a406011ed95aed352566e8d4c"),
/// 			AutomaticAdvertisement: pulumi.Bool(true),
/// 			Name:                   pulumi.String("my_rule_1"),
/// 			Prefixes: pulumi.StringArray{
/// 				pulumi.String("203.0.113.1/32"),
/// 			},
/// 			Type:               pulumi.String("zscore"),
/// 			BandwidthThreshold: pulumi.Float64(1000),
/// 			Duration:           pulumi.String("1m"),
/// 			PacketThreshold:    pulumi.Float64(10000),
/// 			PrefixMatch:        pulumi.String("exact"),
/// 			ZscoreSensitivity:  pulumi.String("high"),
/// 			ZscoreTarget:       pulumi.String("bits"),
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
/// resource "cloudflare_magicnetworkmonitoringrule" "example_magic_network_monitoring_rule" {
///   account_id              = "6f91088a406011ed95aed352566e8d4c"
///   automatic_advertisement = true
///   name                    = "my_rule_1"
///   prefixes                = ["203.0.113.1/32"]
///   type                    = "zscore"
///   bandwidth_threshold     = 1000
///   duration                = "1m"
///   packet_threshold        = 10000
///   prefix_match            = "exact"
///   zscore_sensitivity      = "high"
///   zscore_target           = "bits"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.MagicNetworkMonitoringRule;
/// import com.pulumi.cloudflare.MagicNetworkMonitoringRuleArgs;
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
///         var exampleMagicNetworkMonitoringRule = new MagicNetworkMonitoringRule("exampleMagicNetworkMonitoringRule", MagicNetworkMonitoringRuleArgs.builder()
///             .accountId("6f91088a406011ed95aed352566e8d4c")
///             .automaticAdvertisement(true)
///             .name("my_rule_1")
///             .prefixes("203.0.113.1/32")
///             .type("zscore")
///             .bandwidthThreshold(1000.0)
///             .duration("1m")
///             .packetThreshold(10000.0)
///             .prefixMatch("exact")
///             .zscoreSensitivity("high")
///             .zscoreTarget("bits")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleMagicNetworkMonitoringRule:
///     type: cloudflare:MagicNetworkMonitoringRule
///     name: example_magic_network_monitoring_rule
///     properties:
///       accountId: 6f91088a406011ed95aed352566e8d4c
///       automaticAdvertisement: true
///       name: my_rule_1
///       prefixes:
///         - 203.0.113.1/32
///       type: zscore
///       bandwidthThreshold: 1000
///       duration: 1m
///       packetThreshold: 10000
///       prefixMatch: exact
///       zscoreSensitivity: high
///       zscoreTarget: bits
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/magicNetworkMonitoringRule:MagicNetworkMonitoringRule example '<account_id>/<rule_id>'
/// ```
class MagicNetworkMonitoringRule extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  /// Toggle on if you would like Cloudflare to automatically advertise the IP Prefixes within the rule via Magic Transit when the rule is triggered. Only available for users of Magic Transit.
  late final pulumi.Output<bool> automaticAdvertisement;
  /// The number of bits per second for the rule. When this value is exceeded for the set duration, an alert notification is sent. Minimum of 1 and no maximum.
  late final pulumi.Output<double?> bandwidthThreshold;
  /// The amount of time that the rule threshold must be exceeded to send an alert notification. The final value must be equivalent to one of the following 8 values ["1m","5m","10m","15m","20m","30m","45m","60m"].
  /// Available values: "1m", "5m", "10m", "15m", "20m", "30m", "45m", "60m".
  late final pulumi.Output<String> duration;
  /// The name of the rule. Must be unique. Supports characters A-Z, a-z, 0-9, underscore (_), dash (-), period (.), and tilde (~). You can’t have a space in the rule name. Max 256 characters.
  late final pulumi.Output<String> name;
  /// The number of packets per second for the rule. When this value is exceeded for the set duration, an alert notification is sent. Minimum of 1 and no maximum.
  late final pulumi.Output<double?> packetThreshold;
  /// Prefix match type to be applied for a prefix auto advertisement when using an advancedDdos rule.
  /// Available values: "exact", "subnet", "supernet".
  late final pulumi.Output<String?> prefixMatch;
  late final pulumi.Output<List<String>> prefixes;
  /// MNM rule type.
  /// Available values: "threshold", "zscore", "advancedDdos".
  late final pulumi.Output<String> type;
  /// Level of sensitivity set for zscore rules.
  /// Available values: "low", "medium", "high".
  late final pulumi.Output<String?> zscoreSensitivity;
  /// Target of the zscore rule analysis.
  /// Available values: "bits", "packets".
  late final pulumi.Output<String?> zscoreTarget;

  /// Creates a new [MagicNetworkMonitoringRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MagicNetworkMonitoringRule]. {@macro pulumi_index_magic_network_monitoring_rule_magic_network_monitoring_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MagicNetworkMonitoringRule(
    String name, {
    MagicNetworkMonitoringRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/magicNetworkMonitoringRule:MagicNetworkMonitoringRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    automaticAdvertisement = registerOutput<bool>('automaticAdvertisement');
    bandwidthThreshold = registerOutput<double?>('bandwidthThreshold');
    duration = registerOutput<String>('duration');
    this.name = registerOutput<String>('name');
    packetThreshold = registerOutput<double?>('packetThreshold');
    prefixMatch = registerOutput<String?>('prefixMatch');
    prefixes = registerOutput<List<String>>('prefixes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    type = registerOutput<String>('type');
    zscoreSensitivity = registerOutput<String?>('zscoreSensitivity');
    zscoreTarget = registerOutput<String?>('zscoreTarget');
  }

  /// Gets an existing [MagicNetworkMonitoringRule] resource's state with the given [name] and [id].
  static MagicNetworkMonitoringRule get(
    String name,
    pulumi.Input<String> id, {
    MagicNetworkMonitoringRuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MagicNetworkMonitoringRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MagicNetworkMonitoringRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/magicNetworkMonitoringRule:MagicNetworkMonitoringRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    automaticAdvertisement = registerOutput<bool>('automaticAdvertisement');
    bandwidthThreshold = registerOutput<double?>('bandwidthThreshold');
    duration = registerOutput<String>('duration');
    this.name = registerOutput<String>('name');
    packetThreshold = registerOutput<double?>('packetThreshold');
    prefixMatch = registerOutput<String?>('prefixMatch');
    prefixes = registerOutput<List<String>>('prefixes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    type = registerOutput<String>('type');
    zscoreSensitivity = registerOutput<String?>('zscoreSensitivity');
    zscoreTarget = registerOutput<String?>('zscoreTarget');
  }

  /// Creates a typed reference to an existing [MagicNetworkMonitoringRule] resource.
  MagicNetworkMonitoringRule.reference(String urn)
    : super(
        'cloudflare:index/magicNetworkMonitoringRule:MagicNetworkMonitoringRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    automaticAdvertisement = registerOutput<bool>('automaticAdvertisement');
    bandwidthThreshold = registerOutput<double?>('bandwidthThreshold');
    duration = registerOutput<String>('duration');
    this.name = registerOutput<String>('name');
    packetThreshold = registerOutput<double?>('packetThreshold');
    prefixMatch = registerOutput<String?>('prefixMatch');
    prefixes = registerOutput<List<String>>('prefixes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    type = registerOutput<String>('type');
    zscoreSensitivity = registerOutput<String?>('zscoreSensitivity');
    zscoreTarget = registerOutput<String?>('zscoreTarget');
  }
}
