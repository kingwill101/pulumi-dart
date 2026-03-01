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
    required pulumi.Output<String> apiManagementName,
    required pulumi.Output<String> displayName,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<bool>? secret,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? value,
    pulumi.Output<NamedValueValueFromKeyVault>? valueFromKeyVault,
  }) :
      apiManagementName = pulumi.Input.asInput<String>(apiManagementName),
      displayName = pulumi.Input.asInput<String>(displayName),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      secret = pulumi.Input.asOptionalInput<bool>(secret),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      value = pulumi.Input.asOptionalInput<String>(value),
      valueFromKeyVault = pulumi.Input.asOptionalInput<NamedValueValueFromKeyVault>(valueFromKeyVault);

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
      apiManagementName: pulumi.Output.create<String>(map['apiManagementName'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      secret: map['secret'] == null ? null : pulumi.Output.create<bool>(map['secret'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
      valueFromKeyVault: map['valueFromKeyVault'] == null ? null : pulumi.Output.create<NamedValueValueFromKeyVault>(NamedValueValueFromKeyVault.fromMap((map['valueFromKeyVault'] as Map).cast<String, dynamic>())),
    );
  }
}

