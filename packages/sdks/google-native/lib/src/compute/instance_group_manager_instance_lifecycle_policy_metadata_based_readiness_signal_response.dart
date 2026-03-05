// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceGroupManagerInstanceLifecyclePolicyMetadataBasedReadinessSignalResponse {
  /// The number of seconds to wait for a readiness signal during initialization before timing out.
  final pulumi.Input<int> timeoutSec;

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
      timeoutSec: pulumi.Input.fromValue(map['timeoutSec'] as int),
    );
  }
}

