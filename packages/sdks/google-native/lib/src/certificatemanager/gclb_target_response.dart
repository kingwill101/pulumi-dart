// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_config_response.dart';

/// Describes a Target Proxy that uses this Certificate Map.
class GclbTargetResponse {
  /// IP configurations for this Target Proxy where the Certificate Map is serving.
  final pulumi.Input<List<IpConfigResponse>> ipConfigs;
  /// This field returns the resource name in the following format: `//compute.googleapis.com/projects/*/global/targetHttpsProxies/*`.
  final pulumi.Input<String> targetHttpsProxy;
  /// This field returns the resource name in the following format: `//compute.googleapis.com/projects/*/global/targetSslProxies/*`.
  final pulumi.Input<String> targetSslProxy;

  /// Creates a new [GclbTargetResponse].
  /// [ipConfigs] IP configurations for this Target Proxy where the Certificate Map is serving.
  /// [targetHttpsProxy] This field returns the resource name in the following format: `//compute.googleapis.com/projects/*/global/targetHttpsProxies/*`.
  /// [targetSslProxy] This field returns the resource name in the following format: `//compute.googleapis.com/projects/*/global/targetSslProxies/*`.
  const GclbTargetResponse({
    required this.ipConfigs,
    required this.targetHttpsProxy,
    required this.targetSslProxy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipConfigs': pulumi.Input.mapInputValue<List<IpConfigResponse>, List<Map<String, dynamic>>>(ipConfigs, (value) => pulumi.Input.encodeList<IpConfigResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetHttpsProxy': targetHttpsProxy,
      'targetSslProxy': targetSslProxy,
    };
  }

  factory GclbTargetResponse.fromMap(Map<String, dynamic> map) {
    return GclbTargetResponse(
      ipConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<IpConfigResponse>(map['ipConfigs']!, (value) => IpConfigResponse.fromMap((value as Map).cast<String, dynamic>()))),
      targetHttpsProxy: pulumi.Input.fromValue(map['targetHttpsProxy'] as String),
      targetSslProxy: pulumi.Input.fromValue(map['targetSslProxy'] as String),
    );
  }
}
