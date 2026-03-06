// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceLbPoliciesIsolationConfig {
  /// The isolation granularity of the load balancer.
  /// Possible values are: `ISOLATION_GRANULARITY_UNSPECIFIED`, `REGION`.
  final pulumi.Input<String>? isolationGranularity;
  /// The isolation mode of the load balancer.
  /// Default value is `NEAREST`.
  /// Possible values are: `ISOLATION_MODE_UNSPECIFIED`, `NEAREST`, `STRICT`.
  final pulumi.Input<String>? isolationMode;

  /// Creates a new [ServiceLbPoliciesIsolationConfig].
  /// [isolationGranularity] The isolation granularity of the load balancer.
  /// [isolationMode] The isolation mode of the load balancer.
  const ServiceLbPoliciesIsolationConfig({
    this.isolationGranularity,
    this.isolationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isolationGranularity': ?isolationGranularity,
      'isolationMode': ?isolationMode,
    };
  }

  factory ServiceLbPoliciesIsolationConfig.fromMap(Map<String, dynamic> map) {
    return ServiceLbPoliciesIsolationConfig(
      isolationGranularity: (() { final guardedValue = map['isolationGranularity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isolationMode: (() { final guardedValue = map['isolationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

