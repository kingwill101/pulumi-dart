// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_v3_get_service_args_doc}
/// Arguments for getService.
/// {@endtemplate}
/// {@macro pulumi_monitoring_v3_get_service_args_doc}
class GetServiceArgs {
  final pulumi.Input<String> serviceId;
  final pulumi.Input<String> v3Id;
  final pulumi.Input<String> v3Id1;

  /// Creates a new [GetServiceArgs].
  /// [serviceId] Required.
  /// [v3Id] Required.
  /// [v3Id1] Required.
  const GetServiceArgs({
    required this.serviceId,
    required this.v3Id,
    required this.v3Id1,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceId': serviceId,
      'v3Id': v3Id,
      'v3Id1': v3Id1,
    };
  }

  factory GetServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceArgs(
      serviceId: pulumi.Input.fromValue(map['serviceId'] as String),
      v3Id: pulumi.Input.fromValue(map['v3Id'] as String),
      v3Id1: pulumi.Input.fromValue(map['v3Id1'] as String),
    );
  }
}

