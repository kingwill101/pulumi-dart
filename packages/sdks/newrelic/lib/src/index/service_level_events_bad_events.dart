// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_level_events_bad_events_select.dart';

class ServiceLevelEventsBadEvents {
  /// The event type where NRDB data will be fetched from.
  final pulumi.Input<String> from;
  /// The NRQL SELECT clause to aggregate events.
  final pulumi.Input<ServiceLevelEventsBadEventsSelect>? select;
  /// A filter that narrows down the NRDB events just to those that are considered bad responses (e.g, those that refer to
  /// a particular entity and returned an error).
  final pulumi.Input<String>? where;

  /// Creates a new [ServiceLevelEventsBadEvents].
  /// [from] The event type where NRDB data will be fetched from.
  /// [select] The NRQL SELECT clause to aggregate events.
  /// [where] A filter that narrows down the NRDB events just to those that are considered bad responses (e.g, those that refer to
  const ServiceLevelEventsBadEvents({
    required this.from,
    this.select,
    this.where,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from,
      'select': ?pulumi.Input.mapOptionalInputValue<ServiceLevelEventsBadEventsSelect, Map<String, dynamic>>(select, (value) => value.toMap()),
      'where': ?where,
    };
  }

  factory ServiceLevelEventsBadEvents.fromMap(Map<String, dynamic> map) {
    return ServiceLevelEventsBadEvents(
      from: pulumi.Input.fromValue(map['from'] as String),
      select: (() { final guardedValue = map['select']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceLevelEventsBadEventsSelect.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      where: (() { final guardedValue = map['where']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

