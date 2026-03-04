// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'run_state.dart';

/// {@template pulumi_datalineage_v1_run_args_doc}
/// The set of arguments for Run.
/// {@endtemplate}
/// {@macro pulumi_datalineage_v1_run_args_doc}
class RunArgs {
  /// Optional. The attributes of the run. Should only be used for the purpose of non-semantic management (classifying, describing or labeling the run). Up to 100 attributes are allowed.
  final pulumi.Input<Map<String, String>>? attributes;

  /// Optional. A human-readable name you can set to display in a user interface. Must be not longer than 1024 characters and only contain UTF-8 letters or numbers, spaces or characters like `_-:&.`
  final pulumi.Input<String>? displayName;

  /// Optional. The timestamp of the end of the run.
  final pulumi.Input<String>? endTime;
  final pulumi.Input<String>? location;

  /// Immutable. The resource name of the run. Format: `projects/{project}/locations/{location}/processes/{process}/runs/{run}`. Can be specified or auto-assigned. {run} must be not longer than 200 characters and only contain characters in a set: `a-zA-Z0-9_-:.`
  final pulumi.Input<String>? name;
  final pulumi.Input<String> processId;
  final pulumi.Input<String>? project;

  /// A unique identifier for this request. Restricted to 36 ASCII characters. A random UUID is recommended. This request is idempotent only if a `request_id` is provided.
  final pulumi.Input<String>? requestId;

  /// The timestamp of the start of the run.
  final pulumi.Input<String> startTime;

  /// The state of the run.
  final pulumi.Input<RunState> state;

  /// Creates a new [RunArgs].
  /// [attributes] Optional. The attributes of the run. Should only be used for the purpose of non-semantic management (classifying, describing or labeling the run). Up to 100 attributes are allowed.
  /// [displayName] Optional. A human-readable name you can set to display in a user interface. Must be not longer than 1024 characters and only contain UTF-8 letters or numbers, spaces or characters like `_-:&.`
  /// [endTime] Optional. The timestamp of the end of the run.
  /// [location] Optional.
  /// [name] Immutable. The resource name of the run. Format: `projects/{project}/locations/{location}/processes/{process}/runs/{run}`. Can be specified or auto-assigned. {run} must be not longer than 200 characters and only contain characters in a set: `a-zA-Z0-9_-:.`
  /// [processId] Required.
  /// [project] Optional.
  /// [requestId] A unique identifier for this request. Restricted to 36 ASCII characters. A random UUID is recommended. This request is idempotent only if a `request_id` is provided.
  /// [startTime] The timestamp of the start of the run.
  /// [state] The state of the run.
  RunArgs({
    this.attributes,
    this.displayName,
    this.endTime,
    this.location,
    this.name,
    required this.processId,
    this.project,
    this.requestId,
    required this.startTime,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes,
      'displayName': ?displayName,
      'endTime': ?endTime,
      'location': ?location,
      'name': ?name,
      'processId': processId,
      'project': ?project,
      'requestId': ?requestId,
      'startTime': startTime,
      'state': pulumi.Input.mapInputValue<RunState, String>(
        state,
        (value) => value.wireValue,
      ),
    };
  }

  factory RunArgs.fromMap(Map<String, dynamic> map) {
    return RunArgs(
      attributes: (() {
        final guardedValue = map['attributes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endTime: (() {
        final guardedValue = map['endTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      processId: pulumi.Input.fromValue(map['processId'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      requestId: (() {
        final guardedValue = map['requestId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      state: pulumi.Input.fromValue(
        RunState.fromValue(map['state']! as String),
      ),
    );
  }
}
