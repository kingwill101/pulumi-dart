// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UptimeCheck resources.
class UptimeCheckState {
  /// A boolean value indicating whether the check is enabled/disabled.
  final pulumi.Input<bool>? enabled;
  /// A human-friendly display name for the check.
  final pulumi.Input<String>? name;
  /// An array containing the selected regions to perform healthchecks from: "us_east", "us_west", "eu_west", "se_asia"
  final pulumi.Input<List<String>>? regions;
  /// The endpoint to perform healthchecks on.
  final pulumi.Input<String>? target;
  /// The type of health check to perform: 'ping' 'http' 'https'.
  final pulumi.Input<String>? type;

  /// Creates a new [UptimeCheckState].
  /// [enabled] A boolean value indicating whether the check is enabled/disabled.
  /// [name] A human-friendly display name for the check.
  /// [regions] An array containing the selected regions to perform healthchecks from: "us_east", "us_west", "eu_west", "se_asia"
  /// [target] The endpoint to perform healthchecks on.
  /// [type] The type of health check to perform: 'ping' 'http' 'https'.
  UptimeCheckState({
    this.enabled,
    this.name,
    this.regions,
    this.target,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'name': ?name,
      'regions': ?regions,
      'target': ?target,
      'type': ?type,
    };
  }

  factory UptimeCheckState.fromMap(Map<String, dynamic> map) {
    return UptimeCheckState(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      regions: map['regions'] == null ? null : ((map['regions'] as List).cast<String>()).input(),
      target: map['target'] == null ? null : (map['target'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

