// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents intent parameters.
class GoogleCloudDialogflowV2beta1IntentParameterResponse {
  /// Optional. The default value to use when the `value` yields an empty result. Default values can be extracted from contexts by using the following syntax: `#context_name.parameter_name`.
  final pulumi.Input<String> defaultValue;

  /// The name of the parameter.
  final pulumi.Input<String> displayName;

  /// Optional. The name of the entity type, prefixed with `@`, that describes values of the parameter. If the parameter is required, this must be provided.
  final pulumi.Input<String> entityTypeDisplayName;

  /// Optional. Indicates whether the parameter represents a list of values.
  final pulumi.Input<bool> isList;

  /// Optional. Indicates whether the parameter is required. That is, whether the intent cannot be completed without collecting the parameter value.
  final pulumi.Input<bool> mandatory;

  /// The unique identifier of this parameter.
  final pulumi.Input<String> name;

  /// Optional. The collection of prompts that the agent can present to the user in order to collect a value for the parameter.
  final pulumi.Input<List<String>> prompts;

  /// Optional. The definition of the parameter value. It can be: - a constant string, - a parameter value defined as `$parameter_name`, - an original parameter value defined as `$parameter_name.original`, - a parameter value from some context defined as `#context_name.parameter_name`.
  final pulumi.Input<String> value;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentParameterResponse].
  /// [defaultValue] Optional. The default value to use when the `value` yields an empty result. Default values can be extracted from contexts by using the following syntax: `#context_name.parameter_name`.
  /// [displayName] The name of the parameter.
  /// [entityTypeDisplayName] Optional. The name of the entity type, prefixed with `@`, that describes values of the parameter. If the parameter is required, this must be provided.
  /// [isList] Optional. Indicates whether the parameter represents a list of values.
  /// [mandatory] Optional. Indicates whether the parameter is required. That is, whether the intent cannot be completed without collecting the parameter value.
  /// [name] The unique identifier of this parameter.
  /// [prompts] Optional. The collection of prompts that the agent can present to the user in order to collect a value for the parameter.
  /// [value] Optional. The definition of the parameter value. It can be: - a constant string, - a parameter value defined as `$parameter_name`, - an original parameter value defined as `$parameter_name.original`, - a parameter value from some context defined as `#context_name.parameter_name`.
  GoogleCloudDialogflowV2beta1IntentParameterResponse({
    required this.defaultValue,
    required this.displayName,
    required this.entityTypeDisplayName,
    required this.isList,
    required this.mandatory,
    required this.name,
    required this.prompts,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValue': defaultValue,
      'displayName': displayName,
      'entityTypeDisplayName': entityTypeDisplayName,
      'isList': isList,
      'mandatory': mandatory,
      'name': name,
      'prompts': prompts,
      'value': value,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentParameterResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2beta1IntentParameterResponse(
      defaultValue: pulumi.Input.fromValue(map['defaultValue'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      entityTypeDisplayName: pulumi.Input.fromValue(
        map['entityTypeDisplayName'] as String,
      ),
      isList: pulumi.Input.fromValue(map['isList'] as bool),
      mandatory: pulumi.Input.fromValue(map['mandatory'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      prompts: pulumi.Input.fromValue((map['prompts'] as List).cast<String>()),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
