// ignore_for_file: unused_element, unnecessary_cast


class OperationErrorErrorsItemResponseDeploymentmanagerV2beta {
  /// The error type identifier for this error.
  final String code;
  /// Indicates the field in the request that caused the error. This property is optional.
  final String location;
  /// An optional, human-readable error message.
  final String message;

  /// Creates a new [OperationErrorErrorsItemResponseDeploymentmanagerV2beta].
  /// [code] The error type identifier for this error.
  /// [location] Indicates the field in the request that caused the error. This property is optional.
  /// [message] An optional, human-readable error message.
  OperationErrorErrorsItemResponseDeploymentmanagerV2beta({
    required this.code,
    required this.location,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'location': location,
      'message': message,
    };
  }

  factory OperationErrorErrorsItemResponseDeploymentmanagerV2beta.fromMap(Map<String, dynamic> map) {
    return OperationErrorErrorsItemResponseDeploymentmanagerV2beta(
      code: map['code'] as String,
      location: map['location'] as String,
      message: map['message'] as String,
    );
  }
}

