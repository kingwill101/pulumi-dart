// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_level_events_bad_events.dart';
import 'service_level_events_good_events.dart';
import 'service_level_events_valid_events.dart';

class ServiceLevelEvents {
  /// The ID of the account where the entity (e.g, APM Service, Browser application, Workload, etc.) belongs to,
  /// and that contains the NRDB data for the SLI/SLO calculations. Note that changing the account ID will force a new resource.
  final pulumi.Input<String> accountId;
  /// The definition of the bad responses. If you define an SLI from valid and bad events, you must leave the good events argument empty.
  final pulumi.Input<ServiceLevelEventsBadEvents>? badEvents;
  /// The definition of good responses. If you define an SLI from valid and good events, you must leave the bad events argument empty.
  final pulumi.Input<ServiceLevelEventsGoodEvents>? goodEvents;
  /// The definition of valid requests.
  final pulumi.Input<ServiceLevelEventsValidEvents> validEvents;

  /// Creates a new [ServiceLevelEvents].
  /// [accountId] The ID of the account where the entity (e.g, APM Service, Browser application, Workload, etc.) belongs to,
  /// [badEvents] The definition of the bad responses. If you define an SLI from valid and bad events, you must leave the good events argument empty.
  /// [goodEvents] The definition of good responses. If you define an SLI from valid and good events, you must leave the bad events argument empty.
  /// [validEvents] The definition of valid requests.
  const ServiceLevelEvents({
    required this.accountId,
    this.badEvents,
    this.goodEvents,
    required this.validEvents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'badEvents': ?pulumi.Input.mapOptionalInputValue<ServiceLevelEventsBadEvents, Map<String, dynamic>>(badEvents, (value) => value.toMap()),
      'goodEvents': ?pulumi.Input.mapOptionalInputValue<ServiceLevelEventsGoodEvents, Map<String, dynamic>>(goodEvents, (value) => value.toMap()),
      'validEvents': pulumi.Input.mapInputValue<ServiceLevelEventsValidEvents, Map<String, dynamic>>(validEvents, (value) => value.toMap()),
    };
  }

  factory ServiceLevelEvents.fromMap(Map<String, dynamic> map) {
    return ServiceLevelEvents(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      badEvents: (() { final guardedValue = map['badEvents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceLevelEventsBadEvents.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      goodEvents: (() { final guardedValue = map['goodEvents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceLevelEventsGoodEvents.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      validEvents: pulumi.Input.fromValue(ServiceLevelEventsValidEvents.fromMap((map['validEvents']! as Map).cast<String, dynamic>())),
    );
  }
}

