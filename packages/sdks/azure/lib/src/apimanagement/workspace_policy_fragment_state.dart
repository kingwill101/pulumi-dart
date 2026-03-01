// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkspacePolicyFragment resources.
class WorkspacePolicyFragmentState {
  /// Specifies the ID of the API Management Workspace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiManagementWorkspaceId;
  /// Specifies the description for the API Management Workspace Policy Fragment.
  final pulumi.Input<String>? description;
  /// Specifies the name of the API Management Workspace Policy Fragment. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the XML content of the API Management Workspace Policy Fragment.
  final pulumi.Input<String>? xmlContent;
  /// Specifies the XML format of the API Management Workspace Policy Fragment. Possible values are `xml` or `rawxml`. Defaults to `xml`.
  final pulumi.Input<String>? xmlFormat;

  /// Creates a new [WorkspacePolicyFragmentState].
  /// [apiManagementWorkspaceId] Specifies the ID of the API Management Workspace. Changing this forces a new resource to be created.
  /// [description] Specifies the description for the API Management Workspace Policy Fragment.
  /// [name] Specifies the name of the API Management Workspace Policy Fragment. Changing this forces a new resource to be created.
  /// [xmlContent] Specifies the XML content of the API Management Workspace Policy Fragment.
  /// [xmlFormat] Specifies the XML format of the API Management Workspace Policy Fragment. Possible values are `xml` or `rawxml`. Defaults to `xml`.
  WorkspacePolicyFragmentState({
    pulumi.Output<String>? apiManagementWorkspaceId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? xmlContent,
    pulumi.Output<String>? xmlFormat,
  }) :
      apiManagementWorkspaceId = pulumi.Input.asOptionalInput<String>(apiManagementWorkspaceId),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      xmlContent = pulumi.Input.asOptionalInput<String>(xmlContent),
      xmlFormat = pulumi.Input.asOptionalInput<String>(xmlFormat);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementWorkspaceId': ?apiManagementWorkspaceId,
      'description': ?description,
      'name': ?name,
      'xmlContent': ?xmlContent,
      'xmlFormat': ?xmlFormat,
    };
  }

  factory WorkspacePolicyFragmentState.fromMap(Map<String, dynamic> map) {
    return WorkspacePolicyFragmentState(
      apiManagementWorkspaceId: map['apiManagementWorkspaceId'] == null ? null : pulumi.Output.create<String>(map['apiManagementWorkspaceId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      xmlContent: map['xmlContent'] == null ? null : pulumi.Output.create<String>(map['xmlContent'] as String),
      xmlFormat: map['xmlFormat'] == null ? null : pulumi.Output.create<String>(map['xmlFormat'] as String),
    );
  }
}

