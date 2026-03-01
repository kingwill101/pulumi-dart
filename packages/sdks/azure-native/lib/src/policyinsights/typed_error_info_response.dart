// ignore_for_file: unused_element, unnecessary_cast


/// Scenario specific error details.
class TypedErrorInfoResponse {
  /// The scenario specific error details.
  final dynamic info;
  /// The type of included error details.
  final String type;

  /// Creates a new [TypedErrorInfoResponse].
  /// [info] The scenario specific error details.
  /// [type] The type of included error details.
  TypedErrorInfoResponse({
    required this.info,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'info': info,
      'type': type,
    };
  }

  factory TypedErrorInfoResponse.fromMap(Map<String, dynamic> map) {
    return TypedErrorInfoResponse(
      info: map['info'],
      type: map['type'] as String,
    );
  }
}

