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
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? type,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

