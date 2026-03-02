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
      endTimeStamp: (map['endTimeStamp'] as String).input(),
      pageIndex: map['pageIndex'] == null ? null : (map['pageIndex']! as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize']! as int).input(),
      startTimeStamp: (map['startTimeStamp'] as String).input(),
    );
  }
}

