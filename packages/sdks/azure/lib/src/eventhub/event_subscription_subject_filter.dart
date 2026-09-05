// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventSubscriptionSubjectFilter {
  /// Specifies if `subjectBeginsWith` and `subjectEndsWith` case sensitive. This value
  final pulumi.Input<bool?>? caseSensitive;
  /// A string to filter events for an event subscription based on a resource path prefix.
  final pulumi.Input<String?>? subjectBeginsWith;
  /// A string to filter events for an event subscription based on a resource path suffix.
  final pulumi.Input<String?>? subjectEndsWith;

  /// Creates a new [EventSubscriptionSubjectFilter].
  /// [caseSensitive] Specifies if `subjectBeginsWith` and `subjectEndsWith` case sensitive. This value
  /// [subjectBeginsWith] A string to filter events for an event subscription based on a resource path prefix.
  /// [subjectEndsWith] A string to filter events for an event subscription based on a resource path suffix.
  const EventSubscriptionSubjectFilter({
    this.caseSensitive,
    this.subjectBeginsWith,
    this.subjectEndsWith,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caseSensitive': ?caseSensitive,
      'subjectBeginsWith': ?subjectBeginsWith,
      'subjectEndsWith': ?subjectEndsWith,
    };
  }

  factory EventSubscriptionSubjectFilter.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionSubjectFilter(
      caseSensitive: (() { final guardedValue = map['caseSensitive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      subjectBeginsWith: (() { final guardedValue = map['subjectBeginsWith']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subjectEndsWith: (() { final guardedValue = map['subjectEndsWith']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
