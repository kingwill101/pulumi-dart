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
  ServiceTreeInfo({
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
      componentId: map['componentId'] == null ? null : (map['componentId'] as String).input(),
      readiness: map['readiness'] == null ? null : (map['readiness'] as String).input(),
      serviceId: map['serviceId'] == null ? null : (map['serviceId'] as String).input(),
    );
  }
}

