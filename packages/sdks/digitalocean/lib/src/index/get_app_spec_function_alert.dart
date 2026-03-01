// ignore_for_file: unused_element, unnecessary_cast

import 'get_app_spec_function_alert_destinations.dart';

class GetAppSpecFunctionAlert {
  final GetAppSpecFunctionAlertDestinations? destinations;
  /// Determines whether or not the alert is disabled (default: `false`).
  final bool? disabled;
  /// The operator to use. This is either of `GREATER_THAN` or `LESS_THAN`.
  final String operator;
  /// The type of the alert to configure. Component app alert policies can be: `CPU_UTILIZATION`, `MEM_UTILIZATION`, or `RESTART_COUNT`.
  final String rule;
  /// The threshold for the type of the warning.
  final double value;
  /// The time before alerts should be triggered. This is may be one of: `FIVE_MINUTES`, `TEN_MINUTES`, `THIRTY_MINUTES`, `ONE_HOUR`.
  final String window;

  /// Creates a new [GetAppSpecFunctionAlert].
  /// [destinations] Optional.
  /// [disabled] Determines whether or not the alert is disabled (default: `false`).
  /// [operator] The operator to use. This is either of `GREATER_THAN` or `LESS_THAN`.
  /// [rule] The type of the alert to configure. Component app alert policies can be: `CPU_UTILIZATION`, `MEM_UTILIZATION`, or `RESTART_COUNT`.
  /// [value] The threshold for the type of the warning.
  /// [window] The time before alerts should be triggered. This is may be one of: `FIVE_MINUTES`, `TEN_MINUTES`, `THIRTY_MINUTES`, `ONE_HOUR`.
  GetAppSpecFunctionAlert({
    this.destinations,
    this.disabled,
    required this.operator,
    required this.rule,
    required this.value,
    required this.window,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?destinations == null ? null : destinations!.toMap(),
      'disabled': ?disabled,
      'operator': operator,
      'rule': rule,
      'value': value,
      'window': window,
    };
  }

  factory GetAppSpecFunctionAlert.fromMap(Map<String, dynamic> map) {
    return GetAppSpecFunctionAlert(
      destinations: map['destinations'] == null ? null : GetAppSpecFunctionAlertDestinations.fromMap((map['destinations'] as Map).cast<String, dynamic>()),
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      operator: map['operator'] as String,
      rule: map['rule'] as String,
      value: map['value'] as double,
      window: map['window'] as String,
    );
  }
}

