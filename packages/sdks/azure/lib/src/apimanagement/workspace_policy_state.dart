// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkspacePolicy resources.
class WorkspacePolicyState {
  /// Specifies the ID of the API Management Workspace. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? apiManagementWorkspaceId;
  /// Specifies the API Management Workspace Policy as an XML string.
  final pulumi.Input<String?>? xmlContent;
  /// Specifies a publicly accessible URL to a policy XML document.
  ///
  /// &gt; **Note:** Exactly one of `xmlContent` or `xmlLink` must be specified.
  final pulumi.Input<String?>? xmlLink;

  /// Creates a new [WorkspacePolicyState].
  /// [apiManagementWorkspaceId] Specifies the ID of the API Management Workspace. Changing this forces a new resource to be created.
  /// [xmlContent] Specifies the API Management Workspace Policy as an XML string.
  /// [xmlLink] Specifies a publicly accessible URL to a policy XML document.
  const WorkspacePolicyState({
    this.apiManagementWorkspaceId,
    this.xmlContent,
    this.xmlLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementWorkspaceId': ?apiManagementWorkspaceId,
      'xmlContent': ?xmlContent,
      'xmlLink': ?xmlLink,
    };
  }

  factory WorkspacePolicyState.fromMap(Map<String, dynamic> map) {
    return WorkspacePolicyState(
      apiManagementWorkspaceId: (() { final guardedValue = map['apiManagementWorkspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      xmlContent: (() { final guardedValue = map['xmlContent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      xmlLink: (() { final guardedValue = map['xmlLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
