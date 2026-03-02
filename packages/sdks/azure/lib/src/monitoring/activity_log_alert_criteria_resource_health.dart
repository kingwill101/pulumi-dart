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
  ActivityLogAlertCriteriaResourceHealth({
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
      currents: map['currents'] == null ? null : ((map['currents'] as List).cast<String>()).input(),
      previouses: map['previouses'] == null ? null : ((map['previouses'] as List).cast<String>()).input(),
      reasons: map['reasons'] == null ? null : ((map['reasons'] as List).cast<String>()).input(),
    );
  }
}

