// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_magic_network_monitoring_rule_magic_network_monitoring_rule_args_doc}
/// The set of arguments for MagicNetworkMonitoringRule.
/// {@endtemplate}
/// {@macro pulumi_index_magic_network_monitoring_rule_magic_network_monitoring_rule_args_doc}
class MagicNetworkMonitoringRuleArgs {
  final pulumi.Input<String> accountId;
  /// Toggle on if you would like Cloudflare to automatically advertise the IP Prefixes within the rule via Magic Transit when the rule is triggered. Only available for users of Magic Transit.
  final pulumi.Input<bool> automaticAdvertisement;
  /// The number of bits per second for the rule. When this value is exceeded for the set duration, an alert notification is sent. Minimum of 1 and no maximum.
  final pulumi.Input<double?>? bandwidthThreshold;
  /// The amount of time that the rule threshold must be exceeded to send an alert notification. The final value must be equivalent to one of the following 8 values ["1m","5m","10m","15m","20m","30m","45m","60m"].
  /// Available values: "1m", "5m", "10m", "15m", "20m", "30m", "45m", "60m".
  final pulumi.Input<String?>? duration;
  /// The name of the rule. Must be unique. Supports characters A-Z, a-z, 0-9, underscore (_), dash (-), period (.), and tilde (~). You can’t have a space in the rule name. Max 256 characters.
  final pulumi.Input<String> name;
  /// The number of packets per second for the rule. When this value is exceeded for the set duration, an alert notification is sent. Minimum of 1 and no maximum.
  final pulumi.Input<double?>? packetThreshold;
  /// Prefix match type to be applied for a prefix auto advertisement when using an advancedDdos rule.
  /// Available values: "exact", "subnet", "supernet".
  final pulumi.Input<String?>? prefixMatch;
  final pulumi.Input<List<String>> prefixes;
  /// MNM rule type.
  /// Available values: "threshold", "zscore", "advancedDdos".
  final pulumi.Input<String> type;
  /// Level of sensitivity set for zscore rules.
  /// Available values: "low", "medium", "high".
  final pulumi.Input<String?>? zscoreSensitivity;
  /// Target of the zscore rule analysis.
  /// Available values: "bits", "packets".
  final pulumi.Input<String?>? zscoreTarget;

  /// Creates a new [MagicNetworkMonitoringRuleArgs].
  /// [accountId] Required.
  /// [automaticAdvertisement] Toggle on if you would like Cloudflare to automatically advertise the IP Prefixes within the rule via Magic Transit when the rule is triggered. Only available for users of Magic Transit.
  /// [bandwidthThreshold] The number of bits per second for the rule. When this value is exceeded for the set duration, an alert notification is sent. Minimum of 1 and no maximum.
  /// [duration] The amount of time that the rule threshold must be exceeded to send an alert notification. The final value must be equivalent to one of the following 8 values ["1m","5m","10m","15m","20m","30m","45m","60m"].
  /// [name] The name of the rule. Must be unique. Supports characters A-Z, a-z, 0-9, underscore (_), dash (-), period (.), and tilde (~). You can’t have a space in the rule name. Max 256 characters.
  /// [packetThreshold] The number of packets per second for the rule. When this value is exceeded for the set duration, an alert notification is sent. Minimum of 1 and no maximum.
  /// [prefixMatch] Prefix match type to be applied for a prefix auto advertisement when using an advancedDdos rule.
  /// [prefixes] Required.
  /// [type] MNM rule type.
  /// [zscoreSensitivity] Level of sensitivity set for zscore rules.
  /// [zscoreTarget] Target of the zscore rule analysis.
  const MagicNetworkMonitoringRuleArgs({
    required this.accountId,
    required this.automaticAdvertisement,
    this.bandwidthThreshold,
    this.duration,
    required this.name,
    this.packetThreshold,
    this.prefixMatch,
    required this.prefixes,
    required this.type,
    this.zscoreSensitivity,
    this.zscoreTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'automaticAdvertisement': automaticAdvertisement,
      'bandwidthThreshold': ?bandwidthThreshold,
      'duration': ?duration,
      'name': name,
      'packetThreshold': ?packetThreshold,
      'prefixMatch': ?prefixMatch,
      'prefixes': prefixes,
      'type': type,
      'zscoreSensitivity': ?zscoreSensitivity,
      'zscoreTarget': ?zscoreTarget,
    };
  }

  factory MagicNetworkMonitoringRuleArgs.fromMap(Map<String, dynamic> map) {
    return MagicNetworkMonitoringRuleArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      automaticAdvertisement: pulumi.Input.fromValue(map['automaticAdvertisement'] as bool),
      bandwidthThreshold: (() { final guardedValue = map['bandwidthThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      packetThreshold: (() { final guardedValue = map['packetThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      prefixMatch: (() { final guardedValue = map['prefixMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefixes: pulumi.Input.fromValue((map['prefixes'] as List).cast<String>()),
      type: pulumi.Input.fromValue(map['type'] as String),
      zscoreSensitivity: (() { final guardedValue = map['zscoreSensitivity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zscoreTarget: (() { final guardedValue = map['zscoreTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
