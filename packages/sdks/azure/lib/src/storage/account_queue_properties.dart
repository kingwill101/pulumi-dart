// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_queue_properties_cors_rule.dart';
import 'account_queue_properties_hour_metrics.dart';
import 'account_queue_properties_logging.dart';
import 'account_queue_properties_minute_metrics.dart';

class AccountQueueProperties {
  /// A `cors_rule` block as defined above.
  final pulumi.Input<List<AccountQueuePropertiesCorsRule>>? corsRules;
  /// A `hour_metrics` block as defined below.
  final pulumi.Input<AccountQueuePropertiesHourMetrics>? hourMetrics;
  /// A `logging` block as defined below.
  final pulumi.Input<AccountQueuePropertiesLogging>? logging;
  /// A `minute_metrics` block as defined below.
  final pulumi.Input<AccountQueuePropertiesMinuteMetrics>? minuteMetrics;

  /// Creates a new [AccountQueueProperties].
  /// [corsRules] A `cors_rule` block as defined above.
  /// [hourMetrics] A `hour_metrics` block as defined below.
  /// [logging] A `logging` block as defined below.
  /// [minuteMetrics] A `minute_metrics` block as defined below.
  const AccountQueueProperties({
    this.corsRules,
    this.hourMetrics,
    this.logging,
    this.minuteMetrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'corsRules': ?pulumi.Input.mapOptionalInputValue<List<AccountQueuePropertiesCorsRule>, List<Map<String, dynamic>>>(corsRules, (value) => pulumi.Input.encodeList<AccountQueuePropertiesCorsRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hourMetrics': ?pulumi.Input.mapOptionalInputValue<AccountQueuePropertiesHourMetrics, Map<String, dynamic>>(hourMetrics, (value) => value.toMap()),
      'logging': ?pulumi.Input.mapOptionalInputValue<AccountQueuePropertiesLogging, Map<String, dynamic>>(logging, (value) => value.toMap()),
      'minuteMetrics': ?pulumi.Input.mapOptionalInputValue<AccountQueuePropertiesMinuteMetrics, Map<String, dynamic>>(minuteMetrics, (value) => value.toMap()),
    };
  }

  factory AccountQueueProperties.fromMap(Map<String, dynamic> map) {
    return AccountQueueProperties(
      corsRules: (() { final guardedValue = map['corsRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccountQueuePropertiesCorsRule>(guardedValue, (value) => AccountQueuePropertiesCorsRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hourMetrics: (() { final guardedValue = map['hourMetrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountQueuePropertiesHourMetrics.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logging: (() { final guardedValue = map['logging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountQueuePropertiesLogging.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      minuteMetrics: (() { final guardedValue = map['minuteMetrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountQueuePropertiesMinuteMetrics.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

