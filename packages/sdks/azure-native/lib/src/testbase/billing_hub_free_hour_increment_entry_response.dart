// ignore_for_file: unused_element, unnecessary_cast


class BillingHubFreeHourIncrementEntryResponse {
  final String? createTimeStamp;
  final String? expirationTimeStamp;
  final String? freeHourStatus;
  final String? freeHourType;
  final double? incrementalFreeHours;
  final double? remainingFreeHours;

  /// Creates a new [BillingHubFreeHourIncrementEntryResponse].
  /// [createTimeStamp] Optional.
  /// [expirationTimeStamp] Optional.
  /// [freeHourStatus] Optional.
  /// [freeHourType] Optional.
  /// [incrementalFreeHours] Optional.
  /// [remainingFreeHours] Optional.
  BillingHubFreeHourIncrementEntryResponse({
    this.createTimeStamp,
    this.expirationTimeStamp,
    this.freeHourStatus,
    this.freeHourType,
    this.incrementalFreeHours,
    this.remainingFreeHours,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTimeStamp': ?createTimeStamp,
      'expirationTimeStamp': ?expirationTimeStamp,
      'freeHourStatus': ?freeHourStatus,
      'freeHourType': ?freeHourType,
      'incrementalFreeHours': ?incrementalFreeHours,
      'remainingFreeHours': ?remainingFreeHours,
    };
  }

  factory BillingHubFreeHourIncrementEntryResponse.fromMap(Map<String, dynamic> map) {
    return BillingHubFreeHourIncrementEntryResponse(
      createTimeStamp: map['createTimeStamp'] == null ? null : map['createTimeStamp'] as String,
      expirationTimeStamp: map['expirationTimeStamp'] == null ? null : map['expirationTimeStamp'] as String,
      freeHourStatus: map['freeHourStatus'] == null ? null : map['freeHourStatus'] as String,
      freeHourType: map['freeHourType'] == null ? null : map['freeHourType'] as String,
      incrementalFreeHours: map['incrementalFreeHours'] == null ? null : map['incrementalFreeHours'] as double,
      remainingFreeHours: map['remainingFreeHours'] == null ? null : map['remainingFreeHours'] as double,
    );
  }
}

