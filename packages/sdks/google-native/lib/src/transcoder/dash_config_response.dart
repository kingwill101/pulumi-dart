// ignore_for_file: unused_element, unnecessary_cast


/// `DASH` manifest configuration.
class DashConfigResponse {
  /// The segment reference scheme for a `DASH` manifest. The default is `SEGMENT_LIST`.
  final String segmentReferenceScheme;

  /// Creates a new [DashConfigResponse].
  /// [segmentReferenceScheme] The segment reference scheme for a `DASH` manifest. The default is `SEGMENT_LIST`.
  DashConfigResponse({
    required this.segmentReferenceScheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'segmentReferenceScheme': segmentReferenceScheme,
    };
  }

  factory DashConfigResponse.fromMap(Map<String, dynamic> map) {
    return DashConfigResponse(
      segmentReferenceScheme: map['segmentReferenceScheme'] as String,
    );
  }
}

