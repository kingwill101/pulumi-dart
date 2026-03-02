// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dash_config_segment_reference_scheme.dart';

/// `DASH` manifest configuration.
class DashConfig {
  /// The segment reference scheme for a `DASH` manifest. The default is `SEGMENT_LIST`.
  final pulumi.Input<DashConfigSegmentReferenceScheme>? segmentReferenceScheme;

  /// Creates a new [DashConfig].
  /// [segmentReferenceScheme] The segment reference scheme for a `DASH` manifest. The default is `SEGMENT_LIST`.
  DashConfig({
    this.segmentReferenceScheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'segmentReferenceScheme': ?pulumi.Input.mapOptionalInputValue<DashConfigSegmentReferenceScheme, String>(segmentReferenceScheme, (value) => value.value),
    };
  }

  factory DashConfig.fromMap(Map<String, dynamic> map) {
    return DashConfig(
      segmentReferenceScheme: map['segmentReferenceScheme'] == null ? null : (DashConfigSegmentReferenceScheme.fromValue(map['segmentReferenceScheme']! as String)).input(),
    );
  }
}

