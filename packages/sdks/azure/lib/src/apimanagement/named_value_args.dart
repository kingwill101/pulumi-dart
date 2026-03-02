// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'named_value_value_from_key_vault.dart';

/// {@template pulumi_apimanagement_named_value_named_value_args_doc}
/// The set of arguments for NamedValue.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_named_value_named_value_args_doc}
class NamedValueArgs {
  /// The name of the API Management Service in which the API Management Named Value should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementName;
  /// The display name of this API Management Named Value.
  final pulumi.Input<String> displayName;
  /// The name of the API Management Named Value. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group in which the API Management Named Value should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies whether the API Management Named Value is secret. Valid values are `true` or `false`. The default value is `false`.
  ///
  /// > **NOTE:** setting the field `secret` to `true` doesn't make this field sensitive in the provider, instead it marks the value as secret and encrypts the value in Azure.
  final pulumi.Input<bool>? secret;
  /// A list of tags to be applied to the API Management Named Value.
  final pulumi.Input<List<String>>? tags;
  /// The value of this API Management Named Value.
  final pulumi.Input<String>? value;
  /// A `value_from_key_vault` block as defined below. If specified, `secret` must also be set to `true`.
  final pulumi.Input<NamedValueValueFromKeyVault>? valueFromKeyVault;

  /// Creates a new [NamedValueArgs].
  /// [apiManagementName] The name of the API Management Service in which the API Management Named Value should exist. Changing this forces a new resource to be created.
  /// [displayName] The display name of this API Management Named Value.
  /// [name] The name of the API Management Named Value. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the API Management Named Value should exist. Changing this forces a new resource to be created.
  /// [secret] Specifies whether the API Management Named Value is secret. Valid values are `true` or `false`. The default value is `false`.
  /// [tags] A list of tags to be applied to the API Management Named Value.
  /// [value] The value of this API Management Named Value.
  /// [valueFromKeyVault] A `value_from_key_vault` block as defined below. If specified, `secret` must also be set to `true`.
  NamedValueArgs({
    required this.apiManagementName,
    required this.displayName,
    this.name,
    required this.resourceGroupName,
    this.secret,
    this.tags,
    this.value,
    this.valueFromKeyVault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': apiManagementName,
      'displayName': displayName,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'secret': ?secret,
      'tags': ?tags,
      'value': ?value,
      'valueFromKeyVault': ?pulumi.Input.mapOptionalInputValue<NamedValueValueFromKeyVault, Map<String, dynamic>>(valueFromKeyVault, (value) => value.toMap()),
    };
  }

  factory NamedValueArgs.fromMap(Map<String, dynamic> map) {
    return NamedValueArgs(
      apiManagementName: (map['apiManagementName'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      secret: map['secret'] == null ? null : (map['secret']! as bool).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as List).cast<String>()).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
      valueFromKeyVault: map['valueFromKeyVault'] == null ? null : (NamedValueValueFromKeyVault.fromMap((map['valueFromKeyVault']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

