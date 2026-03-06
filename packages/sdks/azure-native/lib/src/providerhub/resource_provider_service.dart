// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource provider service.
class ResourceProviderService {
  /// The service name.
  final pulumi.Input<String>? serviceName;
  /// The status.
  final pulumi.Input<String>? status;

  /// Creates a new [ResourceProviderService].
  /// [serviceName] The service name.
  /// [status] The status.
  const ResourceProviderService({
    this.serviceName,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceName': ?serviceName,
      'status': ?status,
    };
  }

  factory ResourceProviderService.fromMap(Map<String, dynamic> map) {
    return ResourceProviderService(
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

