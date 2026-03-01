// ignore_for_file: unused_element, unnecessary_cast


/// An object that represents the status of warm storage on an environment.
class WarmStorageEnvironmentStatusResponse {
  /// A value that represents the number of properties used by the environment for S1/S2 SKU and number of properties used by Warm Store for PAYG SKU
  final int? currentCount;
  /// A value that represents the maximum number of properties used allowed by the environment for S1/S2 SKU and maximum number of properties allowed by Warm Store for PAYG SKU.
  final int? maxCount;
  /// This string represents the state of warm storage properties usage. It can be "Ok", "Error", "Unknown".
  final String? state;

  /// Creates a new [WarmStorageEnvironmentStatusResponse].
  /// [currentCount] A value that represents the number of properties used by the environment for S1/S2 SKU and number of properties used by Warm Store for PAYG SKU
  /// [maxCount] A value that represents the maximum number of properties used allowed by the environment for S1/S2 SKU and maximum number of properties allowed by Warm Store for PAYG SKU.
  /// [state] This string represents the state of warm storage properties usage. It can be "Ok", "Error", "Unknown".
  WarmStorageEnvironmentStatusResponse({
    this.currentCount,
    this.maxCount,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentCount': ?currentCount,
      'maxCount': ?maxCount,
      'state': ?state,
    };
  }

  factory WarmStorageEnvironmentStatusResponse.fromMap(Map<String, dynamic> map) {
    return WarmStorageEnvironmentStatusResponse(
      currentCount: map['currentCount'] == null ? null : map['currentCount'] as int,
      maxCount: map['maxCount'] == null ? null : map['maxCount'] as int,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

