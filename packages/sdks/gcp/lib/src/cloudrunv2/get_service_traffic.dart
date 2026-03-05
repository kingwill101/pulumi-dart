// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceTraffic {
  /// Specifies percent of the traffic to this Revision. This defaults to zero if unspecified.
  final pulumi.Input<int> percent;
  /// Revision to which to send this portion of traffic, if traffic allocation is by revision.
  final pulumi.Input<String> revision;
  /// Indicates a string to be part of the URI to exclusively reference this target.
  final pulumi.Input<String> tag;
  /// The allocation type for this traffic target. Possible values: ["TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST", "TRAFFIC_TARGET_ALLOCATION_TYPE_REVISION"]
  final pulumi.Input<String> type;

  /// Creates a new [GetServiceTraffic].
  /// [percent] Specifies percent of the traffic to this Revision. This defaults to zero if unspecified.
  /// [revision] Revision to which to send this portion of traffic, if traffic allocation is by revision.
  /// [tag] Indicates a string to be part of the URI to exclusively reference this target.
  /// [type] The allocation type for this traffic target. Possible values: ["TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST", "TRAFFIC_TARGET_ALLOCATION_TYPE_REVISION"]
  GetServiceTraffic({
    required this.percent,
    required this.revision,
    required this.tag,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percent': percent,
      'revision': revision,
      'tag': tag,
      'type': type,
    };
  }

  factory GetServiceTraffic.fromMap(Map<String, dynamic> map) {
    return GetServiceTraffic(
      percent: pulumi.Input.fromValue(map['percent'] as int),
      revision: pulumi.Input.fromValue(map['revision'] as String),
      tag: pulumi.Input.fromValue(map['tag'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

