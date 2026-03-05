// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_function_v2_target.dart';

/// Describes a Synthetic Monitor to be invoked by Uptime.
class SyntheticMonitorTarget {
  /// Target a Synthetic Monitor GCFv2 instance.
  final pulumi.Input<CloudFunctionV2Target>? cloudFunctionV2;

  /// Creates a new [SyntheticMonitorTarget].
  /// [cloudFunctionV2] Target a Synthetic Monitor GCFv2 instance.
  SyntheticMonitorTarget({
    this.cloudFunctionV2,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudFunctionV2': ?pulumi.Input.mapOptionalInputValue<CloudFunctionV2Target, Map<String, dynamic>>(cloudFunctionV2, (value) => value.toMap()),
    };
  }

  factory SyntheticMonitorTarget.fromMap(Map<String, dynamic> map) {
    return SyntheticMonitorTarget(
      cloudFunctionV2: (() { final guardedValue = map['cloudFunctionV2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudFunctionV2Target.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

