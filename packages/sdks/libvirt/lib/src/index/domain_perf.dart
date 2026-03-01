// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_perf_event.dart';

class DomainPerf {
  /// Specifies performance events to monitor within the domain.
  final List<DomainPerfEvent>? events;

  /// Creates a new [DomainPerf].
  /// [events] Specifies performance events to monitor within the domain.
  DomainPerf({
    this.events,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'events': ?events == null ? null : pulumi.Input.encodeList<DomainPerfEvent, Map<String, dynamic>>(events!, (value) => value.toMap()),
    };
  }

  factory DomainPerf.fromMap(Map<String, dynamic> map) {
    return DomainPerf(
      events: map['events'] == null ? null : pulumi.Input.decodeList<DomainPerfEvent>(map['events'], (value) => DomainPerfEvent.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

