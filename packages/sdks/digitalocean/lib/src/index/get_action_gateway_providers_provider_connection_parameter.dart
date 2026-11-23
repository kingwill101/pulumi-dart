// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetActionGatewayProvidersProviderConnectionParameter {
  /// The values the parameter accepts, when restricted.
  final pulumi.Input<List<String>> allowedValues;
  /// The parameter's description.
  final pulumi.Input<String> description;
  /// The kind of input the parameter takes.
  final pulumi.Input<String> inputKind;
  /// The parameter's key in `connectionParameters`.
  final pulumi.Input<String> key;
  /// The parameter's label.
  final pulumi.Input<String> label;
  /// Whether the parameter is required.
  final pulumi.Input<bool> required;

  /// Creates a new [GetActionGatewayProvidersProviderConnectionParameter].
  /// [allowedValues] The values the parameter accepts, when restricted.
  /// [description] The parameter's description.
  /// [inputKind] The kind of input the parameter takes.
  /// [key] The parameter's key in `connectionParameters`.
  /// [label] The parameter's label.
  /// [required] Whether the parameter is required.
  const GetActionGatewayProvidersProviderConnectionParameter({
    required this.allowedValues,
    required this.description,
    required this.inputKind,
    required this.key,
    required this.label,
    required this.required,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedValues': allowedValues,
      'description': description,
      'inputKind': inputKind,
      'key': key,
      'label': label,
      'required': required,
    };
  }

  factory GetActionGatewayProvidersProviderConnectionParameter.fromMap(Map<String, dynamic> map) {
    return GetActionGatewayProvidersProviderConnectionParameter(
      allowedValues: pulumi.Input.fromValue((map['allowedValues'] as List).cast<String>()),
      description: pulumi.Input.fromValue(map['description'] as String),
      inputKind: pulumi.Input.fromValue(map['inputKind'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
      label: pulumi.Input.fromValue(map['label'] as String),
      required: pulumi.Input.fromValue(map['required'] as bool),
    );
  }
}
