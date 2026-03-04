// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_maintenance_policy_window_recurring_window_window.dart';

class ClusterMaintenancePolicyWindowRecurringWindow {
  /// An RRULE (https://tools.ietf.org/html/rfc5545#section-3.8.5.3) for how
  /// this window recurs. They go on for the span of time between the start and
  /// end time.
  final pulumi.Input<String>? recurrence;

  /// Represents an arbitrary window of time.
  /// Structure is documented below.
  final pulumi.Input<ClusterMaintenancePolicyWindowRecurringWindowWindow>?
  window;

  /// Creates a new [ClusterMaintenancePolicyWindowRecurringWindow].
  /// [recurrence] An RRULE (https://tools.ietf.org/html/rfc5545#section-3.8.5.3) for how
  /// [window] Represents an arbitrary window of time.
  ClusterMaintenancePolicyWindowRecurringWindow({this.recurrence, this.window});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recurrence': ?recurrence,
      'window':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterMaintenancePolicyWindowRecurringWindowWindow,
            Map<String, dynamic>
          >(window, (value) => value.toMap()),
    };
  }

  factory ClusterMaintenancePolicyWindowRecurringWindow.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterMaintenancePolicyWindowRecurringWindow(
      recurrence: (() {
        final guardedValue = map['recurrence'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      window: (() {
        final guardedValue = map['window'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterMaintenancePolicyWindowRecurringWindowWindow.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
