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
  /// &gt; **Note:** The `value` property will be updated to reflect the corresponding format when `format` is updated.
  final pulumi.Input<String>? format;
  /// The name which should be used for this Api Management Policy Fragment. Changing this forces a new Api Management Policy Fragment to be created.
  final pulumi.Input<String>? name;
  /// The value of the Policy Fragment.
  ///
  /// &gt; **Note:** Be aware of the two format possibilities. If the `value` is not applied and continues to cause a diff the format could be wrong.
  final pulumi.Input<String>? value;

  /// Creates a new [PolicyFragmentState].
  /// [apiManagementId] The id of the API Management Service. Changing this forces a new Api Management Policy Fragment to be created.
  /// [description] The description for the Policy Fragment.
  /// [format] The format of the Policy Fragment. Possible values are `xml` or `rawxml`. Default is `xml`.
  /// [name] The name which should be used for this Api Management Policy Fragment. Changing this forces a new Api Management Policy Fragment to be created.
  /// [value] The value of the Policy Fragment.
  PolicyFragmentState({
    this.apiManagementId,
    this.description,
    this.format,
    this.name,
    this.value,
  });

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
      apiManagementId: (() { final guardedValue = map['apiManagementId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

