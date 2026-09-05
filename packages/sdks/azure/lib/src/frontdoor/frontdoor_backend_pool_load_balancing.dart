// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorBackendPoolLoadBalancing {
  /// The additional latency in milliseconds for probes to fall into the lowest latency bucket. Defaults to `0`.
  final pulumi.Input<int?>? additionalLatencyMilliseconds;
  /// The ID of the FrontDoor.
  final pulumi.Input<String?>? id;
  /// Specifies the name of the Load Balancer.
  final pulumi.Input<String> name;
  /// The number of samples to consider for load balancing decisions. Defaults to `4`.
  final pulumi.Input<int?>? sampleSize;
  /// The number of samples within the sample period that must succeed. Defaults to `2`.
  final pulumi.Input<int?>? successfulSamplesRequired;

  /// Creates a new [FrontdoorBackendPoolLoadBalancing].
  /// [additionalLatencyMilliseconds] The additional latency in milliseconds for probes to fall into the lowest latency bucket. Defaults to `0`.
  /// [id] The ID of the FrontDoor.
  /// [name] Specifies the name of the Load Balancer.
  /// [sampleSize] The number of samples to consider for load balancing decisions. Defaults to `4`.
  /// [successfulSamplesRequired] The number of samples within the sample period that must succeed. Defaults to `2`.
  const FrontdoorBackendPoolLoadBalancing({
    this.additionalLatencyMilliseconds,
    this.id,
    required this.name,
    this.sampleSize,
    this.successfulSamplesRequired,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalLatencyMilliseconds': ?additionalLatencyMilliseconds,
      'id': ?id,
      'name': name,
      'sampleSize': ?sampleSize,
      'successfulSamplesRequired': ?successfulSamplesRequired,
    };
  }

  factory FrontdoorBackendPoolLoadBalancing.fromMap(Map<String, dynamic> map) {
    return FrontdoorBackendPoolLoadBalancing(
      additionalLatencyMilliseconds: (() { final guardedValue = map['additionalLatencyMilliseconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      sampleSize: (() { final guardedValue = map['sampleSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      successfulSamplesRequired: (() { final guardedValue = map['successfulSamplesRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
