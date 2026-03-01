// ignore_for_file: unused_element, unnecessary_cast


/// The represent of basic error
class BasicErrorDryrunPrerequisiteResultResponse {
  /// The error code.
  final String? code;
  /// The error message.
  final String? message;
  /// The type of dryrun result.
  /// Expected value is 'basicError'.
  final String type;

  /// Creates a new [BasicErrorDryrunPrerequisiteResultResponse].
  /// [code] The error code.
  /// [message] The error message.
  /// [type] The type of dryrun result.
  BasicErrorDryrunPrerequisiteResultResponse({
    this.code,
    this.message,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
      'type': type,
    };
  }

  factory BasicErrorDryrunPrerequisiteResultResponse.fromMap(Map<String, dynamic> map) {
    return BasicErrorDryrunPrerequisiteResultResponse(
      code: map['code'] == null ? null : map['code'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      type: map['type'] as String,
    );
  }
}

