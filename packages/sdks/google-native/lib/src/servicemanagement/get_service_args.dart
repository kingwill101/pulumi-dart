// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicemanagement_v1_get_service_args_doc}
/// Arguments for getService.
/// {@endtemplate}
/// {@macro pulumi_servicemanagement_v1_get_service_args_doc}
class GetServiceArgs {
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetServiceArgs].
  /// [serviceName] Required.
  const GetServiceArgs({
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceName': serviceName,
    };
  }

  factory GetServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceArgs(
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
