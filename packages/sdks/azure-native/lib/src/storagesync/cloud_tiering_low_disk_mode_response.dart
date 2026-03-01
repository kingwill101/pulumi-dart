// ignore_for_file: unused_element, unnecessary_cast


/// Information regarding the low disk mode state
class CloudTieringLowDiskModeResponse {
  /// Last updated timestamp
  final String lastUpdatedTimestamp;
  /// Low disk mode state
  final String state;

  /// Creates a new [CloudTieringLowDiskModeResponse].
  /// [lastUpdatedTimestamp] Last updated timestamp
  /// [state] Low disk mode state
  CloudTieringLowDiskModeResponse({
    required this.lastUpdatedTimestamp,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastUpdatedTimestamp': lastUpdatedTimestamp,
      'state': state,
    };
  }

  factory CloudTieringLowDiskModeResponse.fromMap(Map<String, dynamic> map) {
    return CloudTieringLowDiskModeResponse(
      lastUpdatedTimestamp: map['lastUpdatedTimestamp'] as String,
      state: map['state'] as String,
    );
  }
}

