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
  final List<SystemTopicEventSubscriptionAdvancedFilterBoolEqual>? boolEquals;
  /// Evaluates if a value of an event isn't NULL or undefined.
  final List<SystemTopicEventSubscriptionAdvancedFilterIsNotNull>? isNotNulls;
  /// Evaluates if a value of an event is NULL or undefined.
  ///
  /// Each nested block consists of a key and a value(s) element.
  final List<SystemTopicEventSubscriptionAdvancedFilterIsNullOrUndefined>? isNullOrUndefineds;
  /// Compares a value of an event using a single floating point number.
  final List<SystemTopicEventSubscriptionAdvancedFilterNumberGreaterThanOrEqual>? numberGreaterThanOrEquals;
  /// Compares a value of an event using a single floating point number.
  final List<SystemTopicEventSubscriptionAdvancedFilterNumberGreaterThan>? numberGreaterThans;
  /// Compares a value of an event using multiple floating point number ranges.
  final List<SystemTopicEventSubscriptionAdvancedFilterNumberInRange>? numberInRanges;
  /// Compares a value of an event using multiple floating point numbers.
  final List<SystemTopicEventSubscriptionAdvancedFilterNumberIn>? numberIns;
  /// Compares a value of an event using a single floating point number.
  final List<SystemTopicEventSubscriptionAdvancedFilterNumberLessThanOrEqual>? numberLessThanOrEquals;
  /// Compares a value of an event using a single floating point number.
  final List<SystemTopicEventSubscriptionAdvancedFilterNumberLessThan>? numberLessThans;
  /// Compares a value of an event using multiple floating point number ranges.
  final List<SystemTopicEventSubscriptionAdvancedFilterNumberNotInRange>? numberNotInRanges;
  /// Compares a value of an event using multiple floating point numbers.
  final List<SystemTopicEventSubscriptionAdvancedFilterNumberNotIn>? numberNotIns;
  /// Compares a value of an event using multiple string values.
  final List<SystemTopicEventSubscriptionAdvancedFilterStringBeginsWith>? stringBeginsWiths;
  /// Compares a value of an event using multiple string values.
  final List<SystemTopicEventSubscriptionAdvancedFilterStringContain>? stringContains;
  /// Compares a value of an event using multiple string values.
  final List<SystemTopicEventSubscriptionAdvancedFilterStringEndsWith>? stringEndsWiths;
  /// Compares a value of an event using multiple string values.
  final List<SystemTopicEventSubscriptionAdvancedFilterStringIn>? stringIns;
  /// Compares a value of an event using multiple string values.
  final List<SystemTopicEventSubscriptionAdvancedFilterStringNotBeginsWith>? stringNotBeginsWiths;
  /// Compares a value of an event using multiple string values.
  final List<SystemTopicEventSubscriptionAdvancedFilterStringNotContain>? stringNotContains;
  /// Compares a value of an event using multiple string values.
  final List<SystemTopicEventSubscriptionAdvancedFilterStringNotEndsWith>? stringNotEndsWiths;
  /// Compares a value of an event using multiple string values.
  final List<SystemTopicEventSubscriptionAdvancedFilterStringNotIn>? stringNotIns;

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
      'boolEquals': ?boolEquals == null ? null : pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterBoolEqual, Map<String, dynamic>>(boolEquals!, (value) => value.toMap()),
      'isNotNulls': ?isNotNulls == null ? null : pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterIsNotNull, Map<String, dynamic>>(isNotNulls!, (value) => value.toMap()),
      'isNullOrUndefineds': ?isNullOrUndefineds == null ? null : pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterIsNullOrUndefined, Map<String, dynamic>>(isNullOrUndefineds!, (value) => value.toMap()),
      'numberGreaterThanOrEquals': ?numberGreaterThanOrEquals == null ? null : pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterNumberGreaterThanOrEqual, Map<String, dynamic>>(numberGreaterThanOrEquals!, (value) => value.toMap()),
      'numberGreaterThans': ?numberGreaterThans == null ? null : pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterNumberGreaterThan, Map<String, dynamic>>(numberGreaterThans!, (value) => value.toMap()),
      'numberInRanges': ?numberInRanges == null ? null : pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterNumberInRange, Map<String, dynamic>>(numberInRanges!, (value) => value.toMap()),
      'numberIns': ?numberIns == null ? null : pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterNumberIn, Map<String, dynamic>>(numberIns!, (value) => value.toMap()),
      'numberLessThanOrEquals': ?numberLessThanOrEquals == null ? null : pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterNumberLessThanOrEqual, Map<String, dynamic>>(numberLessThanOrEquals!, (value) => value.toMap()),
      'numberLessThans': ?numberLessThans == null ? null : pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterNumberLessThan, Map<String, dynamic>>(numberLessThans!, (value) => value.toMap()),
      'numberNotInRanges': ?numberNotInRanges == null ? null : pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterNumberNotInRange, Map<String, dynamic>>(numberNotInRanges!, (value) => value.toMap()),
      'numberNotIns': ?numberNotIns == null ? null : pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterNumberNotIn, Map<String, dynamic>>(numberNotIns!, (value) => value.toMap()),
      'stringBeginsWiths': ?stringBeginsWiths == null ? null : pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterStringBeginsWith, Map<String, dynamic>>(stringBeginsWiths!, (value) => value.toMap()),
      'stringContains': ?stringContains == null ? null : pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterStringContain, Map<String, dynamic>>(stringContains!, (value) => value.toMap()),
      'stringEndsWiths': ?stringEndsWiths == null ? null : pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterStringEndsWith, Map<String, dynamic>>(stringEndsWiths!, (value) => value.toMap()),
      'stringIns': ?stringIns == null ? null : pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterStringIn, Map<String, dynamic>>(stringIns!, (value) => value.toMap()),
      'stringNotBeginsWiths': ?stringNotBeginsWiths == null ? null : pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterStringNotBeginsWith, Map<String, dynamic>>(stringNotBeginsWiths!, (value) => value.toMap()),
      'stringNotContains': ?stringNotContains == null ? null : pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterStringNotContain, Map<String, dynamic>>(stringNotContains!, (value) => value.toMap()),
      'stringNotEndsWiths': ?stringNotEndsWiths == null ? null : pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterStringNotEndsWith, Map<String, dynamic>>(stringNotEndsWiths!, (value) => value.toMap()),
      'stringNotIns': ?stringNotIns == null ? null : pulumi.Input.encodeList<SystemTopicEventSubscriptionAdvancedFilterStringNotIn, Map<String, dynamic>>(stringNotIns!, (value) => value.toMap()),
    };
  }

  factory SystemTopicEventSubscriptionAdvancedFilter.fromMap(Map<String, dynamic> map) {
    return SystemTopicEventSubscriptionAdvancedFilter(
      boolEquals: map['boolEquals'] == null ? null : pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterBoolEqual>(map['boolEquals'], (value) => SystemTopicEventSubscriptionAdvancedFilterBoolEqual.fromMap((value as Map).cast<String, dynamic>())),
      isNotNulls: map['isNotNulls'] == null ? null : pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterIsNotNull>(map['isNotNulls'], (value) => SystemTopicEventSubscriptionAdvancedFilterIsNotNull.fromMap((value as Map).cast<String, dynamic>())),
      isNullOrUndefineds: map['isNullOrUndefineds'] == null ? null : pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterIsNullOrUndefined>(map['isNullOrUndefineds'], (value) => SystemTopicEventSubscriptionAdvancedFilterIsNullOrUndefined.fromMap((value as Map).cast<String, dynamic>())),
      numberGreaterThanOrEquals: map['numberGreaterThanOrEquals'] == null ? null : pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterNumberGreaterThanOrEqual>(map['numberGreaterThanOrEquals'], (value) => SystemTopicEventSubscriptionAdvancedFilterNumberGreaterThanOrEqual.fromMap((value as Map).cast<String, dynamic>())),
      numberGreaterThans: map['numberGreaterThans'] == null ? null : pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterNumberGreaterThan>(map['numberGreaterThans'], (value) => SystemTopicEventSubscriptionAdvancedFilterNumberGreaterThan.fromMap((value as Map).cast<String, dynamic>())),
      numberInRanges: map['numberInRanges'] == null ? null : pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterNumberInRange>(map['numberInRanges'], (value) => SystemTopicEventSubscriptionAdvancedFilterNumberInRange.fromMap((value as Map).cast<String, dynamic>())),
      numberIns: map['numberIns'] == null ? null : pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterNumberIn>(map['numberIns'], (value) => SystemTopicEventSubscriptionAdvancedFilterNumberIn.fromMap((value as Map).cast<String, dynamic>())),
      numberLessThanOrEquals: map['numberLessThanOrEquals'] == null ? null : pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterNumberLessThanOrEqual>(map['numberLessThanOrEquals'], (value) => SystemTopicEventSubscriptionAdvancedFilterNumberLessThanOrEqual.fromMap((value as Map).cast<String, dynamic>())),
      numberLessThans: map['numberLessThans'] == null ? null : pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterNumberLessThan>(map['numberLessThans'], (value) => SystemTopicEventSubscriptionAdvancedFilterNumberLessThan.fromMap((value as Map).cast<String, dynamic>())),
      numberNotInRanges: map['numberNotInRanges'] == null ? null : pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterNumberNotInRange>(map['numberNotInRanges'], (value) => SystemTopicEventSubscriptionAdvancedFilterNumberNotInRange.fromMap((value as Map).cast<String, dynamic>())),
      numberNotIns: map['numberNotIns'] == null ? null : pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterNumberNotIn>(map['numberNotIns'], (value) => SystemTopicEventSubscriptionAdvancedFilterNumberNotIn.fromMap((value as Map).cast<String, dynamic>())),
      stringBeginsWiths: map['stringBeginsWiths'] == null ? null : pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterStringBeginsWith>(map['stringBeginsWiths'], (value) => SystemTopicEventSubscriptionAdvancedFilterStringBeginsWith.fromMap((value as Map).cast<String, dynamic>())),
      stringContains: map['stringContains'] == null ? null : pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterStringContain>(map['stringContains'], (value) => SystemTopicEventSubscriptionAdvancedFilterStringContain.fromMap((value as Map).cast<String, dynamic>())),
      stringEndsWiths: map['stringEndsWiths'] == null ? null : pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterStringEndsWith>(map['stringEndsWiths'], (value) => SystemTopicEventSubscriptionAdvancedFilterStringEndsWith.fromMap((value as Map).cast<String, dynamic>())),
      stringIns: map['stringIns'] == null ? null : pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterStringIn>(map['stringIns'], (value) => SystemTopicEventSubscriptionAdvancedFilterStringIn.fromMap((value as Map).cast<String, dynamic>())),
      stringNotBeginsWiths: map['stringNotBeginsWiths'] == null ? null : pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterStringNotBeginsWith>(map['stringNotBeginsWiths'], (value) => SystemTopicEventSubscriptionAdvancedFilterStringNotBeginsWith.fromMap((value as Map).cast<String, dynamic>())),
      stringNotContains: map['stringNotContains'] == null ? null : pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterStringNotContain>(map['stringNotContains'], (value) => SystemTopicEventSubscriptionAdvancedFilterStringNotContain.fromMap((value as Map).cast<String, dynamic>())),
      stringNotEndsWiths: map['stringNotEndsWiths'] == null ? null : pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterStringNotEndsWith>(map['stringNotEndsWiths'], (value) => SystemTopicEventSubscriptionAdvancedFilterStringNotEndsWith.fromMap((value as Map).cast<String, dynamic>())),
      stringNotIns: map['stringNotIns'] == null ? null : pulumi.Input.decodeList<SystemTopicEventSubscriptionAdvancedFilterStringNotIn>(map['stringNotIns'], (value) => SystemTopicEventSubscriptionAdvancedFilterStringNotIn.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

