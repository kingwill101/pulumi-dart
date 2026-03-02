// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServiceV3 resources.
class ServiceV3State {
  /// The service description.
  final pulumi.Input<String>? description;
  /// The service status. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The service name.
  final pulumi.Input<String>? name;
  /// The region in which to obtain the V3 Keystone client.
  /// If omitted, the `region` argument of the provider is used.
  final pulumi.Input<String>? region;
  /// The service type.
  final pulumi.Input<String>? type;

  /// Creates a new [ServiceV3State].
  /// [description] The service description.
  /// [enabled] The service status. Defaults to `true`.
  /// [name] The service name.
  /// [region] The region in which to obtain the V3 Keystone client.
  /// [type] The service type.
  ServiceV3State({
    this.description,
    this.enabled,
    this.name,
    this.region,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'enabled': ?enabled,
      'name': ?name,
      'region': ?region,
      'type': ?type,
    };
  }

  factory ServiceV3State.fromMap(Map<String, dynamic> map) {
    return ServiceV3State(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

