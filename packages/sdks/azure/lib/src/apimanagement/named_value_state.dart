// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'named_value_value_from_key_vault.dart';

/// Input properties used for looking up and filtering NamedValue resources.
class NamedValueState {
  /// The name of the API Management Service in which the API Management Named Value should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? apiManagementName;
  /// The display name of this API Management Named Value.
  final pulumi.Input<String?>? displayName;
  /// The name of the API Management Named Value. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The name of the Resource Group in which the API Management Named Value should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// Specifies whether the API Management Named Value is secret. Valid values are `true` or `false`. The default value is `false`.
  ///
  /// &gt; **NOTE:** setting the field `secret` to `true` doesn't make this field sensitive in the provider, instead it marks the value as secret and encrypts the value in Azure.
  final pulumi.Input<bool?>? secret;
  /// A list of tags to be applied to the API Management Named Value.
  final pulumi.Input<List<String>?>? tags;
  /// The value of this API Management Named Value.
  final pulumi.Input<String?>? value;
  /// A `valueFromKeyVault` block as defined below. If specified, `secret` must also be set to `true`.
  final pulumi.Input<NamedValueValueFromKeyVault?>? valueFromKeyVault;

  /// Creates a new [NamedValueState].
  /// [apiManagementName] The name of the API Management Service in which the API Management Named Value should exist. Changing this forces a new resource to be created.
  /// [displayName] The display name of this API Management Named Value.
  /// [name] The name of the API Management Named Value. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the API Management Named Value should exist. Changing this forces a new resource to be created.
  /// [secret] Specifies whether the API Management Named Value is secret. Valid values are `true` or `false`. The default value is `false`.
  /// [tags] A list of tags to be applied to the API Management Named Value.
  /// [value] The value of this API Management Named Value.
  /// [valueFromKeyVault] A `valueFromKeyVault` block as defined below. If specified, `secret` must also be set to `true`.
  const NamedValueState({
    this.apiManagementName,
    this.displayName,
    this.name,
    this.resourceGroupName,
    this.secret,
    this.tags,
    this.value,
    this.valueFromKeyVault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': ?apiManagementName,
      'displayName': ?displayName,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'secret': ?secret,
      'tags': ?tags,
      'value': ?value,
      'valueFromKeyVault': ?pulumi.Input.mapOptionalInputValue<NamedValueValueFromKeyVault, Map<String, dynamic>>(valueFromKeyVault, (value) => value.toMap()),
    };
  }

  factory NamedValueState.fromMap(Map<String, dynamic> map) {
    return NamedValueState(
      apiManagementName: (() { final guardedValue = map['apiManagementName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valueFromKeyVault: (() { final guardedValue = map['valueFromKeyVault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NamedValueValueFromKeyVault.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
