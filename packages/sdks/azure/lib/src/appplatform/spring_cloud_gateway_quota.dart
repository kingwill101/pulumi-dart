// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpringCloudGatewayQuota {
  /// Specifies the required cpu of the Spring Cloud Deployment. Possible Values are `500m`, `1`, `2`, `3` and `4`. Defaults to `1` if not specified.
  ///
  /// &gt; **Note:** `cpu` supports `500m` and `1` for Basic tier, `500m`, `1`, `2`, `3` and `4` for Standard tier.
  final pulumi.Input<String>? cpu;

  /// Specifies the required memory size of the Spring Cloud Deployment. Possible Values are `512Mi`, `1Gi`, `2Gi`, `3Gi`, `4Gi`, `5Gi`, `6Gi`, `7Gi`, and `8Gi`. Defaults to `2Gi` if not specified.
  ///
  /// &gt; **Note:** `memory` supports `512Mi`, `1Gi` and `2Gi` for Basic tier, `512Mi`, `1Gi`, `2Gi`, `3Gi`, `4Gi`, `5Gi`, `6Gi`, `7Gi`, and `8Gi` for Standard tier.
  final pulumi.Input<String>? memory;

  /// Creates a new [SpringCloudGatewayQuota].
  /// [cpu] Specifies the required cpu of the Spring Cloud Deployment. Possible Values are `500m`, `1`, `2`, `3` and `4`. Defaults to `1` if not specified.
  /// [memory] Specifies the required memory size of the Spring Cloud Deployment. Possible Values are `512Mi`, `1Gi`, `2Gi`, `3Gi`, `4Gi`, `5Gi`, `6Gi`, `7Gi`, and `8Gi`. Defaults to `2Gi` if not specified.
  SpringCloudGatewayQuota({this.cpu, this.memory});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cpu': ?cpu, 'memory': ?memory};
  }

  factory SpringCloudGatewayQuota.fromMap(Map<String, dynamic> map) {
    return SpringCloudGatewayQuota(
      cpu: (() {
        final guardedValue = map['cpu'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      memory: (() {
        final guardedValue = map['memory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
