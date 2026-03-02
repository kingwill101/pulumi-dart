// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents intent parameters.
class GoogleCloudDialogflowV2beta1IntentParameter {
  /// Optional. The default value to use when the `value` yields an empty result. Default values can be extracted from contexts by using the following syntax: `#context_name.parameter_name`.
  final pulumi.Input<String>? defaultValue;
  /// The name of the parameter.
  final pulumi.Input<String> displayName;
  /// Optional. The name of the entity type, prefixed with `@`, that describes values of the parameter. If the parameter is required, this must be provided.
  final pulumi.Input<String>? entityTypeDisplayName;
  /// Optional. Indicates whether the parameter represents a list of values.
  final pulumi.Input<bool>? isList;
  /// Optional. Indicates whether the parameter is required. That is, whether the intent cannot be completed without collecting the parameter value.
  final pulumi.Input<bool>? mandatory;
  /// The unique identifier of this parameter.
  final pulumi.Input<String>? name;
  /// Optional. The collection of prompts that the agent can present to the user in order to collect a value for the parameter.
  final pulumi.Input<List<String>>? prompts;
  /// Optional. The definition of the parameter value. It can be: - a constant string, - a parameter value defined as `$parameter_name`, - an original parameter value defined as `$parameter_name.original`, - a parameter value from some context defined as `#context_name.parameter_name`.
  final pulumi.Input<String>? value;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentParameter].
  /// [defaultValue] Optional. The default value to use when the `value` yields an empty result. Default values can be extracted from contexts by using the following syntax: `#context_name.parameter_name`.
  /// [displayName] The name of the parameter.
  /// [entityTypeDisplayName] Optional. The name of the entity type, prefixed with `@`, that describes values of the parameter. If the parameter is required, this must be provided.
  /// [isList] Optional. Indicates whether the parameter represents a list of values.
  /// [mandatory] Optional. Indicates whether the parameter is required. That is, whether the intent cannot be completed without collecting the parameter value.
  /// [name] The unique identifier of this parameter.
  /// [prompts] Optional. The collection of prompts that the agent can present to the user in order to collect a value for the parameter.
  /// [value] Optional. The definition of the parameter value. It can be: - a constant string, - a parameter value defined as `$parameter_name`, - an original parameter value defined as `$parameter_name.original`, - a parameter value from some context defined as `#context_name.parameter_name`.
  GoogleCloudDialogflowV2beta1IntentParameter({
    this.defaultValue,
    required this.displayName,
    this.entityTypeDisplayName,
    this.isList,
    this.mandatory,
    this.name,
    this.prompts,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValue': ?defaultValue,
      'displayName': displayName,
      'entityTypeDisplayName': ?entityTypeDisplayName,
      'isList': ?isList,
      'mandatory': ?mandatory,
      'name': ?name,
      'prompts': ?prompts,
      'value': ?value,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentParameter.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentParameter(
      defaultValue: map['defaultValue'] == null ? null : (map['defaultValue']! as String).input(),
      displayName: (map['displayName'] as String).input(),
      entityTypeDisplayName: map['entityTypeDisplayName'] == null ? null : (map['entityTypeDisplayName']! as String).input(),
      isList: map['isList'] == null ? null : (map['isList']! as bool).input(),
      mandatory: map['mandatory'] == null ? null : (map['mandatory']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      prompts: map['prompts'] == null ? null : ((map['prompts']! as List).cast<String>()).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

