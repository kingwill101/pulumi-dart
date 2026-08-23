// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTraffic {
  /// Specifies percent of the traffic to this Revision. This defaults to zero if unspecified.
  final pulumi.Input<int>? percent;
  /// Revision to which to send this portion of traffic, if traffic allocation is by revision.
  final pulumi.Input<String>? revision;
  /// Indicates a string to be part of the URI to exclusively reference this target.
  final pulumi.Input<String>? tag;
  /// The allocation type for this traffic target.
  /// Possible values are: `TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST`, `TRAFFIC_TARGET_ALLOCATION_TYPE_REVISION`.
  final pulumi.Input<String>? type;

  /// Creates a new [ServiceTraffic].
  /// [percent] Specifies percent of the traffic to this Revision. This defaults to zero if unspecified.
  /// [revision] Revision to which to send this portion of traffic, if traffic allocation is by revision.
  /// [tag] Indicates a string to be part of the URI to exclusively reference this target.
  /// [type] The allocation type for this traffic target.
  const ServiceTraffic({
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
      'type': ?type,
    };
  }

  factory ServiceTraffic.fromMap(Map<String, dynamic> map) {
    return ServiceTraffic(
      percent: (() { final guardedValue = map['percent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
