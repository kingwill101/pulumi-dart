// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_uptime_check_uptime_check_args_doc}
/// The set of arguments for UptimeCheck.
/// {@endtemplate}
/// {@macro pulumi_index_uptime_check_uptime_check_args_doc}
class UptimeCheckArgs {
  /// A boolean value indicating whether the check is enabled/disabled.
  final pulumi.Input<bool>? enabled;
  /// A human-friendly display name for the check.
  final pulumi.Input<String>? name;
  /// An array containing the selected regions to perform healthchecks from: "us_east", "us_west", "eu_west", "se_asia"
  final pulumi.Input<List<String>>? regions;
  /// The endpoint to perform healthchecks on.
  final pulumi.Input<String> target;
  /// The type of health check to perform: 'ping' 'http' 'https'.
  final pulumi.Input<String>? type;

  /// Creates a new [UptimeCheckArgs].
  /// [enabled] A boolean value indicating whether the check is enabled/disabled.
  /// [name] A human-friendly display name for the check.
  /// [regions] An array containing the selected regions to perform healthchecks from: "us_east", "us_west", "eu_west", "se_asia"
  /// [target] The endpoint to perform healthchecks on.
  /// [type] The type of health check to perform: 'ping' 'http' 'https'.
  UptimeCheckArgs({
    this.enabled,
    this.name,
    this.regions,
    required this.target,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'name': ?name,
      'regions': ?regions,
      'target': target,
      'type': ?type,
    };
  }

  factory UptimeCheckArgs.fromMap(Map<String, dynamic> map) {
    return UptimeCheckArgs(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      regions: map['regions'] == null ? null : ((map['regions'] as List).cast<String>()).input(),
      target: (map['target'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

