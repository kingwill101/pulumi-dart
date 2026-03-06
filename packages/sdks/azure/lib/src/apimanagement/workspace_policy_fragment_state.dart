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
  const WorkspacePolicyFragmentState({
    this.apiManagementWorkspaceId,
    this.description,
    this.name,
    this.xmlContent,
    this.xmlFormat,
  });

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
      apiManagementWorkspaceId: (() { final guardedValue = map['apiManagementWorkspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      xmlContent: (() { final guardedValue = map['xmlContent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      xmlFormat: (() { final guardedValue = map['xmlFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

