// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_spec_worker_alert_destinations.dart';

class AppSpecWorkerAlert {
  /// Specification for alert destination.
  final pulumi.Input<AppSpecWorkerAlertDestinations>? destinations;
  /// Determines whether or not the alert is disabled (default: `false`).
  final pulumi.Input<bool>? disabled;
  /// The operator to use. This is either of `GREATER_THAN` or `LESS_THAN`.
  final pulumi.Input<String> operator;
  /// The type of the alert to configure. Component app alert policies can be: `CPU_UTILIZATION`, `MEM_UTILIZATION`, or `RESTART_COUNT`.
  final pulumi.Input<String> rule;
  /// The threshold for the type of the warning.
  final pulumi.Input<double> value;
  /// The time before alerts should be triggered. This is may be one of: `FIVE_MINUTES`, `TEN_MINUTES`, `THIRTY_MINUTES`, `ONE_HOUR`.
  final pulumi.Input<String> window;

  /// Creates a new [AppSpecWorkerAlert].
  /// [destinations] Specification for alert destination.
  /// [disabled] Determines whether or not the alert is disabled (default: `false`).
  /// [operator] The operator to use. This is either of `GREATER_THAN` or `LESS_THAN`.
  /// [rule] The type of the alert to configure. Component app alert policies can be: `CPU_UTILIZATION`, `MEM_UTILIZATION`, or `RESTART_COUNT`.
  /// [value] The threshold for the type of the warning.
  /// [window] The time before alerts should be triggered. This is may be one of: `FIVE_MINUTES`, `TEN_MINUTES`, `THIRTY_MINUTES`, `ONE_HOUR`.
  const AppSpecWorkerAlert({
    this.destinations,
    this.disabled,
    required this.operator,
    required this.rule,
    required this.value,
    required this.window,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?pulumi.Input.mapOptionalInputValue<AppSpecWorkerAlertDestinations, Map<String, dynamic>>(destinations, (value) => value.toMap()),
      'disabled': ?disabled,
      'operator': operator,
      'rule': rule,
      'value': value,
      'window': window,
    };
  }

  factory AppSpecWorkerAlert.fromMap(Map<String, dynamic> map) {
    return AppSpecWorkerAlert(
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppSpecWorkerAlertDestinations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      rule: pulumi.Input.fromValue(map['rule'] as String),
      value: pulumi.Input.fromValue(map['value'] as double),
      window: pulumi.Input.fromValue(map['window'] as String),
    );
  }
}
