// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v2beta1_context_dialogflow_v2beta1_args_doc}
/// The set of arguments for Context.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2beta1_context_dialogflow_v2beta1_args_doc}
class ContextDialogflowV2beta1Args {
  final pulumi.Input<String> environmentId;
  /// Optional. The number of conversational query requests after which the context expires. The default is `0`. If set to `0`, the context expires immediately. Contexts expire automatically after 20 minutes if there are no matching queries.
  final pulumi.Input<int>? lifespanCount;
  final pulumi.Input<String>? location;
  /// The unique identifier of the context. Supported formats: - `projects//agent/sessions//contexts/`, - `projects//locations//agent/sessions//contexts/`, - `projects//agent/environments//users//sessions//contexts/`, - `projects//locations//agent/environments//users//sessions//contexts/`, The `Context ID` is always converted to lowercase, may only contain characters in `a-zA-Z0-9_-%` and may be at most 250 bytes long. If `Environment ID` is not specified, we assume default 'draft' environment. If `User ID` is not specified, we assume default '-' user. The following context names are reserved for internal use by Dialogflow. You should not use these contexts or create contexts with these names: * `__system_counters__` * `*_id_dialog_context` * `*_dialog_params_size`
  final pulumi.Input<String> name;
  /// Optional. The collection of parameters associated with this context. Depending on your protocol or client library language, this is a map, associative array, symbol table, dictionary, or JSON object composed of a collection of (MapKey, MapValue) pairs: * MapKey type: string * MapKey value: parameter name * MapValue type: If parameter's entity type is a composite entity then use map, otherwise, depending on the parameter value type, it could be one of string, number, boolean, null, list or map. * MapValue value: If parameter's entity type is a composite entity then use map from composite entity property names to property values, otherwise, use parameter value.
  final pulumi.Input<Map<String, String>>? parameters;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sessionId;
  final pulumi.Input<String> userId;

  /// Creates a new [ContextDialogflowV2beta1Args].
  /// [environmentId] Required.
  /// [lifespanCount] Optional. The number of conversational query requests after which the context expires. The default is `0`. If set to `0`, the context expires immediately. Contexts expire automatically after 20 minutes if there are no matching queries.
  /// [location] Optional.
  /// [name] The unique identifier of the context. Supported formats: - `projects//agent/sessions//contexts/`, - `projects//locations//agent/sessions//contexts/`, - `projects//agent/environments//users//sessions//contexts/`, - `projects//locations//agent/environments//users//sessions//contexts/`, The `Context ID` is always converted to lowercase, may only contain characters in `a-zA-Z0-9_-%` and may be at most 250 bytes long. If `Environment ID` is not specified, we assume default 'draft' environment. If `User ID` is not specified, we assume default '-' user. The following context names are reserved for internal use by Dialogflow. You should not use these contexts or create contexts with these names: * `__system_counters__` * `*_id_dialog_context` * `*_dialog_params_size`
  /// [parameters] Optional. The collection of parameters associated with this context. Depending on your protocol or client library language, this is a map, associative array, symbol table, dictionary, or JSON object composed of a collection of (MapKey, MapValue) pairs: * MapKey type: string * MapKey value: parameter name * MapValue type: If parameter's entity type is a composite entity then use map, otherwise, depending on the parameter value type, it could be one of string, number, boolean, null, list or map. * MapValue value: If parameter's entity type is a composite entity then use map from composite entity property names to property values, otherwise, use parameter value.
  /// [project] Optional.
  /// [sessionId] Required.
  /// [userId] Required.
  ContextDialogflowV2beta1Args({
    required pulumi.Output<String> environmentId,
    pulumi.Output<int>? lifespanCount,
    pulumi.Output<String>? location,
    required pulumi.Output<String> name,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<String>? project,
    required pulumi.Output<String> sessionId,
    required pulumi.Output<String> userId,
  }) :
      environmentId = pulumi.Input.asInput<String>(environmentId),
      lifespanCount = pulumi.Input.asOptionalInput<int>(lifespanCount),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      project = pulumi.Input.asOptionalInput<String>(project),
      sessionId = pulumi.Input.asInput<String>(sessionId),
      userId = pulumi.Input.asInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
      'lifespanCount': ?lifespanCount,
      'location': ?location,
      'name': name,
      'parameters': ?parameters,
      'project': ?project,
      'sessionId': sessionId,
      'userId': userId,
    };
  }

  factory ContextDialogflowV2beta1Args.fromMap(Map<String, dynamic> map) {
    return ContextDialogflowV2beta1Args(
      environmentId: pulumi.Output.create<String>(map['environmentId'] as String),
      lifespanCount: map['lifespanCount'] == null ? null : pulumi.Output.create<int>(map['lifespanCount'] as int),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      sessionId: pulumi.Output.create<String>(map['sessionId'] as String),
      userId: pulumi.Output.create<String>(map['userId'] as String),
    );
  }
}

