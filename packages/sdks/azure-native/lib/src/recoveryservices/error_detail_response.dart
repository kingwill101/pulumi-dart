// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Error Detail class which encapsulates Code, Message and Recommendations.
class ErrorDetailResponse {
  /// Error code.
  final pulumi.Input<String> code;
  /// Error Message related to the Code.
  final pulumi.Input<String> message;
  /// List of recommendation strings.
  final pulumi.Input<List<String>> recommendations;

  /// Creates a new [ErrorDetailResponse].
  /// [code] Error code.
  /// [message] Error Message related to the Code.
  /// [recommendations] List of recommendation strings.
  const ErrorDetailResponse({
    required this.code,
    required this.message,
    required this.recommendations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'message': message,
      'recommendations': recommendations,
    };
  }

  factory ErrorDetailResponse.fromMap(Map<String, dynamic> map) {
    return ErrorDetailResponse(
      code: pulumi.Input.fromValue(map['code'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      recommendations: pulumi.Input.fromValue((map['recommendations'] as List).cast<String>()),
    );
  }
}
