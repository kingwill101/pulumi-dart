// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'range_info_response_container_v1beta1.dart';

/// AdditionalPodRangesConfig is the configuration for additional pod secondary ranges supporting the ClusterUpdate message.
class AdditionalPodRangesConfigResponseContainerV1beta1 {
  /// [Output only] Information for additional pod range.
  final pulumi.Input<List<RangeInfoResponseContainerV1beta1>> podRangeInfo;

  /// Name for pod secondary ipv4 range which has the actual range defined ahead.
  final pulumi.Input<List<String>> podRangeNames;

  /// Creates a new [AdditionalPodRangesConfigResponseContainerV1beta1].
  /// [podRangeInfo] [Output only] Information for additional pod range.
  /// [podRangeNames] Name for pod secondary ipv4 range which has the actual range defined ahead.
  AdditionalPodRangesConfigResponseContainerV1beta1({
    required this.podRangeInfo,
    required this.podRangeNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'podRangeInfo':
          pulumi.Input.mapInputValue<
            List<RangeInfoResponseContainerV1beta1>,
            List<Map<String, dynamic>>
          >(
            podRangeInfo,
            (value) =>
                pulumi.Input.encodeList<
                  RangeInfoResponseContainerV1beta1,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'podRangeNames': podRangeNames,
    };
  }

  factory AdditionalPodRangesConfigResponseContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return AdditionalPodRangesConfigResponseContainerV1beta1(
      podRangeInfo: pulumi.Input.fromValue(
        pulumi.Input.decodeList<RangeInfoResponseContainerV1beta1>(
          map['podRangeInfo']!,
          (value) => RangeInfoResponseContainerV1beta1.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      podRangeNames: pulumi.Input.fromValue(
        (map['podRangeNames'] as List).cast<String>(),
      ),
    );
  }
}
