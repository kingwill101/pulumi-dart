// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTreeInfo {
  /// The component id.
  final pulumi.Input<String>? componentId;
  /// The readiness.
  final pulumi.Input<String>? readiness;
  /// The service id.
  final pulumi.Input<String>? serviceId;

  /// Creates a new [ServiceTreeInfo].
  /// [componentId] The component id.
  /// [readiness] The readiness.
  /// [serviceId] The service id.
  const ServiceTreeInfo({
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

  factory ServiceTreeInfo.fromMap(Map<String, dynamic> map) {
    return ServiceTreeInfo(
      componentId: (() { final guardedValue = map['componentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readiness: (() { final guardedValue = map['readiness']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceId: (() { final guardedValue = map['serviceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
