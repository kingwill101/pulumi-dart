// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_accesscontextmanager_get_supported_service_get_supported_service_args_doc}
/// Arguments for getSupportedService.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_get_supported_service_get_supported_service_args_doc}
class GetSupportedServiceArgs {
  /// The name of the service to get information about. The names must be in the same format as used in defining a service perimeter, for example, `storage.googleapis.com`.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetSupportedServiceArgs].
  /// [serviceName] The name of the service to get information about. The names must be in the same format as used in defining a service perimeter, for example, `storage.googleapis.com`.
  const GetSupportedServiceArgs({
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceName': serviceName,
    };
  }

  factory GetSupportedServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetSupportedServiceArgs(
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
