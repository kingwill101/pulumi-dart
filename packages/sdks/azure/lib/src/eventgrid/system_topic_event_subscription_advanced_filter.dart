// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_topic_event_subscription_advanced_filter_bool_equal.dart';
import 'system_topic_event_subscription_advanced_filter_is_not_null.dart';
import 'system_topic_event_subscription_advanced_filter_is_null_or_undefined.dart';
import 'system_topic_event_subscription_advanced_filter_number_greater_than.dart';
import 'system_topic_event_subscription_advanced_filter_number_greater_than_or_equal.dart';
import 'system_topic_event_subscription_advanced_filter_number_in.dart';
import 'system_topic_event_subscription_advanced_filter_number_in_range.dart';
import 'system_topic_event_subscription_advanced_filter_number_less_than.dart';
import 'system_topic_event_subscription_advanced_filter_number_less_than_or_equal.dart';
import 'system_topic_event_subscription_advanced_filter_number_not_in.dart';
import 'system_topic_event_subscription_advanced_filter_number_not_in_range.dart';
import 'system_topic_event_subscription_advanced_filter_string_begins_with.dart';
import 'system_topic_event_subscription_advanced_filter_string_contain.dart';
import 'system_topic_event_subscription_advanced_filter_string_ends_with.dart';
import 'system_topic_event_subscription_advanced_filter_string_in.dart';
import 'system_topic_event_subscription_advanced_filter_string_not_begins_with.dart';
import 'system_topic_event_subscription_advanced_filter_string_not_contain.dart';
import 'system_topic_event_subscription_advanced_filter_string_not_ends_with.dart';
import 'system_topic_event_subscription_advanced_filter_string_not_in.dart';

class SystemTopicEventSubscriptionAdvancedFilter {
  /// Compares a value of an event using a single boolean value.
  final pulumi.Input<List<SystemTopicEventSubscriptionAdvancedFilterBoolEqual>>? boolEquals;
  /// Evaluates if a value of an event isn't NULL or undefined.
  final pulumi.Input<List<SystemTopicEventSubscriptionAdvancedFilterIsNotNull>>? isNotNulls;
  /// Evaluates if a value of an event is NULL or undefined.
  ///
  /// Each nested block consists of a key and a value(s) element.
  final pulumi.Input<List<SystemTopicEventSubscriptionAdvancedFilterIsNullOrUndefined>>? isNullOrUndefineds;
  /// Compares a value of an event using a single floating point number.
  final pulumi.Input<List<SystemTopicEventSubscriptionAdvancedFilterNumberGreaterThanOrEqual>>? numberGreaterThanOrEquals;
  /// Compares a value of an event using a single floating point number.
  final pulumi.Input<List<SystemTopicEventSubscriptionAdvancedFilterNumberGreaterThan>>? numberGreaterThans;
  /// Compares a value of an event using multiple floating point number ranges.
  final pulumi.Input<List<SystemTopicEventSubscriptionAdvancedFilterNumberInRange>>? numberInRanges;
  /// Compares a value of an event using multiple floating point numbers.
  final pulumi.Input<List<SystemTopicEventSubscriptionAdvancedFilterNumberIn>>? numberIns;
  /// Compares a value of an event using a single floating point number.
  final pulumi.Input<List<SystemTopicEventSubscriptionAdvancedFilterNumberLessThanOrEqual>>? numberLessThanOrEquals;
  /// Compares a value of an event using a single floating point number.
  final pulumi.Input<List<SystemTopicEventSubscriptionAdvancedFilterNumberLessThan>>? numberLessThans;
  /// Compares a value of an event using multiple floating point number ranges.
  final pulumi.Input<List<SystemTopicEventSubscriptionAdvancedFilterNumberNotInRange>>? numberNotInRanges;
  /// Compares a value of an event using multiple floating point numbers.
  final pulumi.Input<List<SystemTopicEventSubscriptionAdvancedFilterNumberNotIn>>? numberNotIns;
  /// Compares a value of an event using multiple string values.
  final pulumi.Input<List<SystemTopicEventSubscriptionAdvancedFilterStringBeginsWith>>? stringBeginsWiths;
  /// Compares a value of an event using multiple string values.
  final pulumi.Input<List<SystemTopicEventSubscriptionAdvancedFilterStringContain>>? stringContains;
  /// Compares a value of an event using multiple string values.
  final pulumi.Input<List<SystemTopicEventSubscriptionAdvancedFilterStringEndsWith>>? stringEndsWiths;
  /// Compares a value of an event using multiple string values.
  final pulumi.Input<List<SystemTopicEventSubscriptionAdvancedFilterStringIn>>? stringIns;
  /// Compares a value of an event using multiple string values.
  final pulumi.Input<List<SystemTopicEventSubscriptionAdvancedFilterStringNotBeginsWith>>? stringNotBeginsWiths;
  /// Compares a value of an event using multiple string values.
  final pulumi.Input<List<SystemTopicEventSubscriptionAdvancedFilterStringNotContain>>? stringNotContains;
  /// Compares a value of an event using multiple string values.
  final pulumi.Input<List<SystemTopicEventSubscriptionAdvancedFilterStringNotEndsWith>>? stringNotEndsWiths;
  /// Compares a value of an event using multiple string values.
  final pulumi.Input<List<SystemTopicEventSubscriptionAdvancedFilterStringNotIn>>? stringNotIns;

  /// Creates a new [SystemTopicEventSubscriptionAdvancedFilter].
  /// [boolEquals] Compares a value of an event using a single boolean value.
  /// [isNotNulls] Evaluates if a value of an event isn't NULL or undefined.
  /// [isNullOrUndefineds] Evaluates if a value of an event is NULL or undefined.
  /// [numberGreaterThanOrEquals] Compares a value of an event using a single floating point number.
  /// [numberGreaterThans] Compares a value of an event using a single floating point number.
  /// [numberInRanges] Compares a value of an event using multiple floating point number ranges.
  /// [numberIns] Compares a value of an event using multiple floating point numbers.
  /// [numberLessThanOrEquals] Compares a value of an event using a single floating point number.
  /// [numberLessThans] Compares a value of an event using a single floating point number.
  /// [numberNotInRanges] Compares a value of an event using multiple floating point number ranges.
  /// [numberNotIns] Compares a value of an event using multiple floating point numbers.
  /// [stringBeginsWiths] Compares a value of an event using multiple string values.
  /// [stringContains] Compares a value of an event using multiple string values.
  /// [stringEndsWiths] Compares a value of an event using multiple string values.
  /// [stringIns] Compares a value of an event using multiple string values.
  /// [stringNotBeginsWiths] Compares a value of an event using multiple string values.
  /// [stringNotContains] Compares a value of an event using multiple string values.
  /// [stringNotEndsWiths] Compares a value of an event using multiple string values.
  /// [stringNotIns] Compares a value of an event using multiple string values.
  const SystemTopicEventSubscriptionAdvancedFilter({
    this.boolEquals,
    this.isNotNulls,
    this.isNullOrUndefineds,
    this.numberGreaterThanOrEquals,
    this.numberGreaterThans,
    this.numberInRanges,
    this.numberIns,
    this.numberLessThanOrEquals,
    this.numberLessThans,
    this.numberNotInRanges,
    this.numberNotIns,
    this.stringBeginsWiths,
    this.stringContains,
    this.stringEndsWiths,
    this.stringIns,
    this.stringNotBeginsWiths,
    this.stringNotContains,
    this.stringNotEndsWiths,
    this.stringNotIns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boolEquals': ?pulumi.Input.mapOptionalInputValue<List<SystemTopicEventSubscriptionAdvancedFilterBoolEqual>, List<Map<String, dynamic>>>(boolEquals, (value) => pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterBoolEqual, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isNotNulls': ?pulumi.Input.mapOptionalInputValue<List<SystemTopicEventSubscriptionAdvancedFilterIsNotNull>, List<Map<String, dynamic>>>(isNotNulls, (value) => pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterIsNotNull, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isNullOrUndefineds': ?pulumi.Input.mapOptionalInputValue<List<SystemTopicEventSubscriptionAdvancedFilterIsNullOrUndefined>, List<Map<String, dynamic>>>(isNullOrUndefineds, (value) => pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterIsNullOrUndefined, Map<String, dynamic>>(value, (value) => value.toMap())),
      'numberGreaterThanOrEquals': ?pulumi.Input.mapOptionalInputValue<List<SystemTopicEventSubscriptionAdvancedFilterNumberGreaterThanOrEqual>, List<Map<String, dynamic>>>(numberGreaterThanOrEquals, (value) => pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterNumberGreaterThanOrEqual, Map<String, dynamic>>(value, (value) => value.toMap())),
      'numberGreaterThans': ?pulumi.Input.mapOptionalInputValue<List<SystemTopicEventSubscriptionAdvancedFilterNumberGreaterThan>, List<Map<String, dynamic>>>(numberGreaterThans, (value) => pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterNumberGreaterThan, Map<String, dynamic>>(value, (value) => value.toMap())),
      'numberInRanges': ?pulumi.Input.mapOptionalInputValue<List<SystemTopicEventSubscriptionAdvancedFilterNumberInRange>, List<Map<String, dynamic>>>(numberInRanges, (value) => pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterNumberInRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'numberIns': ?pulumi.Input.mapOptionalInputValue<List<SystemTopicEventSubscriptionAdvancedFilterNumberIn>, List<Map<String, dynamic>>>(numberIns, (value) => pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterNumberIn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'numberLessThanOrEquals': ?pulumi.Input.mapOptionalInputValue<List<SystemTopicEventSubscriptionAdvancedFilterNumberLessThanOrEqual>, List<Map<String, dynamic>>>(numberLessThanOrEquals, (value) => pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterNumberLessThanOrEqual, Map<String, dynamic>>(value, (value) => value.toMap())),
      'numberLessThans': ?pulumi.Input.mapOptionalInputValue<List<SystemTopicEventSubscriptionAdvancedFilterNumberLessThan>, List<Map<String, dynamic>>>(numberLessThans, (value) => pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterNumberLessThan, Map<String, dynamic>>(value, (value) => value.toMap())),
      'numberNotInRanges': ?pulumi.Input.mapOptionalInputValue<List<SystemTopicEventSubscriptionAdvancedFilterNumberNotInRange>, List<Map<String, dynamic>>>(numberNotInRanges, (value) => pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterNumberNotInRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'numberNotIns': ?pulumi.Input.mapOptionalInputValue<List<SystemTopicEventSubscriptionAdvancedFilterNumberNotIn>, List<Map<String, dynamic>>>(numberNotIns, (value) => pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterNumberNotIn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stringBeginsWiths': ?pulumi.Input.mapOptionalInputValue<List<SystemTopicEventSubscriptionAdvancedFilterStringBeginsWith>, List<Map<String, dynamic>>>(stringBeginsWiths, (value) => pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterStringBeginsWith, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stringContains': ?pulumi.Input.mapOptionalInputValue<List<SystemTopicEventSubscriptionAdvancedFilterStringContain>, List<Map<String, dynamic>>>(stringContains, (value) => pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterStringContain, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stringEndsWiths': ?pulumi.Input.mapOptionalInputValue<List<SystemTopicEventSubscriptionAdvancedFilterStringEndsWith>, List<Map<String, dynamic>>>(stringEndsWiths, (value) => pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterStringEndsWith, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stringIns': ?pulumi.Input.mapOptionalInputValue<List<SystemTopicEventSubscriptionAdvancedFilterStringIn>, List<Map<String, dynamic>>>(stringIns, (value) => pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterStringIn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stringNotBeginsWiths': ?pulumi.Input.mapOptionalInputValue<List<SystemTopicEventSubscriptionAdvancedFilterStringNotBeginsWith>, List<Map<String, dynamic>>>(stringNotBeginsWiths, (value) => pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterStringNotBeginsWith, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stringNotContains': ?pulumi.Input.mapOptionalInputValue<List<SystemTopicEventSubscriptionAdvancedFilterStringNotContain>, List<Map<String, dynamic>>>(stringNotContains, (value) => pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterStringNotContain, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stringNotEndsWiths': ?pulumi.Input.mapOptionalInputValue<List<SystemTopicEventSubscriptionAdvancedFilterStringNotEndsWith>, List<Map<String, dynamic>>>(stringNotEndsWiths, (value) => pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterStringNotEndsWith, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stringNotIns': ?pulumi.Input.mapOptionalInputValue<List<SystemTopicEventSubscriptionAdvancedFilterStringNotIn>, List<Map<String, dynamic>>>(stringNotIns, (value) => pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterStringNotIn, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SystemTopicEventSubscriptionAdvancedFilter.fromMap(Map<String, dynamic> map) {
    return SystemTopicEventSubscriptionAdvancedFilter(
      boolEquals: (() { final guardedValue = map['boolEquals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterBoolEqual>(guardedValue, (value) => SystemTopicEventSubscriptionAdvancedFilterBoolEqual.fromMap((value as Map).cast<String, dynamic>()))); })(),
      isNotNulls: (() { final guardedValue = map['isNotNulls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterIsNotNull>(guardedValue, (value) => SystemTopicEventSubscriptionAdvancedFilterIsNotNull.fromMap((value as Map).cast<String, dynamic>()))); })(),
      isNullOrUndefineds: (() { final guardedValue = map['isNullOrUndefineds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterIsNullOrUndefined>(guardedValue, (value) => SystemTopicEventSubscriptionAdvancedFilterIsNullOrUndefined.fromMap((value as Map).cast<String, dynamic>()))); })(),
      numberGreaterThanOrEquals: (() { final guardedValue = map['numberGreaterThanOrEquals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterNumberGreaterThanOrEqual>(guardedValue, (value) => SystemTopicEventSubscriptionAdvancedFilterNumberGreaterThanOrEqual.fromMap((value as Map).cast<String, dynamic>()))); })(),
      numberGreaterThans: (() { final guardedValue = map['numberGreaterThans']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterNumberGreaterThan>(guardedValue, (value) => SystemTopicEventSubscriptionAdvancedFilterNumberGreaterThan.fromMap((value as Map).cast<String, dynamic>()))); })(),
      numberInRanges: (() { final guardedValue = map['numberInRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterNumberInRange>(guardedValue, (value) => SystemTopicEventSubscriptionAdvancedFilterNumberInRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      numberIns: (() { final guardedValue = map['numberIns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterNumberIn>(guardedValue, (value) => SystemTopicEventSubscriptionAdvancedFilterNumberIn.fromMap((value as Map).cast<String, dynamic>()))); })(),
      numberLessThanOrEquals: (() { final guardedValue = map['numberLessThanOrEquals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterNumberLessThanOrEqual>(guardedValue, (value) => SystemTopicEventSubscriptionAdvancedFilterNumberLessThanOrEqual.fromMap((value as Map).cast<String, dynamic>()))); })(),
      numberLessThans: (() { final guardedValue = map['numberLessThans']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterNumberLessThan>(guardedValue, (value) => SystemTopicEventSubscriptionAdvancedFilterNumberLessThan.fromMap((value as Map).cast<String, dynamic>()))); })(),
      numberNotInRanges: (() { final guardedValue = map['numberNotInRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterNumberNotInRange>(guardedValue, (value) => SystemTopicEventSubscriptionAdvancedFilterNumberNotInRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      numberNotIns: (() { final guardedValue = map['numberNotIns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterNumberNotIn>(guardedValue, (value) => SystemTopicEventSubscriptionAdvancedFilterNumberNotIn.fromMap((value as Map).cast<String, dynamic>()))); })(),
      stringBeginsWiths: (() { final guardedValue = map['stringBeginsWiths']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterStringBeginsWith>(guardedValue, (value) => SystemTopicEventSubscriptionAdvancedFilterStringBeginsWith.fromMap((value as Map).cast<String, dynamic>()))); })(),
      stringContains: (() { final guardedValue = map['stringContains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterStringContain>(guardedValue, (value) => SystemTopicEventSubscriptionAdvancedFilterStringContain.fromMap((value as Map).cast<String, dynamic>()))); })(),
      stringEndsWiths: (() { final guardedValue = map['stringEndsWiths']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterStringEndsWith>(guardedValue, (value) => SystemTopicEventSubscriptionAdvancedFilterStringEndsWith.fromMap((value as Map).cast<String, dynamic>()))); })(),
      stringIns: (() { final guardedValue = map['stringIns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterStringIn>(guardedValue, (value) => SystemTopicEventSubscriptionAdvancedFilterStringIn.fromMap((value as Map).cast<String, dynamic>()))); })(),
      stringNotBeginsWiths: (() { final guardedValue = map['stringNotBeginsWiths']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterStringNotBeginsWith>(guardedValue, (value) => SystemTopicEventSubscriptionAdvancedFilterStringNotBeginsWith.fromMap((value as Map).cast<String, dynamic>()))); })(),
      stringNotContains: (() { final guardedValue = map['stringNotContains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterStringNotContain>(guardedValue, (value) => SystemTopicEventSubscriptionAdvancedFilterStringNotContain.fromMap((value as Map).cast<String, dynamic>()))); })(),
      stringNotEndsWiths: (() { final guardedValue = map['stringNotEndsWiths']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterStringNotEndsWith>(guardedValue, (value) => SystemTopicEventSubscriptionAdvancedFilterStringNotEndsWith.fromMap((value as Map).cast<String, dynamic>()))); })(),
      stringNotIns: (() { final guardedValue = map['stringNotIns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterStringNotIn>(guardedValue, (value) => SystemTopicEventSubscriptionAdvancedFilterStringNotIn.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
