// ignore_for_file: unused_element, unnecessary_cast

import 'service_level_events_good_events_select.dart';

class ServiceLevelEventsGoodEvents {
  /// The event type where NRDB data will be fetched from.
  final String from;
  /// The NRQL SELECT clause to aggregate events.
  final ServiceLevelEventsGoodEventsSelect? select;
  /// A filter that narrows down the NRDB events just to those that are considered good responses (e.g, those that refer to
  /// a particular entity and were successful).
  final String? where;

  /// Creates a new [ServiceLevelEventsGoodEvents].
  /// [from] The event type where NRDB data will be fetched from.
  /// [select] The NRQL SELECT clause to aggregate events.
  /// [where] A filter that narrows down the NRDB events just to those that are considered good responses (e.g, those that refer to
  ServiceLevelEventsGoodEvents({
    required this.from,
    this.select,
    this.where,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from,
      'select': ?select == null ? null : select!.toMap(),
      'where': ?where,
    };
  }

  factory ServiceLevelEventsGoodEvents.fromMap(Map<String, dynamic> map) {
    return ServiceLevelEventsGoodEvents(
      from: map['from'] as String,
      select: map['select'] == null ? null : ServiceLevelEventsGoodEventsSelect.fromMap((map['select'] as Map).cast<String, dynamic>()),
      where: map['where'] == null ? null : map['where'] as String,
    );
  }
}

