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
  SystemTopicEventSubscriptionAdvancedFilter({
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
      boolEquals: map['boolEquals'] == null ? null : (pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterBoolEqual>(map['boolEquals']!, (value) => SystemTopicEventSubscriptionAdvancedFilterBoolEqual.fromMap((value as Map).cast<String, dynamic>()))).input(),
      isNotNulls: map['isNotNulls'] == null ? null : (pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterIsNotNull>(map['isNotNulls']!, (value) => SystemTopicEventSubscriptionAdvancedFilterIsNotNull.fromMap((value as Map).cast<String, dynamic>()))).input(),
      isNullOrUndefineds: map['isNullOrUndefineds'] == null ? null : (pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterIsNullOrUndefined>(map['isNullOrUndefineds']!, (value) => SystemTopicEventSubscriptionAdvancedFilterIsNullOrUndefined.fromMap((value as Map).cast<String, dynamic>()))).input(),
      numberGreaterThanOrEquals: map['numberGreaterThanOrEquals'] == null ? null : (pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterNumberGreaterThanOrEqual>(map['numberGreaterThanOrEquals']!, (value) => SystemTopicEventSubscriptionAdvancedFilterNumberGreaterThanOrEqual.fromMap((value as Map).cast<String, dynamic>()))).input(),
      numberGreaterThans: map['numberGreaterThans'] == null ? null : (pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterNumberGreaterThan>(map['numberGreaterThans']!, (value) => SystemTopicEventSubscriptionAdvancedFilterNumberGreaterThan.fromMap((value as Map).cast<String, dynamic>()))).input(),
      numberInRanges: map['numberInRanges'] == null ? null : (pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterNumberInRange>(map['numberInRanges']!, (value) => SystemTopicEventSubscriptionAdvancedFilterNumberInRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
      numberIns: map['numberIns'] == null ? null : (pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterNumberIn>(map['numberIns']!, (value) => SystemTopicEventSubscriptionAdvancedFilterNumberIn.fromMap((value as Map).cast<String, dynamic>()))).input(),
      numberLessThanOrEquals: map['numberLessThanOrEquals'] == null ? null : (pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterNumberLessThanOrEqual>(map['numberLessThanOrEquals']!, (value) => SystemTopicEventSubscriptionAdvancedFilterNumberLessThanOrEqual.fromMap((value as Map).cast<String, dynamic>()))).input(),
      numberLessThans: map['numberLessThans'] == null ? null : (pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterNumberLessThan>(map['numberLessThans']!, (value) => SystemTopicEventSubscriptionAdvancedFilterNumberLessThan.fromMap((value as Map).cast<String, dynamic>()))).input(),
      numberNotInRanges: map['numberNotInRanges'] == null ? null : (pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterNumberNotInRange>(map['numberNotInRanges']!, (value) => SystemTopicEventSubscriptionAdvancedFilterNumberNotInRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
      numberNotIns: map['numberNotIns'] == null ? null : (pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterNumberNotIn>(map['numberNotIns']!, (value) => SystemTopicEventSubscriptionAdvancedFilterNumberNotIn.fromMap((value as Map).cast<String, dynamic>()))).input(),
      stringBeginsWiths: map['stringBeginsWiths'] == null ? null : (pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterStringBeginsWith>(map['stringBeginsWiths']!, (value) => SystemTopicEventSubscriptionAdvancedFilterStringBeginsWith.fromMap((value as Map).cast<String, dynamic>()))).input(),
      stringContains: map['stringContains'] == null ? null : (pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterStringContain>(map['stringContains']!, (value) => SystemTopicEventSubscriptionAdvancedFilterStringContain.fromMap((value as Map).cast<String, dynamic>()))).input(),
      stringEndsWiths: map['stringEndsWiths'] == null ? null : (pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterStringEndsWith>(map['stringEndsWiths']!, (value) => SystemTopicEventSubscriptionAdvancedFilterStringEndsWith.fromMap((value as Map).cast<String, dynamic>()))).input(),
      stringIns: map['stringIns'] == null ? null : (pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterStringIn>(map['stringIns']!, (value) => SystemTopicEventSubscriptionAdvancedFilterStringIn.fromMap((value as Map).cast<String, dynamic>()))).input(),
      stringNotBeginsWiths: map['stringNotBeginsWiths'] == null ? null : (pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterStringNotBeginsWith>(map['stringNotBeginsWiths']!, (value) => SystemTopicEventSubscriptionAdvancedFilterStringNotBeginsWith.fromMap((value as Map).cast<String, dynamic>()))).input(),
      stringNotContains: map['stringNotContains'] == null ? null : (pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterStringNotContain>(map['stringNotContains']!, (value) => SystemTopicEventSubscriptionAdvancedFilterStringNotContain.fromMap((value as Map).cast<String, dynamic>()))).input(),
      stringNotEndsWiths: map['stringNotEndsWiths'] == null ? null : (pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterStringNotEndsWith>(map['stringNotEndsWiths']!, (value) => SystemTopicEventSubscriptionAdvancedFilterStringNotEndsWith.fromMap((value as Map).cast<String, dynamic>()))).input(),
      stringNotIns: map['stringNotIns'] == null ? null : (pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterStringNotIn>(map['stringNotIns']!, (value) => SystemTopicEventSubscriptionAdvancedFilterStringNotIn.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

