import 'package:pulumi/pulumi.dart' as pulumi;
import 'variable_args.dart';

/// Creates a variable within the given configuration. You cannot create a variable with a name that is a prefix of an existing variable name, or a name that has an existing variable name as a prefix. To learn more about creating a variable, read the [Setting and Getting Data](/deployment-manager/runtime-configurator/set-and-get-variables) documentation.
class Variable extends pulumi.CustomResource {
  late final pulumi.Output<String> configId;
  /// The name of the variable resource, in the format: projects/[PROJECT_ID]/configs/[CONFIG_NAME]/variables/[VARIABLE_NAME] The `[PROJECT_ID]` must be a valid project ID, `[CONFIG_NAME]` must be a valid RuntimeConfig resource and `[VARIABLE_NAME]` follows Unix file system file path naming. The `[VARIABLE_NAME]` can contain ASCII letters, numbers, slashes and dashes. Slashes are used as path element separators and are not part of the `[VARIABLE_NAME]` itself, so `[VARIABLE_NAME]` must contain at least one non-slash character. Multiple slashes are coalesced into single slash character. Each path segment should match [0-9A-Za-z](?:[_.A-Za-z0-9-]{0,62}[_.A-Za-z0-9])? regular expression. The length of a `[VARIABLE_NAME]` must be less than 256 characters. Once you create a variable, you cannot change the variable name.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// An optional but recommended unique `request_id`. If the server receives two `create()` requests with the same `request_id`, then the second request will be ignored and the first resource created and stored in the backend is returned. Empty `request_id` fields are ignored. It is responsibility of the client to ensure uniqueness of the `request_id` strings. `request_id` strings are limited to 64 characters.
  late final pulumi.Output<String?> requestId;
  /// The current state of the variable. The variable state indicates the outcome of the `variables().watch` call and is visible through the `get` and `list` calls.
  late final pulumi.Output<String> state;
  /// The string value of the variable. The length of the value must be less than 4096 bytes. Empty values are also accepted. For example, `text: "my text value"`. The string must be valid UTF-8.
  late final pulumi.Output<String> text;
  /// The time of the last variable update. Timestamp will be UTC timestamp.
  late final pulumi.Output<String> updateTime;
  /// The binary value of the variable. The length of the value must be less than 4096 bytes. Empty values are also accepted. The value must be base64 encoded, and must comply with IETF RFC4648 (https://www.ietf.org/rfc/rfc4648.txt). Only one of `value` or `text` can be set.
  late final pulumi.Output<String> value;

  /// Creates a new [Variable].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Variable]. {@macro pulumi_runtimeconfig_v1beta1_variable_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Variable(
    String name, {
    VariableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:runtimeconfig/v1beta1:Variable',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configId = registerOutput<String>('configId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    requestId = registerOutput<String?>('requestId');
    state = registerOutput<String>('state');
    text = registerOutput<String>('text');
    updateTime = registerOutput<String>('updateTime');
    value = registerOutput<String>('value');
  }
}
