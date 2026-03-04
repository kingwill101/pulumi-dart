// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_level_events_good_events_select.dart';

class ServiceLevelEventsGoodEvents {
  /// The event type where NRDB data will be fetched from.
  final pulumi.Input<String> from;

  /// The NRQL SELECT clause to aggregate events.
  final pulumi.Input<ServiceLevelEventsGoodEventsSelect>? select;

  /// A filter that narrows down the NRDB events just to those that are considered good responses (e.g, those that refer to
  /// a particular entity and were successful).
  final pulumi.Input<String>? where;

  /// Creates a new [ServiceLevelEventsGoodEvents].
  /// [from] The event type where NRDB data will be fetched from.
  /// [select] The NRQL SELECT clause to aggregate events.
  /// [where] A filter that narrows down the NRDB events just to those that are considered good responses (e.g, those that refer to
  ServiceLevelEventsGoodEvents({required this.from, this.select, this.where});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from,
      'select':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceLevelEventsGoodEventsSelect,
            Map<String, dynamic>
          >(select, (value) => value.toMap()),
      'where': ?where,
    };
  }

  factory ServiceLevelEventsGoodEvents.fromMap(Map<String, dynamic> map) {
    return ServiceLevelEventsGoodEvents(
      from: pulumi.Input.fromValue(map['from'] as String),
      select: (() {
        final guardedValue = map['select'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceLevelEventsGoodEventsSelect.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      where: (() {
        final guardedValue = map['where'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
