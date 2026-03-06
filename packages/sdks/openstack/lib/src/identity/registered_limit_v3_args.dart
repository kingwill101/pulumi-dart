// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_identity_registered_limit_v3_registered_limit_v3_args_doc}
/// The set of arguments for RegisteredLimitV3.
/// {@endtemplate}
/// {@macro pulumi_identity_registered_limit_v3_registered_limit_v3_args_doc}
class RegisteredLimitV3Args {
  /// Integer for the actual limit.
  final pulumi.Input<int> defaultLimit;
  /// Description of the limit
  final pulumi.Input<String>? description;
  /// The region in which to obtain the V3 Keystone client.
  /// If omitted, the `region` argument of the provider is used. Changing this
  /// creates a new registered limit.
  final pulumi.Input<String>? region;
  /// The resource that the limit applies to. On
  /// updates, either service_id, resource_name or region_id must be different than
  /// existing value otherwise it will raise 409.
  final pulumi.Input<String> resourceName;
  /// The service the limit applies to. On updates,
  /// either service_id, resource_name or region_id must be different than existing
  /// value otherwise it will raise 409.
  final pulumi.Input<String> serviceId;

  /// Creates a new [RegisteredLimitV3Args].
  /// [defaultLimit] Integer for the actual limit.
  /// [description] Description of the limit
  /// [region] The region in which to obtain the V3 Keystone client.
  /// [resourceName] The resource that the limit applies to. On
  /// [serviceId] The service the limit applies to. On updates,
  const RegisteredLimitV3Args({
    required this.defaultLimit,
    this.description,
    this.region,
    required this.resourceName,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultLimit': defaultLimit,
      'description': ?description,
      'region': ?region,
      'resourceName': resourceName,
      'serviceId': serviceId,
    };
  }

  factory RegisteredLimitV3Args.fromMap(Map<String, dynamic> map) {
    return RegisteredLimitV3Args(
      defaultLimit: pulumi.Input.fromValue(map['defaultLimit'] as int),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      serviceId: pulumi.Input.fromValue(map['serviceId'] as String),
    );
  }
}

