// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains error information for an Azure SQL Database, Server or Elastic Pool Recommended Action.
class RecommendedActionErrorInfoResponse {
  /// Gets the reason why the recommended action was put to error state. e.g., DatabaseHasQdsOff, IndexAlreadyExists
  final pulumi.Input<String> errorCode;
  /// Gets whether the error could be ignored and recommended action could be retried. Possible values are: Yes/No
  final pulumi.Input<String> isRetryable;

  /// Creates a new [RecommendedActionErrorInfoResponse].
  /// [errorCode] Gets the reason why the recommended action was put to error state. e.g., DatabaseHasQdsOff, IndexAlreadyExists
  /// [isRetryable] Gets whether the error could be ignored and recommended action could be retried. Possible values are: Yes/No
  const RecommendedActionErrorInfoResponse({
    required this.errorCode,
    required this.isRetryable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': errorCode,
      'isRetryable': isRetryable,
    };
  }

  factory RecommendedActionErrorInfoResponse.fromMap(Map<String, dynamic> map) {
    return RecommendedActionErrorInfoResponse(
      errorCode: pulumi.Input.fromValue(map['errorCode'] as String),
      isRetryable: pulumi.Input.fromValue(map['isRetryable'] as String),
    );
  }
}

