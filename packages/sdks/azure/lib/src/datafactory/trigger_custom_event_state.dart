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
    pulumi.Output<bool>? activated,
    pulumi.Output<Map<String, String>>? additionalProperties,
    pulumi.Output<List<String>>? annotations,
    pulumi.Output<String>? dataFactoryId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? eventgridTopicId,
    pulumi.Output<List<String>>? events,
    pulumi.Output<String>? name,
    pulumi.Output<List<TriggerCustomEventPipeline>>? pipelines,
    pulumi.Output<String>? subjectBeginsWith,
    pulumi.Output<String>? subjectEndsWith,
  }) :
      activated = pulumi.Input.asOptionalInput<bool>(activated),
      additionalProperties = pulumi.Input.asOptionalInput<Map<String, String>>(additionalProperties),
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      dataFactoryId = pulumi.Input.asOptionalInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      eventgridTopicId = pulumi.Input.asOptionalInput<String>(eventgridTopicId),
      events = pulumi.Input.asOptionalInput<List<String>>(events),
      name = pulumi.Input.asOptionalInput<String>(name),
      pipelines = pulumi.Input.asOptionalInput<List<TriggerCustomEventPipeline>>(pipelines),
      subjectBeginsWith = pulumi.Input.asOptionalInput<String>(subjectBeginsWith),
      subjectEndsWith = pulumi.Input.asOptionalInput<String>(subjectEndsWith);

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
      activated: map['activated'] == null ? null : pulumi.Output.create<bool>(map['activated'] as bool),
      additionalProperties: map['additionalProperties'] == null ? null : pulumi.Output.create<Map<String, String>>((map['additionalProperties'] as Map).cast<String, String>()),
      annotations: map['annotations'] == null ? null : pulumi.Output.create<List<String>>((map['annotations'] as List).cast<String>()),
      dataFactoryId: map['dataFactoryId'] == null ? null : pulumi.Output.create<String>(map['dataFactoryId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      eventgridTopicId: map['eventgridTopicId'] == null ? null : pulumi.Output.create<String>(map['eventgridTopicId'] as String),
      events: map['events'] == null ? null : pulumi.Output.create<List<String>>((map['events'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      pipelines: map['pipelines'] == null ? null : pulumi.Output.create<List<TriggerCustomEventPipeline>>(pulumi.Input.decodeList<TriggerCustomEventPipeline>(map['pipelines'], (value) => TriggerCustomEventPipeline.fromMap((value as Map).cast<String, dynamic>()))),
      subjectBeginsWith: map['subjectBeginsWith'] == null ? null : pulumi.Output.create<String>(map['subjectBeginsWith'] as String),
      subjectEndsWith: map['subjectEndsWith'] == null ? null : pulumi.Output.create<String>(map['subjectEndsWith'] as String),
    );
  }
}

