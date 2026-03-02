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
  ServiceLevelEventsValidEvents({
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
      from: (map['from'] as String).input(),
      select: map['select'] == null ? null : (ServiceLevelEventsValidEventsSelect.fromMap((map['select'] as Map).cast<String, dynamic>())).input(),
      where: map['where'] == null ? null : (map['where'] as String).input(),
    );
  }
}

