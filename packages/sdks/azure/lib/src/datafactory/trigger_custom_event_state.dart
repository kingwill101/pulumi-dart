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
  TriggerCustomEventState({
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
      activated: map['activated'] == null ? null : (map['activated'] as bool).input(),
      additionalProperties: map['additionalProperties'] == null ? null : ((map['additionalProperties'] as Map).cast<String, String>()).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations'] as List).cast<String>()).input(),
      dataFactoryId: map['dataFactoryId'] == null ? null : (map['dataFactoryId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      eventgridTopicId: map['eventgridTopicId'] == null ? null : (map['eventgridTopicId'] as String).input(),
      events: map['events'] == null ? null : ((map['events'] as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      pipelines: map['pipelines'] == null ? null : (pulumi.Input.decodeList<TriggerCustomEventPipeline>(map['pipelines'], (value) => TriggerCustomEventPipeline.fromMap((value as Map).cast<String, dynamic>()))).input(),
      subjectBeginsWith: map['subjectBeginsWith'] == null ? null : (map['subjectBeginsWith'] as String).input(),
      subjectEndsWith: map['subjectEndsWith'] == null ? null : (map['subjectEndsWith'] as String).input(),
    );
  }
}

