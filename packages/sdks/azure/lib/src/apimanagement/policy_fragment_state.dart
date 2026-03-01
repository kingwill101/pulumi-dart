// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PolicyFragment resources.
class PolicyFragmentState {
  /// The id of the API Management Service. Changing this forces a new Api Management Policy Fragment to be created.
  final pulumi.Input<String>? apiManagementId;
  /// The description for the Policy Fragment.
  final pulumi.Input<String>? description;
  /// The format of the Policy Fragment. Possible values are `xml` or `rawxml`. Default is `xml`.
  ///
  /// > **Note:** The `value` property will be updated to reflect the corresponding format when `format` is updated.
  final pulumi.Input<String>? format;
  /// The name which should be used for this Api Management Policy Fragment. Changing this forces a new Api Management Policy Fragment to be created.
  final pulumi.Input<String>? name;
  /// The value of the Policy Fragment.
  ///
  /// > **Note:** Be aware of the two format possibilities. If the `value` is not applied and continues to cause a diff the format could be wrong.
  final pulumi.Input<String>? value;

  /// Creates a new [PolicyFragmentState].
  /// [apiManagementId] The id of the API Management Service. Changing this forces a new Api Management Policy Fragment to be created.
  /// [description] The description for the Policy Fragment.
  /// [format] The format of the Policy Fragment. Possible values are `xml` or `rawxml`. Default is `xml`.
  /// [name] The name which should be used for this Api Management Policy Fragment. Changing this forces a new Api Management Policy Fragment to be created.
  /// [value] The value of the Policy Fragment.
  PolicyFragmentState({
    pulumi.Output<String>? apiManagementId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? format,
    pulumi.Output<String>? name,
    pulumi.Output<String>? value,
  }) :
      apiManagementId = pulumi.Input.asOptionalInput<String>(apiManagementId),
      description = pulumi.Input.asOptionalInput<String>(description),
      format = pulumi.Input.asOptionalInput<String>(format),
      name = pulumi.Input.asOptionalInput<String>(name),
      value = pulumi.Input.asOptionalInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementId': ?apiManagementId,
      'description': ?description,
      'format': ?format,
      'name': ?name,
      'value': ?value,
    };
  }

  factory PolicyFragmentState.fromMap(Map<String, dynamic> map) {
    return PolicyFragmentState(
      apiManagementId: map['apiManagementId'] == null ? null : pulumi.Output.create<String>(map['apiManagementId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      format: map['format'] == null ? null : pulumi.Output.create<String>(map['format'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
    );
  }
}

