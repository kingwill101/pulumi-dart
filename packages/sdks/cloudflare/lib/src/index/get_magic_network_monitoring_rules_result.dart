// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMagicNetworkMonitoringRulesResult {
  /// Toggle on if you would like Cloudflare to automatically advertise the IP Prefixes within the rule via Magic Transit when the rule is triggered. Only available for users of Magic Transit.
  final pulumi.Input<bool> automaticAdvertisement;
  /// The number of bits per second for the rule. When this value is exceeded for the set duration, an alert notification is sent. Minimum of 1 and no maximum.
  final pulumi.Input<double> bandwidthThreshold;
  /// The amount of time that the rule threshold must be exceeded to send an alert notification. The final value must be equivalent to one of the following 8 values ["1m","5m","10m","15m","20m","30m","45m","60m"].
  /// Available values: "1m", "5m", "10m", "15m", "20m", "30m", "45m", "60m".
  final pulumi.Input<String> duration;
  /// The id of the rule. Must be unique.
  final pulumi.Input<String> id;
  /// The name of the rule. Must be unique. Supports characters A-Z, a-z, 0-9, underscore (_), dash (-), period (.), and tilde (~). You can’t have a space in the rule name. Max 256 characters.
  final pulumi.Input<String> name;
  /// The number of packets per second for the rule. When this value is exceeded for the set duration, an alert notification is sent. Minimum of 1 and no maximum.
  final pulumi.Input<double> packetThreshold;
  /// Prefix match type to be applied for a prefix auto advertisement when using an advancedDdos rule.
  /// Available values: "exact", "subnet", "supernet".
  final pulumi.Input<String> prefixMatch;
  final pulumi.Input<List<String>> prefixes;
  /// MNM rule type.
  /// Available values: "threshold", "zscore", "advancedDdos".
  final pulumi.Input<String> type;
  /// Level of sensitivity set for zscore rules.
  /// Available values: "low", "medium", "high".
  final pulumi.Input<String> zscoreSensitivity;
  /// Target of the zscore rule analysis.
  /// Available values: "bits", "packets".
  final pulumi.Input<String> zscoreTarget;

  /// Creates a new [GetMagicNetworkMonitoringRulesResult].
  /// [automaticAdvertisement] Toggle on if you would like Cloudflare to automatically advertise the IP Prefixes within the rule via Magic Transit when the rule is triggered. Only available for users of Magic Transit.
  /// [bandwidthThreshold] The number of bits per second for the rule. When this value is exceeded for the set duration, an alert notification is sent. Minimum of 1 and no maximum.
  /// [duration] The amount of time that the rule threshold must be exceeded to send an alert notification. The final value must be equivalent to one of the following 8 values ["1m","5m","10m","15m","20m","30m","45m","60m"].
  /// [id] The id of the rule. Must be unique.
  /// [name] The name of the rule. Must be unique. Supports characters A-Z, a-z, 0-9, underscore (_), dash (-), period (.), and tilde (~). You can’t have a space in the rule name. Max 256 characters.
  /// [packetThreshold] The number of packets per second for the rule. When this value is exceeded for the set duration, an alert notification is sent. Minimum of 1 and no maximum.
  /// [prefixMatch] Prefix match type to be applied for a prefix auto advertisement when using an advancedDdos rule.
  /// [prefixes] Required.
  /// [type] MNM rule type.
  /// [zscoreSensitivity] Level of sensitivity set for zscore rules.
  /// [zscoreTarget] Target of the zscore rule analysis.
  const GetMagicNetworkMonitoringRulesResult({
    required this.automaticAdvertisement,
    required this.bandwidthThreshold,
    required this.duration,
    required this.id,
    required this.name,
    required this.packetThreshold,
    required this.prefixMatch,
    required this.prefixes,
    required this.type,
    required this.zscoreSensitivity,
    required this.zscoreTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticAdvertisement': automaticAdvertisement,
      'bandwidthThreshold': bandwidthThreshold,
      'duration': duration,
      'id': id,
      'name': name,
      'packetThreshold': packetThreshold,
      'prefixMatch': prefixMatch,
      'prefixes': prefixes,
      'type': type,
      'zscoreSensitivity': zscoreSensitivity,
      'zscoreTarget': zscoreTarget,
    };
  }

  factory GetMagicNetworkMonitoringRulesResult.fromMap(Map<String, dynamic> map) {
    return GetMagicNetworkMonitoringRulesResult(
      automaticAdvertisement: pulumi.Input.fromValue(map['automaticAdvertisement'] as bool),
      bandwidthThreshold: pulumi.Input.fromValue((map['bandwidthThreshold'] as num).toDouble()),
      duration: pulumi.Input.fromValue(map['duration'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      packetThreshold: pulumi.Input.fromValue((map['packetThreshold'] as num).toDouble()),
      prefixMatch: pulumi.Input.fromValue(map['prefixMatch'] as String),
      prefixes: pulumi.Input.fromValue((map['prefixes'] as List).cast<String>()),
      type: pulumi.Input.fromValue(map['type'] as String),
      zscoreSensitivity: pulumi.Input.fromValue(map['zscoreSensitivity'] as String),
      zscoreTarget: pulumi.Input.fromValue(map['zscoreTarget'] as String),
    );
  }
}
