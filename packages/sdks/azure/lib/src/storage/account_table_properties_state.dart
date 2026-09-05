// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_table_properties_cors_rule.dart';
import 'account_table_properties_hour_metrics.dart';
import 'account_table_properties_logging.dart';
import 'account_table_properties_minute_metrics.dart';

/// Input properties used for looking up and filtering AccountTableProperties resources.
class AccountTablePropertiesState {
  /// A `corsRule` block as defined below.
  final pulumi.Input<List<AccountTablePropertiesCorsRule>?>? corsRules;
  /// A `hourMetrics` block as defined below.
  ///
  /// &gt; **Note:** At least one of `corsRule`, `logging`, `minuteMetrics`, or `hourMetrics` must be specified.
  final pulumi.Input<AccountTablePropertiesHourMetrics?>? hourMetrics;
  /// A `logging` block as defined below.
  final pulumi.Input<AccountTablePropertiesLogging?>? logging;
  /// A `minuteMetrics` block as defined below.
  final pulumi.Input<AccountTablePropertiesMinuteMetrics?>? minuteMetrics;
  /// The ID of the Storage Account to set Table Properties on. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? storageAccountId;

  /// Creates a new [AccountTablePropertiesState].
  /// [corsRules] A `corsRule` block as defined below.
  /// [hourMetrics] A `hourMetrics` block as defined below.
  /// [logging] A `logging` block as defined below.
  /// [minuteMetrics] A `minuteMetrics` block as defined below.
  /// [storageAccountId] The ID of the Storage Account to set Table Properties on. Changing this forces a new resource to be created.
  const AccountTablePropertiesState({
    this.corsRules,
    this.hourMetrics,
    this.logging,
    this.minuteMetrics,
    this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'corsRules': ?pulumi.Input.mapOptionalInputValue<List<AccountTablePropertiesCorsRule>, List<Map<String, dynamic>>>(corsRules, (value) => pulumi.Input.encodeList<AccountTablePropertiesCorsRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hourMetrics': ?pulumi.Input.mapOptionalInputValue<AccountTablePropertiesHourMetrics, Map<String, dynamic>>(hourMetrics, (value) => value.toMap()),
      'logging': ?pulumi.Input.mapOptionalInputValue<AccountTablePropertiesLogging, Map<String, dynamic>>(logging, (value) => value.toMap()),
      'minuteMetrics': ?pulumi.Input.mapOptionalInputValue<AccountTablePropertiesMinuteMetrics, Map<String, dynamic>>(minuteMetrics, (value) => value.toMap()),
      'storageAccountId': ?storageAccountId,
    };
  }

  factory AccountTablePropertiesState.fromMap(Map<String, dynamic> map) {
    return AccountTablePropertiesState(
      corsRules: (() { final guardedValue = map['corsRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccountTablePropertiesCorsRule>(guardedValue, (value) => AccountTablePropertiesCorsRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hourMetrics: (() { final guardedValue = map['hourMetrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountTablePropertiesHourMetrics.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logging: (() { final guardedValue = map['logging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountTablePropertiesLogging.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      minuteMetrics: (() { final guardedValue = map['minuteMetrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountTablePropertiesMinuteMetrics.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
