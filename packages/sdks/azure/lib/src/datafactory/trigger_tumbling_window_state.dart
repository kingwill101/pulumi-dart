// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_tumbling_window_pipeline.dart';
import 'trigger_tumbling_window_retry.dart';
import 'trigger_tumbling_window_trigger_dependency.dart';

/// Input properties used for looking up and filtering TriggerTumblingWindow resources.
class TriggerTumblingWindowState {
  /// Specifies if the Data Factory Tumbling Window Trigger is activated. Defaults to `true`.
  final pulumi.Input<bool>? activated;
  /// A map of additional properties to associate with the Data Factory Tumbling Window Trigger.
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Tumbling Window Trigger.
  final pulumi.Input<List<String>>? annotations;
  /// The ID of Data Factory in which to associate the Trigger with. Changing this forces a new resource.
  final pulumi.Input<String>? dataFactoryId;
  /// Specifies how long the trigger waits before triggering new run. formatted as an `D.HH:MM:SS`.
  final pulumi.Input<String>? delay;
  /// The description for the Data Factory Tumbling Window Trigger.
  final pulumi.Input<String>? description;
  /// Specifies the end time of Tumbling Window, formatted as an RFC3339 string.
  final pulumi.Input<String>? endTime;
  /// Specifies the frequency of Tumbling Window. Possible values are `Hour`, `Minute` and `Month`. Changing this forces a new resource.
  final pulumi.Input<String>? frequency;
  /// Specifies the interval of Tumbling Window. Changing this forces a new resource.
  final pulumi.Input<int>? interval;
  /// The max number for simultaneous trigger run fired by Tumbling Window. Possible values are between `1` and `50`. Defaults to `50`.
  final pulumi.Input<int>? maxConcurrency;
  /// Specifies the name of the Data Factory Tumbling Window Trigger. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `pipeline` block as defined below.
  final pulumi.Input<TriggerTumblingWindowPipeline>? pipeline;
  /// A `retry` block as defined below.
  final pulumi.Input<TriggerTumblingWindowRetry>? retry;
  /// Specifies the start time of Tumbling Window, formatted as an RFC3339 string. Changing this forces a new resource.
  final pulumi.Input<String>? startTime;
  /// One or more `trigger_dependency` block as defined below.
  final pulumi.Input<List<TriggerTumblingWindowTriggerDependency>>? triggerDependencies;

  /// Creates a new [TriggerTumblingWindowState].
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
  TriggerTumblingWindowState({
    this.activated,
    this.additionalProperties,
    this.annotations,
    this.dataFactoryId,
    this.delay,
    this.description,
    this.endTime,
    this.frequency,
    this.interval,
    this.maxConcurrency,
    this.name,
    this.pipeline,
    this.retry,
    this.startTime,
    this.triggerDependencies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activated': ?activated,
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'dataFactoryId': ?dataFactoryId,
      'delay': ?delay,
      'description': ?description,
      'endTime': ?endTime,
      'frequency': ?frequency,
      'interval': ?interval,
      'maxConcurrency': ?maxConcurrency,
      'name': ?name,
      'pipeline': ?pulumi.Input.mapOptionalInputValue<TriggerTumblingWindowPipeline, Map<String, dynamic>>(pipeline, (value) => value.toMap()),
      'retry': ?pulumi.Input.mapOptionalInputValue<TriggerTumblingWindowRetry, Map<String, dynamic>>(retry, (value) => value.toMap()),
      'startTime': ?startTime,
      'triggerDependencies': ?pulumi.Input.mapOptionalInputValue<List<TriggerTumblingWindowTriggerDependency>, List<Map<String, dynamic>>>(triggerDependencies, (value) => pulumi.Input.encodeList<TriggerTumblingWindowTriggerDependency, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TriggerTumblingWindowState.fromMap(Map<String, dynamic> map) {
    return TriggerTumblingWindowState(
      activated: map['activated'] == null ? null : (map['activated']! as bool).input(),
      additionalProperties: map['additionalProperties'] == null ? null : ((map['additionalProperties']! as Map).cast<String, String>()).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<String>()).input(),
      dataFactoryId: map['dataFactoryId'] == null ? null : (map['dataFactoryId']! as String).input(),
      delay: map['delay'] == null ? null : (map['delay']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      endTime: map['endTime'] == null ? null : (map['endTime']! as String).input(),
      frequency: map['frequency'] == null ? null : (map['frequency']! as String).input(),
      interval: map['interval'] == null ? null : (map['interval']! as int).input(),
      maxConcurrency: map['maxConcurrency'] == null ? null : (map['maxConcurrency']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      pipeline: map['pipeline'] == null ? null : (TriggerTumblingWindowPipeline.fromMap((map['pipeline']! as Map).cast<String, dynamic>())).input(),
      retry: map['retry'] == null ? null : (TriggerTumblingWindowRetry.fromMap((map['retry']! as Map).cast<String, dynamic>())).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
      triggerDependencies: map['triggerDependencies'] == null ? null : (pulumi.Input.decodeList<TriggerTumblingWindowTriggerDependency>(map['triggerDependencies']!, (value) => TriggerTumblingWindowTriggerDependency.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

