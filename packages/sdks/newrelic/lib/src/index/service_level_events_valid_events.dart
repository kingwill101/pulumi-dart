// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_level_events_valid_events_select.dart';

class ServiceLevelEventsValidEvents {
  /// The event type where NRDB data will be fetched from.
  final pulumi.Input<String> from;
  /// The NRQL SELECT clause to aggregate events.
  final pulumi.Input<ServiceLevelEventsValidEventsSelect>? select;
  /// A filter that specifies all the NRDB events that are considered in this SLI (e.g, those that refer to a particular entity).
  final pulumi.Input<String>? where;

  /// Creates a new [ServiceLevelEventsValidEvents].
  /// [from] The event type where NRDB data will be fetched from.
  /// [select] The NRQL SELECT clause to aggregate events.
  /// [where] A filter that specifies all the NRDB events that are considered in this SLI (e.g, those that refer to a particular entity).
  const ServiceLevelEventsValidEvents({
    required this.from,
    this.select,
    this.where,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from,
      'select': ?pulumi.Input.mapOptionalInputValue<ServiceLevelEventsValidEventsSelect, Map<String, dynamic>>(select, (value) => value.toMap()),
      'where': ?where,
    };
  }

  factory ServiceLevelEventsValidEvents.fromMap(Map<String, dynamic> map) {
    return ServiceLevelEventsValidEvents(
      from: pulumi.Input.fromValue(map['from'] as String),
      select: (() { final guardedValue = map['select']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceLevelEventsValidEventsSelect.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      where: (() { final guardedValue = map['where']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

