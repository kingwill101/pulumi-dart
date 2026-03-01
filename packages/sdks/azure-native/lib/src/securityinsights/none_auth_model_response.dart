// ignore_for_file: unused_element, unnecessary_cast


/// Model for API authentication with no authentication method - public API.
class NoneAuthModelResponse {
  /// Type of paging
  /// Expected value is 'None'.
  final String type;

  /// Creates a new [NoneAuthModelResponse].
  /// [type] Type of paging
  NoneAuthModelResponse({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory NoneAuthModelResponse.fromMap(Map<String, dynamic> map) {
    return NoneAuthModelResponse(
      type: map['type'] as String,
    );
  }
}

