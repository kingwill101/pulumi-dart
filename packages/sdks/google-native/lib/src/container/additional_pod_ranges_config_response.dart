// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'range_info_response.dart';

/// AdditionalPodRangesConfig is the configuration for additional pod secondary ranges supporting the ClusterUpdate message.
class AdditionalPodRangesConfigResponse {
  /// [Output only] Information for additional pod range.
  final pulumi.Input<List<RangeInfoResponse>> podRangeInfo;
  /// Name for pod secondary ipv4 range which has the actual range defined ahead.
  final pulumi.Input<List<String>> podRangeNames;

  /// Creates a new [AdditionalPodRangesConfigResponse].
  /// [podRangeInfo] [Output only] Information for additional pod range.
  /// [podRangeNames] Name for pod secondary ipv4 range which has the actual range defined ahead.
  AdditionalPodRangesConfigResponse({
    required this.podRangeInfo,
    required this.podRangeNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'podRangeInfo': pulumi.Input.mapInputValue<List<RangeInfoResponse>, List<Map<String, dynamic>>>(podRangeInfo, (value) => pulumi.Input.encodeList<RangeInfoResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'podRangeNames': podRangeNames,
    };
  }

  factory AdditionalPodRangesConfigResponse.fromMap(Map<String, dynamic> map) {
    return AdditionalPodRangesConfigResponse(
      podRangeInfo: (pulumi.Input.decodeList<RangeInfoResponse>(map['podRangeInfo'], (value) => RangeInfoResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      podRangeNames: ((map['podRangeNames'] as List).cast<String>()).input(),
    );
  }
}

