// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ActivityLogAlertCriteriaResourceHealth {
  /// The current resource health statuses that will log an alert. Possible values are `Available`, `Degraded`, `Unavailable` and `Unknown`.
  final pulumi.Input<List<String>>? currents;
  /// The previous resource health statuses that will log an alert. Possible values are `Available`, `Degraded`, `Unavailable` and `Unknown`.
  final pulumi.Input<List<String>>? previouses;
  /// The reason that will log an alert. Possible values are `PlatformInitiated` (such as a problem with the resource in an affected region of an Azure incident), `UserInitiated` (such as a shutdown request of a VM) and `Unknown`.
  final pulumi.Input<List<String>>? reasons;

  /// Creates a new [ActivityLogAlertCriteriaResourceHealth].
  /// [currents] The current resource health statuses that will log an alert. Possible values are `Available`, `Degraded`, `Unavailable` and `Unknown`.
  /// [previouses] The previous resource health statuses that will log an alert. Possible values are `Available`, `Degraded`, `Unavailable` and `Unknown`.
  /// [reasons] The reason that will log an alert. Possible values are `PlatformInitiated` (such as a problem with the resource in an affected region of an Azure incident), `UserInitiated` (such as a shutdown request of a VM) and `Unknown`.
  const ActivityLogAlertCriteriaResourceHealth({
    this.currents,
    this.previouses,
    this.reasons,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currents': ?currents,
      'previouses': ?previouses,
      'reasons': ?reasons,
    };
  }

  factory ActivityLogAlertCriteriaResourceHealth.fromMap(Map<String, dynamic> map) {
    return ActivityLogAlertCriteriaResourceHealth(
      currents: (() { final guardedValue = map['currents']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      previouses: (() { final guardedValue = map['previouses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      reasons: (() { final guardedValue = map['reasons']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

