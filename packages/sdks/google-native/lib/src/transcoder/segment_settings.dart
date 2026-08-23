// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Segment settings for `ts`, `fmp4` and `vtt`.
class SegmentSettings {
  /// Create an individual segment file. The default is `false`.
  final pulumi.Input<bool> individualSegments;
  /// Duration of the segments in seconds. The default is `6.0s`. Note that `segmentDuration` must be greater than or equal to [`gopDuration`](#videostream), and `segmentDuration` must be divisible by [`gopDuration`](#videostream).
  final pulumi.Input<String>? segmentDuration;

  /// Creates a new [SegmentSettings].
  /// [individualSegments] Create an individual segment file. The default is `false`.
  /// [segmentDuration] Duration of the segments in seconds. The default is `6.0s`. Note that `segmentDuration` must be greater than or equal to [`gopDuration`](#videostream), and `segmentDuration` must be divisible by [`gopDuration`](#videostream).
  const SegmentSettings({
    required this.individualSegments,
    this.segmentDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'individualSegments': individualSegments,
      'segmentDuration': ?segmentDuration,
    };
  }

  factory SegmentSettings.fromMap(Map<String, dynamic> map) {
    return SegmentSettings(
      individualSegments: pulumi.Input.fromValue(map['individualSegments'] as bool),
      segmentDuration: (() { final guardedValue = map['segmentDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
