// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// `DASH` manifest configuration.
class DashConfigResponse {
  /// The segment reference scheme for a `DASH` manifest. The default is `SEGMENT_LIST`.
  final pulumi.Input<String> segmentReferenceScheme;

  /// Creates a new [DashConfigResponse].
  /// [segmentReferenceScheme] The segment reference scheme for a `DASH` manifest. The default is `SEGMENT_LIST`.
  DashConfigResponse({required this.segmentReferenceScheme});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'segmentReferenceScheme': segmentReferenceScheme};
  }

  factory DashConfigResponse.fromMap(Map<String, dynamic> map) {
    return DashConfigResponse(
      segmentReferenceScheme: pulumi.Input.fromValue(
        map['segmentReferenceScheme'] as String,
      ),
    );
  }
}
