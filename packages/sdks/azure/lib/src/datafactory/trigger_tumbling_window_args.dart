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
  /// One or more `triggerDependency` block as defined below.
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
  /// [triggerDependencies] One or more `triggerDependency` block as defined below.
  const TriggerTumblingWindowArgs({
    this.activated,
    this.additionalProperties,
    this.annotations,
    required this.dataFactoryId,
    this.delay,
    this.description,
    this.endTime,
    required this.frequency,
    required this.interval,
    this.maxConcurrency,
    this.name,
    required this.pipeline,
    this.retry,
    required this.startTime,
    this.triggerDependencies,
  });

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
      activated: (() { final guardedValue = map['activated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      additionalProperties: (() { final guardedValue = map['additionalProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dataFactoryId: pulumi.Input.fromValue(map['dataFactoryId'] as String),
      delay: (() { final guardedValue = map['delay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frequency: pulumi.Input.fromValue(map['frequency'] as String),
      interval: pulumi.Input.fromValue(map['interval'] as int),
      maxConcurrency: (() { final guardedValue = map['maxConcurrency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pipeline: pulumi.Input.fromValue(TriggerTumblingWindowPipeline.fromMap((map['pipeline']! as Map).cast<String, dynamic>())),
      retry: (() { final guardedValue = map['retry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TriggerTumblingWindowRetry.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      triggerDependencies: (() { final guardedValue = map['triggerDependencies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TriggerTumblingWindowTriggerDependency>(guardedValue, (value) => TriggerTumblingWindowTriggerDependency.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
