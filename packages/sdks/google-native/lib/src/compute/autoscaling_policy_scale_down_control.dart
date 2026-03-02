// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fixed_or_percent.dart';

/// Configuration that allows for slower scale in so that even if Autoscaler recommends an abrupt scale in of a MIG, it will be throttled as specified by the parameters below.
class AutoscalingPolicyScaleDownControl {
  /// Maximum allowed number (or %) of VMs that can be deducted from the peak recommendation during the window autoscaler looks at when computing recommendations. Possibly all these VMs can be deleted at once so user service needs to be prepared to lose that many VMs in one step.
  final pulumi.Input<FixedOrPercent>? maxScaledDownReplicas;
  /// How far back autoscaling looks when computing recommendations to include directives regarding slower scale in, as described above.
  final pulumi.Input<int>? timeWindowSec;

  /// Creates a new [AutoscalingPolicyScaleDownControl].
  /// [maxScaledDownReplicas] Maximum allowed number (or %) of VMs that can be deducted from the peak recommendation during the window autoscaler looks at when computing recommendations. Possibly all these VMs can be deleted at once so user service needs to be prepared to lose that many VMs in one step.
  /// [timeWindowSec] How far back autoscaling looks when computing recommendations to include directives regarding slower scale in, as described above.
  AutoscalingPolicyScaleDownControl({
    this.maxScaledDownReplicas,
    this.timeWindowSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxScaledDownReplicas': ?pulumi.Input.mapOptionalInputValue<FixedOrPercent, Map<String, dynamic>>(maxScaledDownReplicas, (value) => value.toMap()),
      'timeWindowSec': ?timeWindowSec,
    };
  }

  factory AutoscalingPolicyScaleDownControl.fromMap(Map<String, dynamic> map) {
    return AutoscalingPolicyScaleDownControl(
      maxScaledDownReplicas: map['maxScaledDownReplicas'] == null ? null : (FixedOrPercent.fromMap((map['maxScaledDownReplicas'] as Map).cast<String, dynamic>())).input(),
      timeWindowSec: map['timeWindowSec'] == null ? null : (map['timeWindowSec'] as int).input(),
    );
  }
}

