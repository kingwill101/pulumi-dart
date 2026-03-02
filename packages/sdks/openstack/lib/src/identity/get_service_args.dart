// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_identity_get_service_get_service_args_doc}
/// Arguments for getService.
/// {@endtemplate}
/// {@macro pulumi_identity_get_service_get_service_args_doc}
class GetServiceArgs {
  /// The service status.
  final pulumi.Input<bool>? enabled;
  /// The service name.
  final pulumi.Input<String>? name;
  /// The region in which to obtain the V3 Keystone client.
  /// If omitted, the `region` argument of the provider is used.
  final pulumi.Input<String>? region;
  /// The service type.
  final pulumi.Input<String>? type;

  /// Creates a new [GetServiceArgs].
  /// [enabled] The service status.
  /// [name] The service name.
  /// [region] The region in which to obtain the V3 Keystone client.
  /// [type] The service type.
  GetServiceArgs({
    this.enabled,
    this.name,
    this.region,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'name': ?name,
      'region': ?region,
      'type': ?type,
    };
  }

  factory GetServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceArgs(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

