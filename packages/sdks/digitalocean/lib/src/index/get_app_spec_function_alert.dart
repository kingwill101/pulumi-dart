// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_function_alert_destinations.dart';

class GetAppSpecFunctionAlert {
  final pulumi.Input<GetAppSpecFunctionAlertDestinations>? destinations;
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
      'destinations': ?pulumi.Input.mapOptionalInputValue<GetAppSpecFunctionAlertDestinations, Map<String, dynamic>>(destinations, (value) => value.toMap()),
      'disabled': ?disabled,
      'operator': operator,
      'rule': rule,
      'value': value,
      'window': window,
    };
  }

  factory GetAppSpecFunctionAlert.fromMap(Map<String, dynamic> map) {
    return GetAppSpecFunctionAlert(
      destinations: map['destinations'] == null ? null : (GetAppSpecFunctionAlertDestinations.fromMap((map['destinations']! as Map).cast<String, dynamic>())).input(),
      disabled: map['disabled'] == null ? null : (map['disabled']! as bool).input(),
      operator: (map['operator'] as String).input(),
      rule: (map['rule'] as String).input(),
      value: (map['value'] as double).input(),
      window: (map['window'] as String).input(),
    );
  }
}

