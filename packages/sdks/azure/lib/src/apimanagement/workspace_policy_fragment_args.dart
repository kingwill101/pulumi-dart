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
  WorkspacePolicyFragmentArgs({
    required pulumi.Output<String> apiManagementWorkspaceId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    required pulumi.Output<String> xmlContent,
    pulumi.Output<String>? xmlFormat,
  }) :
      apiManagementWorkspaceId = pulumi.Input.asInput<String>(apiManagementWorkspaceId),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      xmlContent = pulumi.Input.asInput<String>(xmlContent),
      xmlFormat = pulumi.Input.asOptionalInput<String>(xmlFormat);

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
      apiManagementWorkspaceId: pulumi.Output.create<String>(map['apiManagementWorkspaceId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      xmlContent: pulumi.Output.create<String>(map['xmlContent'] as String),
      xmlFormat: map['xmlFormat'] == null ? null : pulumi.Output.create<String>(map['xmlFormat'] as String),
    );
  }
}

