// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_alert_destinations.dart';

class GetAppSpecAlert {
  final pulumi.Input<GetAppSpecAlertDestinations>? destinations;

  /// Determines whether or not the alert is disabled (default: `false`).
  final pulumi.Input<bool>? disabled;

  /// The type of the alert to configure. Component app alert policies can be: `CPU_UTILIZATION`, `MEM_UTILIZATION`, or `RESTART_COUNT`.
  final pulumi.Input<String> rule;

  /// Creates a new [GetAppSpecAlert].
  /// [destinations] Optional.
  /// [disabled] Determines whether or not the alert is disabled (default: `false`).
  /// [rule] The type of the alert to configure. Component app alert policies can be: `CPU_UTILIZATION`, `MEM_UTILIZATION`, or `RESTART_COUNT`.
  GetAppSpecAlert({this.destinations, this.disabled, required this.rule});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations':
          ?pulumi.Input.mapOptionalInputValue<
            GetAppSpecAlertDestinations,
            Map<String, dynamic>
          >(destinations, (value) => value.toMap()),
      'disabled': ?disabled,
      'rule': rule,
    };
  }

  factory GetAppSpecAlert.fromMap(Map<String, dynamic> map) {
    return GetAppSpecAlert(
      destinations: (() {
        final guardedValue = map['destinations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GetAppSpecAlertDestinations.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      disabled: (() {
        final guardedValue = map['disabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      rule: pulumi.Input.fromValue(map['rule'] as String),
    );
  }
}
