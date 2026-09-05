// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Spec to control the desired behavior of daemon set rolling update.
class RollingUpdateDaemonSetPatch {
  /// The maximum number of DaemonSet pods that can be unavailable during the update. Value can be an absolute number (ex: 5) or a percentage of total number of DaemonSet pods at the start of the update (ex: 10%). Absolute number is calculated from percentage by rounding up. This cannot be 0. Default value is 1. Example: when this is set to 30%, at most 30% of the total number of nodes that should be running the daemon pod (i.e. status.desiredNumberScheduled) can have their pods stopped for an update at any given time. The update starts by stopping at most 30% of those DaemonSet pods and then brings up new DaemonSet pods in their place. Once the new pods are available, it then proceeds onto other DaemonSet pods, thus ensuring that at least 70% of original number of DaemonSet pods are available at all times during the update.
  final pulumi.Input<dynamic>? maxUnavailable;

  /// Creates a new [RollingUpdateDaemonSetPatch].
  /// [maxUnavailable] The maximum number of DaemonSet pods that can be unavailable during the update. Value can be an absolute number (ex: 5) or a percentage of total number of DaemonSet pods at the start of the update (ex: 10%). Absolute number is calculated from percentage by rounding up. This cannot be 0. Default value is 1. Example: when this is set to 30%, at most 30% of the total number of nodes that should be running the daemon pod (i.e. status.desiredNumberScheduled) can have their pods stopped for an update at any given time. The update starts by stopping at most 30% of those DaemonSet pods and then brings up new DaemonSet pods in their place. Once the new pods are available, it then proceeds onto other DaemonSet pods, thus ensuring that at least 70% of original number of DaemonSet pods are available at all times during the update.
  const RollingUpdateDaemonSetPatch({
    this.maxUnavailable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxUnavailable': ?maxUnavailable,
    };
  }

  factory RollingUpdateDaemonSetPatch.fromMap(Map<String, dynamic> map) {
    return RollingUpdateDaemonSetPatch(
      maxUnavailable: (() { final guardedValue = map['maxUnavailable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
