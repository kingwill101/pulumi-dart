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
      'state': pulumi.Input.mapInputValue<RunState, String>(state, (value) => value.value),
    };
  }

  factory RunArgs.fromMap(Map<String, dynamic> map) {
    return RunArgs(
      attributes: map['attributes'] == null ? null : ((map['attributes'] as Map).cast<String, String>()).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      endTime: map['endTime'] == null ? null : (map['endTime'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      processId: (map['processId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId'] as String).input(),
      startTime: (map['startTime'] as String).input(),
      state: (RunState.fromValue(map['state'] as String)).input(),
    );
  }
}

