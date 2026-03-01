// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_tumbling_window_pipeline.dart';
import 'trigger_tumbling_window_retry.dart';
import 'trigger_tumbling_window_trigger_dependency.dart';

/// {@template pulumi_datafactory_trigger_tumbling_window_trigger_tumbling_window_args_doc}
/// The set of arguments for TriggerTumblingWindow.
/// {@endtemplate}
/// {@macro pulumi_datafactory_trigger_tumbling_window_trigger_tumbling_window_args_doc}
class TriggerTumblingWindowArgs {
  /// Specifies if the Data Factory Tumbling Window Trigger is activated. Defaults to `true`.
  final pulumi.Input<bool>? activated;
  /// A map of additional properties to associate with the Data Factory Tumbling Window Trigger.
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Tumbling Window Trigger.
  final pulumi.Input<List<String>>? annotations;
  /// The ID of Data Factory in which to associate the Trigger with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// Specifies how long the trigger waits before triggering new run. formatted as an `D.HH:MM:SS`.
  final pulumi.Input<String>? delay;
  /// The description for the Data Factory Tumbling Window Trigger.
  final pulumi.Input<String>? description;
  /// Specifies the end time of Tumbling Window, formatted as an RFC3339 string.
  final pulumi.Input<String>? endTime;
  /// Specifies the frequency of Tumbling Window. Possible values are `Hour`, `Minute` and `Month`. Changing this forces a new resource.
  final pulumi.Input<String> frequency;
  /// Specifies the interval of Tumbling Window. Changing this forces a new resource.
  final pulumi.Input<int> interval;
  /// The max number for simultaneous trigger run fired by Tumbling Window. Possible values are between `1` and `50`. Defaults to `50`.
  final pulumi.Input<int>? maxConcurrency;
  /// Specifies the name of the Data Factory Tumbling Window Trigger. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `pipeline` block as defined below.
  final pulumi.Input<TriggerTumblingWindowPipeline> pipeline;
  /// A `retry` block as defined below.
  final pulumi.Input<TriggerTumblingWindowRetry>? retry;
  /// Specifies the start time of Tumbling Window, formatted as an RFC3339 string. Changing this forces a new resource.
  final pulumi.Input<String> startTime;
  /// One or more `trigger_dependency` block as defined below.
  final pulumi.Input<List<TriggerTumblingWindowTriggerDependency>>? triggerDependencies;

  /// Creates a new [TriggerTumblingWindowArgs].
  /// [activated] Specifies if the Data Factory Tumbling Window Trigger is activated. Defaults to `true`.
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Tumbling Window Trigger.
  /// [annotations] List of tags that can be used for describing the Data Factory Tumbling Window Trigger.
  /// [dataFactoryId] The ID of Data Factory in which to associate the Trigger with. Changing this forces a new resource.
  /// [delay] Specifies how long the trigger waits before triggering new run. formatted as an `D.HH:MM:SS`.
  /// [description] The description for the Data Factory Tumbling Window Trigger.
  /// [endTime] Specifies the end time of Tumbling Window, formatted as an RFC3339 string.
  /// [frequency] Specifies the frequency of Tumbling Window. Possible values are `Hour`, `Minute` and `Month`. Changing this forces a new resource.
  /// [interval] Specifies the interval of Tumbling Window. Changing this forces a new resource.
  /// [maxConcurrency] The max number for simultaneous trigger run fired by Tumbling Window. Possible values are between `1` and `50`. Defaults to `50`.
  /// [name] Specifies the name of the Data Factory Tumbling Window Trigger. Changing this forces a new resource to be created.
  /// [pipeline] A `pipeline` block as defined below.
  /// [retry] A `retry` block as defined below.
  /// [startTime] Specifies the start time of Tumbling Window, formatted as an RFC3339 string. Changing this forces a new resource.
  /// [triggerDependencies] One or more `trigger_dependency` block as defined below.
  TriggerTumblingWindowArgs({
    pulumi.Output<bool>? activated,
    pulumi.Output<Map<String, String>>? additionalProperties,
    pulumi.Output<List<String>>? annotations,
    required pulumi.Output<String> dataFactoryId,
    pulumi.Output<String>? delay,
    pulumi.Output<String>? description,
    pulumi.Output<String>? endTime,
    required pulumi.Output<String> frequency,
    required pulumi.Output<int> interval,
    pulumi.Output<int>? maxConcurrency,
    pulumi.Output<String>? name,
    required pulumi.Output<TriggerTumblingWindowPipeline> pipeline,
    pulumi.Output<TriggerTumblingWindowRetry>? retry,
    required pulumi.Output<String> startTime,
    pulumi.Output<List<TriggerTumblingWindowTriggerDependency>>? triggerDependencies,
  }) :
      activated = pulumi.Input.asOptionalInput<bool>(activated),
      additionalProperties = pulumi.Input.asOptionalInput<Map<String, String>>(additionalProperties),
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      dataFactoryId = pulumi.Input.asInput<String>(dataFactoryId),
      delay = pulumi.Input.asOptionalInput<String>(delay),
      description = pulumi.Input.asOptionalInput<String>(description),
      endTime = pulumi.Input.asOptionalInput<String>(endTime),
      frequency = pulumi.Input.asInput<String>(frequency),
      interval = pulumi.Input.asInput<int>(interval),
      maxConcurrency = pulumi.Input.asOptionalInput<int>(maxConcurrency),
      name = pulumi.Input.asOptionalInput<String>(name),
      pipeline = pulumi.Input.asInput<TriggerTumblingWindowPipeline>(pipeline),
      retry = pulumi.Input.asOptionalInput<TriggerTumblingWindowRetry>(retry),
      startTime = pulumi.Input.asInput<String>(startTime),
      triggerDependencies = pulumi.Input.asOptionalInput<List<TriggerTumblingWindowTriggerDependency>>(triggerDependencies);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activated': ?activated,
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'dataFactoryId': dataFactoryId,
      'delay': ?delay,
      'description': ?description,
      'endTime': ?endTime,
      'frequency': frequency,
      'interval': interval,
      'maxConcurrency': ?maxConcurrency,
      'name': ?name,
      'pipeline': pulumi.Input.mapInputValue<TriggerTumblingWindowPipeline, Map<String, dynamic>>(pipeline, (value) => value.toMap()),
      'retry': ?pulumi.Input.mapOptionalInputValue<TriggerTumblingWindowRetry, Map<String, dynamic>>(retry, (value) => value.toMap()),
      'startTime': startTime,
      'triggerDependencies': ?pulumi.Input.mapOptionalInputValue<List<TriggerTumblingWindowTriggerDependency>, List<Map<String, dynamic>>>(triggerDependencies, (value) => pulumi.Input.encodeList<TriggerTumblingWindowTriggerDependency, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TriggerTumblingWindowArgs.fromMap(Map<String, dynamic> map) {
    return TriggerTumblingWindowArgs(
      activated: map['activated'] == null ? null : pulumi.Output.create<bool>(map['activated'] as bool),
      additionalProperties: map['additionalProperties'] == null ? null : pulumi.Output.create<Map<String, String>>((map['additionalProperties'] as Map).cast<String, String>()),
      annotations: map['annotations'] == null ? null : pulumi.Output.create<List<String>>((map['annotations'] as List).cast<String>()),
      dataFactoryId: pulumi.Output.create<String>(map['dataFactoryId'] as String),
      delay: map['delay'] == null ? null : pulumi.Output.create<String>(map['delay'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      endTime: map['endTime'] == null ? null : pulumi.Output.create<String>(map['endTime'] as String),
      frequency: pulumi.Output.create<String>(map['frequency'] as String),
      interval: pulumi.Output.create<int>(map['interval'] as int),
      maxConcurrency: map['maxConcurrency'] == null ? null : pulumi.Output.create<int>(map['maxConcurrency'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      pipeline: pulumi.Output.create<TriggerTumblingWindowPipeline>(TriggerTumblingWindowPipeline.fromMap((map['pipeline'] as Map).cast<String, dynamic>())),
      retry: map['retry'] == null ? null : pulumi.Output.create<TriggerTumblingWindowRetry>(TriggerTumblingWindowRetry.fromMap((map['retry'] as Map).cast<String, dynamic>())),
      startTime: pulumi.Output.create<String>(map['startTime'] as String),
      triggerDependencies: map['triggerDependencies'] == null ? null : pulumi.Output.create<List<TriggerTumblingWindowTriggerDependency>>(pulumi.Input.decodeList<TriggerTumblingWindowTriggerDependency>(map['triggerDependencies'], (value) => TriggerTumblingWindowTriggerDependency.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

