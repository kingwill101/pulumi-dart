// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_identity_service_v3_service_v3_args_doc}
/// The set of arguments for ServiceV3.
/// {@endtemplate}
/// {@macro pulumi_identity_service_v3_service_v3_args_doc}
class ServiceV3Args {
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
  final pulumi.Input<String> type;

  /// Creates a new [ServiceV3Args].
  /// [description] The service description.
  /// [enabled] The service status. Defaults to `true`.
  /// [name] The service name.
  /// [region] The region in which to obtain the V3 Keystone client.
  /// [type] The service type.
  ServiceV3Args({
    this.description,
    this.enabled,
    this.name,
    this.region,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'enabled': ?enabled,
      'name': ?name,
      'region': ?region,
      'type': type,
    };
  }

  factory ServiceV3Args.fromMap(Map<String, dynamic> map) {
    return ServiceV3Args(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
