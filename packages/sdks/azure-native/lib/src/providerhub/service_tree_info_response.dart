// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTreeInfoResponse {
  /// The component id.
  final pulumi.Input<String>? componentId;
  /// The readiness.
  final pulumi.Input<String>? readiness;
  /// The service id.
  final pulumi.Input<String>? serviceId;

  /// Creates a new [ServiceTreeInfoResponse].
  /// [componentId] The component id.
  /// [readiness] The readiness.
  /// [serviceId] The service id.
  ServiceTreeInfoResponse({
    this.componentId,
    this.readiness,
    this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentId': ?componentId,
      'readiness': ?readiness,
      'serviceId': ?serviceId,
    };
  }

  factory ServiceTreeInfoResponse.fromMap(Map<String, dynamic> map) {
    return ServiceTreeInfoResponse(
      componentId: (() { final guardedValue = map['componentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readiness: (() { final guardedValue = map['readiness']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceId: (() { final guardedValue = map['serviceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

