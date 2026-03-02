// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RetryPolicyResponse {
  /// Gets or sets the number of times a retry should be attempted.
  final pulumi.Input<int>? retryCount;
  /// Gets or sets the retry interval between retries, specify duration in ISO 8601 format.
  final pulumi.Input<String>? retryInterval;
  /// Gets or sets the retry strategy to be used.
  final pulumi.Input<String>? retryType;

  /// Creates a new [RetryPolicyResponse].
  /// [retryCount] Gets or sets the number of times a retry should be attempted.
  /// [retryInterval] Gets or sets the retry interval between retries, specify duration in ISO 8601 format.
  /// [retryType] Gets or sets the retry strategy to be used.
  RetryPolicyResponse({
    this.retryCount,
    this.retryInterval,
    this.retryType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retryCount': ?retryCount,
      'retryInterval': ?retryInterval,
      'retryType': ?retryType,
    };
  }

  factory RetryPolicyResponse.fromMap(Map<String, dynamic> map) {
    return RetryPolicyResponse(
      retryCount: map['retryCount'] == null ? null : (map['retryCount']! as int).input(),
      retryInterval: map['retryInterval'] == null ? null : (map['retryInterval']! as String).input(),
      retryType: map['retryType'] == null ? null : (map['retryType']! as String).input(),
    );
  }
}

