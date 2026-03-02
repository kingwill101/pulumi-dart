// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_named_value_value_from_key_vault.dart';

/// {@template pulumi_apimanagement_workspace_named_value_workspace_named_value_args_doc}
/// The set of arguments for WorkspaceNamedValue.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_workspace_named_value_workspace_named_value_args_doc}
class WorkspaceNamedValueArgs {
  /// The ID of the API Management Workspace. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementWorkspaceId;
  /// The display name of this API Management Workspace Named Value.
  final pulumi.Input<String> displayName;
  /// The name of the API Management Workspace Named Value. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies whether the API Management Workspace Named Value is secret. Defaults to `false`.
  ///
  /// > **Note:** Setting the field `secret` to `true` does not make this field sensitive in Terraform, instead it marks the value as secret and encrypts the value in Azure.
  final pulumi.Input<bool>? secret;
  /// A list of tags to be applied to the API Management Workspace Named Value.
  final pulumi.Input<List<String>>? tags;
  /// The value of this API Management Workspace Named Value.
  ///
  /// > **Note:** Exactly one of `value` or `value_from_key_vault` must be specified.
  final pulumi.Input<String>? value;
  /// A `value_from_key_vault` block as defined below.
  ///
  /// > **Note:** Exactly one of `value` or `value_from_key_vault` must be specified. If `value_from_key_vault` is specified, `secret` must also be set to `true`.
  final pulumi.Input<WorkspaceNamedValueValueFromKeyVault>? valueFromKeyVault;

  /// Creates a new [WorkspaceNamedValueArgs].
  /// [apiManagementWorkspaceId] The ID of the API Management Workspace. Changing this forces a new resource to be created.
  /// [displayName] The display name of this API Management Workspace Named Value.
  /// [name] The name of the API Management Workspace Named Value. Changing this forces a new resource to be created.
  /// [secret] Specifies whether the API Management Workspace Named Value is secret. Defaults to `false`.
  /// [tags] A list of tags to be applied to the API Management Workspace Named Value.
  /// [value] The value of this API Management Workspace Named Value.
  /// [valueFromKeyVault] A `value_from_key_vault` block as defined below.
  WorkspaceNamedValueArgs({
    required this.apiManagementWorkspaceId,
    required this.displayName,
    this.name,
    this.secret,
    this.tags,
    this.value,
    this.valueFromKeyVault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementWorkspaceId': apiManagementWorkspaceId,
      'displayName': displayName,
      'name': ?name,
      'secret': ?secret,
      'tags': ?tags,
      'value': ?value,
      'valueFromKeyVault': ?pulumi.Input.mapOptionalInputValue<WorkspaceNamedValueValueFromKeyVault, Map<String, dynamic>>(valueFromKeyVault, (value) => value.toMap()),
    };
  }

  factory WorkspaceNamedValueArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceNamedValueArgs(
      apiManagementWorkspaceId: (map['apiManagementWorkspaceId'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      secret: map['secret'] == null ? null : (map['secret']! as bool).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as List).cast<String>()).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
      valueFromKeyVault: map['valueFromKeyVault'] == null ? null : (WorkspaceNamedValueValueFromKeyVault.fromMap((map['valueFromKeyVault']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

