// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_subscription_advanced_filter_bool_equal.dart';
import 'event_subscription_advanced_filter_is_not_null.dart';
import 'event_subscription_advanced_filter_is_null_or_undefined.dart';
import 'event_subscription_advanced_filter_number_greater_than.dart';
import 'event_subscription_advanced_filter_number_greater_than_or_equal.dart';
import 'event_subscription_advanced_filter_number_in.dart';
import 'event_subscription_advanced_filter_number_in_range.dart';
import 'event_subscription_advanced_filter_number_less_than.dart';
import 'event_subscription_advanced_filter_number_less_than_or_equal.dart';
import 'event_subscription_advanced_filter_number_not_in.dart';
import 'event_subscription_advanced_filter_number_not_in_range.dart';
import 'event_subscription_advanced_filter_string_begins_with.dart';
import 'event_subscription_advanced_filter_string_contain.dart';
import 'event_subscription_advanced_filter_string_ends_with.dart';
import 'event_subscription_advanced_filter_string_in.dart';
import 'event_subscription_advanced_filter_string_not_begins_with.dart';
import 'event_subscription_advanced_filter_string_not_contain.dart';
import 'event_subscription_advanced_filter_string_not_ends_with.dart';
import 'event_subscription_advanced_filter_string_not_in.dart';

class EventSubscriptionAdvancedFilter {
  /// Compares a value of an event using a single boolean value.
  final pulumi.Input<List<EventSubscriptionAdvancedFilterBoolEqual>>? boolEquals;
  /// Evaluates if a value of an event isn't NULL or undefined.
  final pulumi.Input<List<EventSubscriptionAdvancedFilterIsNotNull>>? isNotNulls;
  /// Evaluates if a value of an event is NULL or undefined.
  ///
  /// Each nested block consists of a key and a value(s) element.
  final pulumi.Input<List<EventSubscriptionAdvancedFilterIsNullOrUndefined>>? isNullOrUndefineds;
  /// Compares a value of an event using a single floating point number.
  final pulumi.Input<List<EventSubscriptionAdvancedFilterNumberGreaterThanOrEqual>>? numberGreaterThanOrEquals;
  /// Compares a value of an event using a single floating point number.
  final pulumi.Input<List<EventSubscriptionAdvancedFilterNumberGreaterThan>>? numberGreaterThans;
  /// Compares a value of an event using multiple floating point number ranges.
  final pulumi.Input<List<EventSubscriptionAdvancedFilterNumberInRange>>? numberInRanges;
  /// Compares a value of an event using multiple floating point numbers.
  final pulumi.Input<List<EventSubscriptionAdvancedFilterNumberIn>>? numberIns;
  /// Compares a value of an event using a single floating point number.
  final pulumi.Input<List<EventSubscriptionAdvancedFilterNumberLessThanOrEqual>>? numberLessThanOrEquals;
  /// Compares a value of an event using a single floating point number.
  final pulumi.Input<List<EventSubscriptionAdvancedFilterNumberLessThan>>? numberLessThans;
  /// Compares a value of an event using multiple floating point number ranges.
  final pulumi.Input<List<EventSubscriptionAdvancedFilterNumberNotInRange>>? numberNotInRanges;
  /// Compares a value of an event using multiple floating point numbers.
  final pulumi.Input<List<EventSubscriptionAdvancedFilterNumberNotIn>>? numberNotIns;
  /// Compares a value of an event using multiple string values.
  final pulumi.Input<List<EventSubscriptionAdvancedFilterStringBeginsWith>>? stringBeginsWiths;
  /// Compares a value of an event using multiple string values.
  final pulumi.Input<List<EventSubscriptionAdvancedFilterStringContain>>? stringContains;
  /// Compares a value of an event using multiple string values.
  final pulumi.Input<List<EventSubscriptionAdvancedFilterStringEndsWith>>? stringEndsWiths;
  /// Compares a value of an event using multiple string values.
  final pulumi.Input<List<EventSubscriptionAdvancedFilterStringIn>>? stringIns;
  /// Compares a value of an event using multiple string values.
  final pulumi.Input<List<EventSubscriptionAdvancedFilterStringNotBeginsWith>>? stringNotBeginsWiths;
  /// Compares a value of an event using multiple string values.
  final pulumi.Input<List<EventSubscriptionAdvancedFilterStringNotContain>>? stringNotContains;
  /// Compares a value of an event using multiple string values.
  final pulumi.Input<List<EventSubscriptionAdvancedFilterStringNotEndsWith>>? stringNotEndsWiths;
  /// Compares a value of an event using multiple string values.
  final pulumi.Input<List<EventSubscriptionAdvancedFilterStringNotIn>>? stringNotIns;

  /// Creates a new [EventSubscriptionAdvancedFilter].
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
  EventSubscriptionAdvancedFilter({
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
      'boolEquals': ?pulumi.Input.mapOptionalInputValue<List<EventSubscriptionAdvancedFilterBoolEqual>, List<Map<String, dynamic>>>(boolEquals, (value) => pulumi.Input.encodeList<EventSubscriptionAdvancedFilterBoolEqual, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isNotNulls': ?pulumi.Input.mapOptionalInputValue<List<EventSubscriptionAdvancedFilterIsNotNull>, List<Map<String, dynamic>>>(isNotNulls, (value) => pulumi.Input.encodeList<EventSubscriptionAdvancedFilterIsNotNull, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isNullOrUndefineds': ?pulumi.Input.mapOptionalInputValue<List<EventSubscriptionAdvancedFilterIsNullOrUndefined>, List<Map<String, dynamic>>>(isNullOrUndefineds, (value) => pulumi.Input.encodeList<EventSubscriptionAdvancedFilterIsNullOrUndefined, Map<String, dynamic>>(value, (value) => value.toMap())),
      'numberGreaterThanOrEquals': ?pulumi.Input.mapOptionalInputValue<List<EventSubscriptionAdvancedFilterNumberGreaterThanOrEqual>, List<Map<String, dynamic>>>(numberGreaterThanOrEquals, (value) => pulumi.Input.encodeList<EventSubscriptionAdvancedFilterNumberGreaterThanOrEqual, Map<String, dynamic>>(value, (value) => value.toMap())),
      'numberGreaterThans': ?pulumi.Input.mapOptionalInputValue<List<EventSubscriptionAdvancedFilterNumberGreaterThan>, List<Map<String, dynamic>>>(numberGreaterThans, (value) => pulumi.Input.encodeList<EventSubscriptionAdvancedFilterNumberGreaterThan, Map<String, dynamic>>(value, (value) => value.toMap())),
      'numberInRanges': ?pulumi.Input.mapOptionalInputValue<List<EventSubscriptionAdvancedFilterNumberInRange>, List<Map<String, dynamic>>>(numberInRanges, (value) => pulumi.Input.encodeList<EventSubscriptionAdvancedFilterNumberInRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'numberIns': ?pulumi.Input.mapOptionalInputValue<List<EventSubscriptionAdvancedFilterNumberIn>, List<Map<String, dynamic>>>(numberIns, (value) => pulumi.Input.encodeList<EventSubscriptionAdvancedFilterNumberIn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'numberLessThanOrEquals': ?pulumi.Input.mapOptionalInputValue<List<EventSubscriptionAdvancedFilterNumberLessThanOrEqual>, List<Map<String, dynamic>>>(numberLessThanOrEquals, (value) => pulumi.Input.encodeList<EventSubscriptionAdvancedFilterNumberLessThanOrEqual, Map<String, dynamic>>(value, (value) => value.toMap())),
      'numberLessThans': ?pulumi.Input.mapOptionalInputValue<List<EventSubscriptionAdvancedFilterNumberLessThan>, List<Map<String, dynamic>>>(numberLessThans, (value) => pulumi.Input.encodeList<EventSubscriptionAdvancedFilterNumberLessThan, Map<String, dynamic>>(value, (value) => value.toMap())),
      'numberNotInRanges': ?pulumi.Input.mapOptionalInputValue<List<EventSubscriptionAdvancedFilterNumberNotInRange>, List<Map<String, dynamic>>>(numberNotInRanges, (value) => pulumi.Input.encodeList<EventSubscriptionAdvancedFilterNumberNotInRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'numberNotIns': ?pulumi.Input.mapOptionalInputValue<List<EventSubscriptionAdvancedFilterNumberNotIn>, List<Map<String, dynamic>>>(numberNotIns, (value) => pulumi.Input.encodeList<EventSubscriptionAdvancedFilterNumberNotIn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stringBeginsWiths': ?pulumi.Input.mapOptionalInputValue<List<EventSubscriptionAdvancedFilterStringBeginsWith>, List<Map<String, dynamic>>>(stringBeginsWiths, (value) => pulumi.Input.encodeList<EventSubscriptionAdvancedFilterStringBeginsWith, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stringContains': ?pulumi.Input.mapOptionalInputValue<List<EventSubscriptionAdvancedFilterStringContain>, List<Map<String, dynamic>>>(stringContains, (value) => pulumi.Input.encodeList<EventSubscriptionAdvancedFilterStringContain, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stringEndsWiths': ?pulumi.Input.mapOptionalInputValue<List<EventSubscriptionAdvancedFilterStringEndsWith>, List<Map<String, dynamic>>>(stringEndsWiths, (value) => pulumi.Input.encodeList<EventSubscriptionAdvancedFilterStringEndsWith, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stringIns': ?pulumi.Input.mapOptionalInputValue<List<EventSubscriptionAdvancedFilterStringIn>, List<Map<String, dynamic>>>(stringIns, (value) => pulumi.Input.encodeList<EventSubscriptionAdvancedFilterStringIn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stringNotBeginsWiths': ?pulumi.Input.mapOptionalInputValue<List<EventSubscriptionAdvancedFilterStringNotBeginsWith>, List<Map<String, dynamic>>>(stringNotBeginsWiths, (value) => pulumi.Input.encodeList<EventSubscriptionAdvancedFilterStringNotBeginsWith, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stringNotContains': ?pulumi.Input.mapOptionalInputValue<List<EventSubscriptionAdvancedFilterStringNotContain>, List<Map<String, dynamic>>>(stringNotContains, (value) => pulumi.Input.encodeList<EventSubscriptionAdvancedFilterStringNotContain, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stringNotEndsWiths': ?pulumi.Input.mapOptionalInputValue<List<EventSubscriptionAdvancedFilterStringNotEndsWith>, List<Map<String, dynamic>>>(stringNotEndsWiths, (value) => pulumi.Input.encodeList<EventSubscriptionAdvancedFilterStringNotEndsWith, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stringNotIns': ?pulumi.Input.mapOptionalInputValue<List<EventSubscriptionAdvancedFilterStringNotIn>, List<Map<String, dynamic>>>(stringNotIns, (value) => pulumi.Input.encodeList<EventSubscriptionAdvancedFilterStringNotIn, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EventSubscriptionAdvancedFilter.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionAdvancedFilter(
      boolEquals: map['boolEquals'] == null ? null : (pulumi.Input.decodeList<EventSubscriptionAdvancedFilterBoolEqual>(map['boolEquals']!, (value) => EventSubscriptionAdvancedFilterBoolEqual.fromMap((value as Map).cast<String, dynamic>()))).input(),
      isNotNulls: map['isNotNulls'] == null ? null : (pulumi.Input.decodeList<EventSubscriptionAdvancedFilterIsNotNull>(map['isNotNulls']!, (value) => EventSubscriptionAdvancedFilterIsNotNull.fromMap((value as Map).cast<String, dynamic>()))).input(),
      isNullOrUndefineds: map['isNullOrUndefineds'] == null ? null : (pulumi.Input.decodeList<EventSubscriptionAdvancedFilterIsNullOrUndefined>(map['isNullOrUndefineds']!, (value) => EventSubscriptionAdvancedFilterIsNullOrUndefined.fromMap((value as Map).cast<String, dynamic>()))).input(),
      numberGreaterThanOrEquals: map['numberGreaterThanOrEquals'] == null ? null : (pulumi.Input.decodeList<EventSubscriptionAdvancedFilterNumberGreaterThanOrEqual>(map['numberGreaterThanOrEquals']!, (value) => EventSubscriptionAdvancedFilterNumberGreaterThanOrEqual.fromMap((value as Map).cast<String, dynamic>()))).input(),
      numberGreaterThans: map['numberGreaterThans'] == null ? null : (pulumi.Input.decodeList<EventSubscriptionAdvancedFilterNumberGreaterThan>(map['numberGreaterThans']!, (value) => EventSubscriptionAdvancedFilterNumberGreaterThan.fromMap((value as Map).cast<String, dynamic>()))).input(),
      numberInRanges: map['numberInRanges'] == null ? null : (pulumi.Input.decodeList<EventSubscriptionAdvancedFilterNumberInRange>(map['numberInRanges']!, (value) => EventSubscriptionAdvancedFilterNumberInRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
      numberIns: map['numberIns'] == null ? null : (pulumi.Input.decodeList<EventSubscriptionAdvancedFilterNumberIn>(map['numberIns']!, (value) => EventSubscriptionAdvancedFilterNumberIn.fromMap((value as Map).cast<String, dynamic>()))).input(),
      numberLessThanOrEquals: map['numberLessThanOrEquals'] == null ? null : (pulumi.Input.decodeList<EventSubscriptionAdvancedFilterNumberLessThanOrEqual>(map['numberLessThanOrEquals']!, (value) => EventSubscriptionAdvancedFilterNumberLessThanOrEqual.fromMap((value as Map).cast<String, dynamic>()))).input(),
      numberLessThans: map['numberLessThans'] == null ? null : (pulumi.Input.decodeList<EventSubscriptionAdvancedFilterNumberLessThan>(map['numberLessThans']!, (value) => EventSubscriptionAdvancedFilterNumberLessThan.fromMap((value as Map).cast<String, dynamic>()))).input(),
      numberNotInRanges: map['numberNotInRanges'] == null ? null : (pulumi.Input.decodeList<EventSubscriptionAdvancedFilterNumberNotInRange>(map['numberNotInRanges']!, (value) => EventSubscriptionAdvancedFilterNumberNotInRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
      numberNotIns: map['numberNotIns'] == null ? null : (pulumi.Input.decodeList<EventSubscriptionAdvancedFilterNumberNotIn>(map['numberNotIns']!, (value) => EventSubscriptionAdvancedFilterNumberNotIn.fromMap((value as Map).cast<String, dynamic>()))).input(),
      stringBeginsWiths: map['stringBeginsWiths'] == null ? null : (pulumi.Input.decodeList<EventSubscriptionAdvancedFilterStringBeginsWith>(map['stringBeginsWiths']!, (value) => EventSubscriptionAdvancedFilterStringBeginsWith.fromMap((value as Map).cast<String, dynamic>()))).input(),
      stringContains: map['stringContains'] == null ? null : (pulumi.Input.decodeList<EventSubscriptionAdvancedFilterStringContain>(map['stringContains']!, (value) => EventSubscriptionAdvancedFilterStringContain.fromMap((value as Map).cast<String, dynamic>()))).input(),
      stringEndsWiths: map['stringEndsWiths'] == null ? null : (pulumi.Input.decodeList<EventSubscriptionAdvancedFilterStringEndsWith>(map['stringEndsWiths']!, (value) => EventSubscriptionAdvancedFilterStringEndsWith.fromMap((value as Map).cast<String, dynamic>()))).input(),
      stringIns: map['stringIns'] == null ? null : (pulumi.Input.decodeList<EventSubscriptionAdvancedFilterStringIn>(map['stringIns']!, (value) => EventSubscriptionAdvancedFilterStringIn.fromMap((value as Map).cast<String, dynamic>()))).input(),
      stringNotBeginsWiths: map['stringNotBeginsWiths'] == null ? null : (pulumi.Input.decodeList<EventSubscriptionAdvancedFilterStringNotBeginsWith>(map['stringNotBeginsWiths']!, (value) => EventSubscriptionAdvancedFilterStringNotBeginsWith.fromMap((value as Map).cast<String, dynamic>()))).input(),
      stringNotContains: map['stringNotContains'] == null ? null : (pulumi.Input.decodeList<EventSubscriptionAdvancedFilterStringNotContain>(map['stringNotContains']!, (value) => EventSubscriptionAdvancedFilterStringNotContain.fromMap((value as Map).cast<String, dynamic>()))).input(),
      stringNotEndsWiths: map['stringNotEndsWiths'] == null ? null : (pulumi.Input.decodeList<EventSubscriptionAdvancedFilterStringNotEndsWith>(map['stringNotEndsWiths']!, (value) => EventSubscriptionAdvancedFilterStringNotEndsWith.fromMap((value as Map).cast<String, dynamic>()))).input(),
      stringNotIns: map['stringNotIns'] == null ? null : (pulumi.Input.decodeList<EventSubscriptionAdvancedFilterStringNotIn>(map['stringNotIns']!, (value) => EventSubscriptionAdvancedFilterStringNotIn.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

