import 'package:pulumi/pulumi.dart' as pulumi;
import 'context_dialogflow_v2beta1_args.dart';

/// Creates a context. If the specified context already exists, overrides the context.
/// Auto-naming is currently not supported for this resource.
class ContextDialogflowV2beta1 extends pulumi.CustomResource {
  late final pulumi.Output<String> environmentId;
  /// Optional. The number of conversational query requests after which the context expires. The default is `0`. If set to `0`, the context expires immediately. Contexts expire automatically after 20 minutes if there are no matching queries.
  late final pulumi.Output<int> lifespanCount;
  late final pulumi.Output<String> location;
  /// The unique identifier of the context. Supported formats: - `projects//agent/sessions//contexts/`, - `projects//locations//agent/sessions//contexts/`, - `projects//agent/environments//users//sessions//contexts/`, - `projects//locations//agent/environments//users//sessions//contexts/`, The `Context ID` is always converted to lowercase, may only contain characters in `a-zA-Z0-9_-%` and may be at most 250 bytes long. If `Environment ID` is not specified, we assume default 'draft' environment. If `User ID` is not specified, we assume default '-' user. The following context names are reserved for internal use by Dialogflow. You should not use these contexts or create contexts with these names: * `__system_counters__` * `*_id_dialog_context` * `*_dialog_params_size`
  late final pulumi.Output<String> name;
  /// Optional. The collection of parameters associated with this context. Depending on your protocol or client library language, this is a map, associative array, symbol table, dictionary, or JSON object composed of a collection of (MapKey, MapValue) pairs: * MapKey type: string * MapKey value: parameter name * MapValue type: If parameter's entity type is a composite entity then use map, otherwise, depending on the parameter value type, it could be one of string, number, boolean, null, list or map. * MapValue value: If parameter's entity type is a composite entity then use map from composite entity property names to property values, otherwise, use parameter value.
  late final pulumi.Output<Map<String, String>> parameters;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> sessionId;
  late final pulumi.Output<String> userId;

  /// Creates a new [ContextDialogflowV2beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ContextDialogflowV2beta1]. {@macro pulumi_dialogflow_v2beta1_context_dialogflow_v2beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ContextDialogflowV2beta1(
    String name, {
    ContextDialogflowV2beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v2beta1:Context',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    environmentId = registerOutput<String>('environmentId');
    lifespanCount = registerOutput<int>('lifespanCount');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>>('parameters');
    project = registerOutput<String>('project');
    sessionId = registerOutput<String>('sessionId');
    userId = registerOutput<String>('userId');
  }
}
