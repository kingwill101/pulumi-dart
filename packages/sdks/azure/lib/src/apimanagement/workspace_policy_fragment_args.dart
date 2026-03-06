// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_workspace_policy_fragment_workspace_policy_fragment_args_doc}
/// The set of arguments for WorkspacePolicyFragment.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_workspace_policy_fragment_workspace_policy_fragment_args_doc}
class WorkspacePolicyFragmentArgs {
  /// Specifies the ID of the API Management Workspace. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementWorkspaceId;
  /// Specifies the description for the API Management Workspace Policy Fragment.
  final pulumi.Input<String>? description;
  /// Specifies the name of the API Management Workspace Policy Fragment. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the XML content of the API Management Workspace Policy Fragment.
  final pulumi.Input<String> xmlContent;
  /// Specifies the XML format of the API Management Workspace Policy Fragment. Possible values are `xml` or `rawxml`. Defaults to `xml`.
  final pulumi.Input<String>? xmlFormat;

  /// Creates a new [WorkspacePolicyFragmentArgs].
  /// [apiManagementWorkspaceId] Specifies the ID of the API Management Workspace. Changing this forces a new resource to be created.
  /// [description] Specifies the description for the API Management Workspace Policy Fragment.
  /// [name] Specifies the name of the API Management Workspace Policy Fragment. Changing this forces a new resource to be created.
  /// [xmlContent] Specifies the XML content of the API Management Workspace Policy Fragment.
  /// [xmlFormat] Specifies the XML format of the API Management Workspace Policy Fragment. Possible values are `xml` or `rawxml`. Defaults to `xml`.
  const WorkspacePolicyFragmentArgs({
    required this.apiManagementWorkspaceId,
    this.description,
    this.name,
    required this.xmlContent,
    this.xmlFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementWorkspaceId': apiManagementWorkspaceId,
      'description': ?description,
      'name': ?name,
      'xmlContent': xmlContent,
      'xmlFormat': ?xmlFormat,
    };
  }

  factory WorkspacePolicyFragmentArgs.fromMap(Map<String, dynamic> map) {
    return WorkspacePolicyFragmentArgs(
      apiManagementWorkspaceId: pulumi.Input.fromValue(map['apiManagementWorkspaceId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      xmlContent: pulumi.Input.fromValue(map['xmlContent'] as String),
      xmlFormat: (() { final guardedValue = map['xmlFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

