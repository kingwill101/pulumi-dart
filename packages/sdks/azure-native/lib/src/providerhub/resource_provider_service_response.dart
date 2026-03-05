// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource provider service.
class ResourceProviderServiceResponse {
  /// The service name.
  final pulumi.Input<String>? serviceName;
  /// The status.
  final pulumi.Input<String>? status;

  /// Creates a new [ResourceProviderServiceResponse].
  /// [serviceName] The service name.
  /// [status] The status.
  ResourceProviderServiceResponse({
    this.serviceName,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceName': ?serviceName,
      'status': ?status,
    };
  }

  factory ResourceProviderServiceResponse.fromMap(Map<String, dynamic> map) {
    return ResourceProviderServiceResponse(
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

