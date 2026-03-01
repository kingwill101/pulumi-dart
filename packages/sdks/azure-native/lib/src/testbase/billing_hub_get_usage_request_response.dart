// ignore_for_file: unused_element, unnecessary_cast


class BillingHubGetUsageRequestResponse {
  final String endTimeStamp;
  final int? pageIndex;
  final int? pageSize;
  final String startTimeStamp;

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
      endTimeStamp: map['endTimeStamp'] as String,
      pageIndex: map['pageIndex'] == null ? null : map['pageIndex'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      startTimeStamp: map['startTimeStamp'] as String,
    );
  }
}

