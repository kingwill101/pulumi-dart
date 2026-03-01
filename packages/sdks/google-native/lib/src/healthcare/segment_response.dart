// ignore_for_file: unused_element, unnecessary_cast


/// A segment in a structured format.
class SegmentResponse {
  /// A mapping from the positional location to the value. The key string uses zero-based indexes separated by dots to identify Fields, components and sub-components. A bracket notation is also used to identify different instances of a repeated field. Regex for key: (\d+)(\[\d+\])?(.\d+)?(.\d+)? Examples of (key, value) pairs: * (0.1, "hemoglobin") denotes that the first component of Field 0 has the value "hemoglobin". * (1.1.2, "CBC") denotes that the second sub-component of the first component of Field 1 has the value "CBC". * (1[0].1, "HbA1c") denotes that the first component of the first Instance of Field 1, which is repeated, has the value "HbA1c".
  final Map<String, String> fields;
  /// A string that indicates the type of segment. For example, EVN or PID.
  final String segmentId;
  /// Set ID for segments that can be in a set. This can be empty if it's missing or isn't applicable.
  final String setId;

  /// Creates a new [SegmentResponse].
  /// [fields] A mapping from the positional location to the value. The key string uses zero-based indexes separated by dots to identify Fields, components and sub-components. A bracket notation is also used to identify different instances of a repeated field. Regex for key: (\d+)(\[\d+\])?(.\d+)?(.\d+)? Examples of (key, value) pairs: * (0.1, "hemoglobin") denotes that the first component of Field 0 has the value "hemoglobin". * (1.1.2, "CBC") denotes that the second sub-component of the first component of Field 1 has the value "CBC". * (1[0].1, "HbA1c") denotes that the first component of the first Instance of Field 1, which is repeated, has the value "HbA1c".
  /// [segmentId] A string that indicates the type of segment. For example, EVN or PID.
  /// [setId] Set ID for segments that can be in a set. This can be empty if it's missing or isn't applicable.
  SegmentResponse({
    required this.fields,
    required this.segmentId,
    required this.setId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': fields,
      'segmentId': segmentId,
      'setId': setId,
    };
  }

  factory SegmentResponse.fromMap(Map<String, dynamic> map) {
    return SegmentResponse(
      fields: (map['fields'] as Map).cast<String, String>(),
      segmentId: map['segmentId'] as String,
      setId: map['setId'] as String,
    );
  }
}

