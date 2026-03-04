// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceGroupManagerInstanceLifecyclePolicyMetadataBasedReadinessSignal {
  /// The number of seconds to wait for a readiness signal during initialization before timing out.
  final pulumi.Input<int>? timeoutSec;

  /// Creates a new [InstanceGroupManagerInstanceLifecyclePolicyMetadataBasedReadinessSignal].
  /// [timeoutSec] The number of seconds to wait for a readiness signal during initialization before timing out.
  InstanceGroupManagerInstanceLifecyclePolicyMetadataBasedReadinessSignal({
    this.timeoutSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'timeoutSec': ?timeoutSec};
  }

  factory InstanceGroupManagerInstanceLifecyclePolicyMetadataBasedReadinessSignal.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceGroupManagerInstanceLifecyclePolicyMetadataBasedReadinessSignal(
      timeoutSec: (() {
        final guardedValue = map['timeoutSec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
