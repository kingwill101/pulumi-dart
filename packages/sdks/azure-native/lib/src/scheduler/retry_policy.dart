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
      'retryType': ?pulumi.Input.mapOptionalInputValue<RetryType, String>(retryType, (value) => value.wireValue),
    };
  }

  factory RetryPolicy.fromMap(Map<String, dynamic> map) {
    return RetryPolicy(
      retryCount: (() { final guardedValue = map['retryCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      retryInterval: (() { final guardedValue = map['retryInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retryType: (() { final guardedValue = map['retryType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RetryType.fromValue(guardedValue as String)); })(),
    );
  }
}

