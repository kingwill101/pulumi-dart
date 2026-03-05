// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_function_v2_target_response.dart';

/// Describes a Synthetic Monitor to be invoked by Uptime.
class SyntheticMonitorTargetResponse {
  /// Target a Synthetic Monitor GCFv2 instance.
  final pulumi.Input<CloudFunctionV2TargetResponse> cloudFunctionV2;

  /// Creates a new [SyntheticMonitorTargetResponse].
  /// [cloudFunctionV2] Target a Synthetic Monitor GCFv2 instance.
  SyntheticMonitorTargetResponse({
    required this.cloudFunctionV2,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudFunctionV2': pulumi.Input.mapInputValue<CloudFunctionV2TargetResponse, Map<String, dynamic>>(cloudFunctionV2, (value) => value.toMap()),
    };
  }

  factory SyntheticMonitorTargetResponse.fromMap(Map<String, dynamic> map) {
    return SyntheticMonitorTargetResponse(
      cloudFunctionV2: pulumi.Input.fromValue(CloudFunctionV2TargetResponse.fromMap((map['cloudFunctionV2']! as Map).cast<String, dynamic>())),
    );
  }
}

