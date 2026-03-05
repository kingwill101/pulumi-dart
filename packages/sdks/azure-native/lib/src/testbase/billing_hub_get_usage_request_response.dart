// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BillingHubGetUsageRequestResponse {
  final pulumi.Input<String> endTimeStamp;
  final pulumi.Input<int>? pageIndex;
  final pulumi.Input<int>? pageSize;
  final pulumi.Input<String> startTimeStamp;

  /// Creates a new [BillingHubGetUsageRequestResponse].
  /// [endTimeStamp] Required.
  /// [pageIndex] Optional.
  /// [pageSize] Optional.
  /// [startTimeStamp] Required.
  BillingHubGetUsageRequestResponse({
    required this.endTimeStamp,
    this.pageIndex,
    this.pageSize,
    required this.startTimeStamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTimeStamp': endTimeStamp,
      'pageIndex': ?pageIndex,
      'pageSize': ?pageSize,
      'startTimeStamp': startTimeStamp,
    };
  }

  factory BillingHubGetUsageRequestResponse.fromMap(Map<String, dynamic> map) {
    return BillingHubGetUsageRequestResponse(
      endTimeStamp: pulumi.Input.fromValue(map['endTimeStamp'] as String),
      pageIndex: (() { final guardedValue = map['pageIndex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      startTimeStamp: pulumi.Input.fromValue(map['startTimeStamp'] as String),
    );
  }
}

