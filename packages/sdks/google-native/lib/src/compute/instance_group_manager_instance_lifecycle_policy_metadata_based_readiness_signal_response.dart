// ignore_for_file: unused_element, unnecessary_cast


class InstanceGroupManagerInstanceLifecyclePolicyMetadataBasedReadinessSignalResponse {
  /// The number of seconds to wait for a readiness signal during initialization before timing out.
  final int timeoutSec;

  /// Creates a new [InstanceGroupManagerInstanceLifecyclePolicyMetadataBasedReadinessSignalResponse].
  /// [timeoutSec] The number of seconds to wait for a readiness signal during initialization before timing out.
  InstanceGroupManagerInstanceLifecyclePolicyMetadataBasedReadinessSignalResponse({
    required this.timeoutSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timeoutSec': timeoutSec,
    };
  }

  factory InstanceGroupManagerInstanceLifecyclePolicyMetadataBasedReadinessSignalResponse.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerInstanceLifecyclePolicyMetadataBasedReadinessSignalResponse(
      timeoutSec: map['timeoutSec'] as int,
    );
  }
}

