// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_level_events.dart';
import 'service_level_objective.dart';

/// Input properties used for looking up and filtering ServiceLevel resources.
class ServiceLevelState {
  /// The description of the SLI.
  final pulumi.Input<String>? description;
  /// The events that define the NRDB data for the SLI/SLO calculations.
  /// See Events below for details.
  final pulumi.Input<ServiceLevelEvents>? events;
  /// The GUID of the entity (e.g, APM Service, Browser application, Workload, etc.) that you want to relate this SLI to. Note that changing the GUID will force a new resource.
  final pulumi.Input<String>? guid;
  /// A short name for the SLI that will help anyone understand what it is about.
  final pulumi.Input<String>? name;
  /// The objective of the SLI, only one can be defined.
  /// See Objective below for details.
  final pulumi.Input<ServiceLevelObjective>? objective;
  /// The unique entity identifier of the Service Level Indicator in New Relic.
  final pulumi.Input<String>? sliGuid;
  /// The unique entity identifier of the Service Level Indicator.
  final pulumi.Input<String>? sliId;

  /// Creates a new [ServiceLevelState].
  /// [description] The description of the SLI.
  /// [events] The events that define the NRDB data for the SLI/SLO calculations.
  /// [guid] The GUID of the entity (e.g, APM Service, Browser application, Workload, etc.) that you want to relate this SLI to. Note that changing the GUID will force a new resource.
  /// [name] A short name for the SLI that will help anyone understand what it is about.
  /// [objective] The objective of the SLI, only one can be defined.
  /// [sliGuid] The unique entity identifier of the Service Level Indicator in New Relic.
  /// [sliId] The unique entity identifier of the Service Level Indicator.
  ServiceLevelState({
    this.description,
    this.events,
    this.guid,
    this.name,
    this.objective,
    this.sliGuid,
    this.sliId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'events': ?pulumi.Input.mapOptionalInputValue<ServiceLevelEvents, Map<String, dynamic>>(events, (value) => value.toMap()),
      'guid': ?guid,
      'name': ?name,
      'objective': ?pulumi.Input.mapOptionalInputValue<ServiceLevelObjective, Map<String, dynamic>>(objective, (value) => value.toMap()),
      'sliGuid': ?sliGuid,
      'sliId': ?sliId,
    };
  }

  factory ServiceLevelState.fromMap(Map<String, dynamic> map) {
    return ServiceLevelState(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      events: map['events'] == null ? null : (ServiceLevelEvents.fromMap((map['events'] as Map).cast<String, dynamic>())).input(),
      guid: map['guid'] == null ? null : (map['guid'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      objective: map['objective'] == null ? null : (ServiceLevelObjective.fromMap((map['objective'] as Map).cast<String, dynamic>())).input(),
      sliGuid: map['sliGuid'] == null ? null : (map['sliGuid'] as String).input(),
      sliId: map['sliId'] == null ? null : (map['sliId'] as String).input(),
    );
  }
}

