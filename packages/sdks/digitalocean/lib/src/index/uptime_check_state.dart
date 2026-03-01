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
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? regions,
    pulumi.Output<String>? target,
    pulumi.Output<String>? type,
  }) :
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      regions = pulumi.Input.asOptionalInput<List<String>>(regions),
      target = pulumi.Input.asOptionalInput<String>(target),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      regions: map['regions'] == null ? null : pulumi.Output.create<List<String>>((map['regions'] as List).cast<String>()),
      target: map['target'] == null ? null : pulumi.Output.create<String>(map['target'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

