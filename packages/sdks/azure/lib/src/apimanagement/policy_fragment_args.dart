// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_policy_fragment_policy_fragment_args_doc}
/// The set of arguments for PolicyFragment.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_policy_fragment_policy_fragment_args_doc}
class PolicyFragmentArgs {
  /// The id of the API Management Service. Changing this forces a new Api Management Policy Fragment to be created.
  final pulumi.Input<String> apiManagementId;
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
  final pulumi.Input<String> value;

  /// Creates a new [PolicyFragmentArgs].
  /// [apiManagementId] The id of the API Management Service. Changing this forces a new Api Management Policy Fragment to be created.
  /// [description] The description for the Policy Fragment.
  /// [format] The format of the Policy Fragment. Possible values are `xml` or `rawxml`. Default is `xml`.
  /// [name] The name which should be used for this Api Management Policy Fragment. Changing this forces a new Api Management Policy Fragment to be created.
  /// [value] The value of the Policy Fragment.
  PolicyFragmentArgs({
    required this.apiManagementId,
    this.description,
    this.format,
    this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementId': apiManagementId,
      'description': ?description,
      'format': ?format,
      'name': ?name,
      'value': value,
    };
  }

  factory PolicyFragmentArgs.fromMap(Map<String, dynamic> map) {
    return PolicyFragmentArgs(
      apiManagementId: (map['apiManagementId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      format: map['format'] == null ? null : (map['format'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

