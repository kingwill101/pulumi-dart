// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_named_value_value_from_key_vault.dart';

/// Input properties used for looking up and filtering WorkspaceNamedValue resources.
class WorkspaceNamedValueState {
  /// The ID of the API Management Workspace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiManagementWorkspaceId;

  /// The display name of this API Management Workspace Named Value.
  final pulumi.Input<String>? displayName;

  /// The name of the API Management Workspace Named Value. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// Specifies whether the API Management Workspace Named Value is secret. Defaults to `false`.
  ///
  /// &gt; **Note:** Setting the field `secret` to `true` does not make this field sensitive in Terraform, instead it marks the value as secret and encrypts the value in Azure.
  final pulumi.Input<bool>? secret;

  /// A list of tags to be applied to the API Management Workspace Named Value.
  final pulumi.Input<List<String>>? tags;

  /// The value of this API Management Workspace Named Value.
  ///
  /// &gt; **Note:** Exactly one of `value` or `value_from_key_vault` must be specified.
  final pulumi.Input<String>? value;

  /// A `value_from_key_vault` block as defined below.
  ///
  /// &gt; **Note:** Exactly one of `value` or `value_from_key_vault` must be specified. If `value_from_key_vault` is specified, `secret` must also be set to `true`.
  final pulumi.Input<WorkspaceNamedValueValueFromKeyVault>? valueFromKeyVault;

  /// Creates a new [WorkspaceNamedValueState].
  /// [apiManagementWorkspaceId] The ID of the API Management Workspace. Changing this forces a new resource to be created.
  /// [displayName] The display name of this API Management Workspace Named Value.
  /// [name] The name of the API Management Workspace Named Value. Changing this forces a new resource to be created.
  /// [secret] Specifies whether the API Management Workspace Named Value is secret. Defaults to `false`.
  /// [tags] A list of tags to be applied to the API Management Workspace Named Value.
  /// [value] The value of this API Management Workspace Named Value.
  /// [valueFromKeyVault] A `value_from_key_vault` block as defined below.
  WorkspaceNamedValueState({
    this.apiManagementWorkspaceId,
    this.displayName,
    this.name,
    this.secret,
    this.tags,
    this.value,
    this.valueFromKeyVault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementWorkspaceId': ?apiManagementWorkspaceId,
      'displayName': ?displayName,
      'name': ?name,
      'secret': ?secret,
      'tags': ?tags,
      'value': ?value,
      'valueFromKeyVault':
          ?pulumi.Input.mapOptionalInputValue<
            WorkspaceNamedValueValueFromKeyVault,
            Map<String, dynamic>
          >(valueFromKeyVault, (value) => value.toMap()),
    };
  }

  factory WorkspaceNamedValueState.fromMap(Map<String, dynamic> map) {
    return WorkspaceNamedValueState(
      apiManagementWorkspaceId: (() {
        final guardedValue = map['apiManagementWorkspaceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secret: (() {
        final guardedValue = map['secret'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      valueFromKeyVault: (() {
        final guardedValue = map['valueFromKeyVault'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WorkspaceNamedValueValueFromKeyVault.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
