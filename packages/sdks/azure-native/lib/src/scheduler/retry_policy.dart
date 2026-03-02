// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'retry_type.dart';

class RetryPolicy {
  /// Gets or sets the number of times a retry should be attempted.
  final pulumi.Input<int>? retryCount;
  /// Gets or sets the retry interval between retries, specify duration in ISO 8601 format.
  final pulumi.Input<String>? retryInterval;
  /// Gets or sets the retry strategy to be used.
  final pulumi.Input<RetryType>? retryType;

  /// Creates a new [RetryPolicy].
  /// [retryCount] Gets or sets the number of times a retry should be attempted.
  /// [retryInterval] Gets or sets the retry interval between retries, specify duration in ISO 8601 format.
  /// [retryType] Gets or sets the retry strategy to be used.
  RetryPolicy({
    this.retryCount,
    this.retryInterval,
    this.retryType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retryCount': ?retryCount,
      'retryInterval': ?retryInterval,
      'retryType': ?pulumi.Input.mapOptionalInputValue<RetryType, String>(retryType, (value) => value.value),
    };
  }

  factory RetryPolicy.fromMap(Map<String, dynamic> map) {
    return RetryPolicy(
      retryCount: map['retryCount'] == null ? null : (map['retryCount'] as int).input(),
      retryInterval: map['retryInterval'] == null ? null : (map['retryInterval'] as String).input(),
      retryType: map['retryType'] == null ? null : (RetryType.fromValue(map['retryType'] as String)).input(),
    );
  }
}

