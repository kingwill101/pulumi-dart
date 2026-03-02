// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_spec_alert_destinations.dart';

class AppSpecAlert {
  /// Specification for alert destination.
  final pulumi.Input<AppSpecAlertDestinations>? destinations;
  /// Determines whether or not the alert is disabled (default: `false`).
  final pulumi.Input<bool>? disabled;
  /// The type of the alert to configure. Component app alert policies can be: `CPU_UTILIZATION`, `MEM_UTILIZATION`, or `RESTART_COUNT`.
  final pulumi.Input<String> rule;

  /// Creates a new [AppSpecAlert].
  /// [destinations] Specification for alert destination.
  /// [disabled] Determines whether or not the alert is disabled (default: `false`).
  /// [rule] The type of the alert to configure. Component app alert policies can be: `CPU_UTILIZATION`, `MEM_UTILIZATION`, or `RESTART_COUNT`.
  AppSpecAlert({
    this.destinations,
    this.disabled,
    required this.rule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?pulumi.Input.mapOptionalInputValue<AppSpecAlertDestinations, Map<String, dynamic>>(destinations, (value) => value.toMap()),
      'disabled': ?disabled,
      'rule': rule,
    };
  }

  factory AppSpecAlert.fromMap(Map<String, dynamic> map) {
    return AppSpecAlert(
      destinations: map['destinations'] == null ? null : (AppSpecAlertDestinations.fromMap((map['destinations'] as Map).cast<String, dynamic>())).input(),
      disabled: map['disabled'] == null ? null : (map['disabled'] as bool).input(),
      rule: (map['rule'] as String).input(),
    );
  }
}

