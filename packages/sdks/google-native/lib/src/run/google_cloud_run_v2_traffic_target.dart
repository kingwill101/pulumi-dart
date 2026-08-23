// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_run_v2_traffic_target_type.dart';

/// Holds a single traffic routing entry for the Service. Allocations can be done to a specific Revision name, or pointing to the latest Ready Revision.
class GoogleCloudRunV2TrafficTarget {
  /// Specifies percent of the traffic to this Revision. This defaults to zero if unspecified.
  final pulumi.Input<int>? percent;
  /// Revision to which to send this portion of traffic, if traffic allocation is by revision.
  final pulumi.Input<String>? revision;
  /// Indicates a string to be part of the URI to exclusively reference this target.
  final pulumi.Input<String>? tag;
  /// The allocation type for this traffic target.
  final pulumi.Input<GoogleCloudRunV2TrafficTargetType>? type;

  /// Creates a new [GoogleCloudRunV2TrafficTarget].
  /// [percent] Specifies percent of the traffic to this Revision. This defaults to zero if unspecified.
  /// [revision] Revision to which to send this portion of traffic, if traffic allocation is by revision.
  /// [tag] Indicates a string to be part of the URI to exclusively reference this target.
  /// [type] The allocation type for this traffic target.
  const GoogleCloudRunV2TrafficTarget({
    this.percent,
    this.revision,
    this.tag,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percent': ?percent,
      'revision': ?revision,
      'tag': ?tag,
      'type': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRunV2TrafficTargetType, String>(type, (value) => value.wireValue),
    };
  }

  factory GoogleCloudRunV2TrafficTarget.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2TrafficTarget(
      percent: (() { final guardedValue = map['percent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudRunV2TrafficTargetType.fromValue(guardedValue as String)); })(),
    );
  }
}
