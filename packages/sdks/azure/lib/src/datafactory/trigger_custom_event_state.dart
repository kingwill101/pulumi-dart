// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_custom_event_pipeline.dart';

/// Input properties used for looking up and filtering TriggerCustomEvent resources.
class TriggerCustomEventState {
  /// Specifies if the Data Factory Custom Event Trigger is activated. Defaults to `true`.
  final pulumi.Input<bool>? activated;
  /// A map of additional properties to associate with the Data Factory Custom Event Trigger.
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Custom Event Trigger.
  final pulumi.Input<List<String>>? annotations;
  /// The ID of Data Factory in which to associate the Trigger with. Changing this forces a new resource.
  final pulumi.Input<String>? dataFactoryId;
  /// The description for the Data Factory Custom Event Trigger.
  final pulumi.Input<String>? description;
  /// The ID of Event Grid Topic in which event will be listened. Changing this forces a new resource.
  final pulumi.Input<String>? eventgridTopicId;
  /// List of events that will fire this trigger. At least one event must be specified.
  final pulumi.Input<List<String>>? events;
  /// Specifies the name of the Data Factory Custom Event Trigger. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One or more `pipeline` blocks as defined below.
  final pulumi.Input<List<TriggerCustomEventPipeline>>? pipelines;
  /// The pattern that event subject starts with for trigger to fire.
  final pulumi.Input<String>? subjectBeginsWith;
  /// The pattern that event subject ends with for trigger to fire.
  final pulumi.Input<String>? subjectEndsWith;

  /// Creates a new [TriggerCustomEventState].
  /// [activated] Specifies if the Data Factory Custom Event Trigger is activated. Defaults to `true`.
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Custom Event Trigger.
  /// [annotations] List of tags that can be used for describing the Data Factory Custom Event Trigger.
  /// [dataFactoryId] The ID of Data Factory in which to associate the Trigger with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Custom Event Trigger.
  /// [eventgridTopicId] The ID of Event Grid Topic in which event will be listened. Changing this forces a new resource.
  /// [events] List of events that will fire this trigger. At least one event must be specified.
  /// [name] Specifies the name of the Data Factory Custom Event Trigger. Changing this forces a new resource to be created.
  /// [pipelines] One or more `pipeline` blocks as defined below.
  /// [subjectBeginsWith] The pattern that event subject starts with for trigger to fire.
  /// [subjectEndsWith] The pattern that event subject ends with for trigger to fire.
  const TriggerCustomEventState({
    this.activated,
    this.additionalProperties,
    this.annotations,
    this.dataFactoryId,
    this.description,
    this.eventgridTopicId,
    this.events,
    this.name,
    this.pipelines,
    this.subjectBeginsWith,
    this.subjectEndsWith,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activated': ?activated,
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'dataFactoryId': ?dataFactoryId,
      'description': ?description,
      'eventgridTopicId': ?eventgridTopicId,
      'events': ?events,
      'name': ?name,
      'pipelines': ?pulumi.Input.mapOptionalInputValue<List<TriggerCustomEventPipeline>, List<Map<String, dynamic>>>(pipelines, (value) => pulumi.Input.encodeList<TriggerCustomEventPipeline, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subjectBeginsWith': ?subjectBeginsWith,
      'subjectEndsWith': ?subjectEndsWith,
    };
  }

  factory TriggerCustomEventState.fromMap(Map<String, dynamic> map) {
    return TriggerCustomEventState(
      activated: (() { final guardedValue = map['activated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      additionalProperties: (() { final guardedValue = map['additionalProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dataFactoryId: (() { final guardedValue = map['dataFactoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventgridTopicId: (() { final guardedValue = map['eventgridTopicId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      events: (() { final guardedValue = map['events']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pipelines: (() { final guardedValue = map['pipelines']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TriggerCustomEventPipeline>(guardedValue, (value) => TriggerCustomEventPipeline.fromMap((value as Map).cast<String, dynamic>()))); })(),
      subjectBeginsWith: (() { final guardedValue = map['subjectBeginsWith']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subjectEndsWith: (() { final guardedValue = map['subjectEndsWith']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
