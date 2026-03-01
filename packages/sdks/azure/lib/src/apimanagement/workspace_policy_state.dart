// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkspacePolicy resources.
class WorkspacePolicyState {
  /// Specifies the ID of the API Management Workspace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiManagementWorkspaceId;
  /// Specifies the API Management Workspace Policy as an XML string.
  final pulumi.Input<String>? xmlContent;
  /// Specifies a publicly accessible URL to a policy XML document.
  ///
  /// > **Note:** Exactly one of `xml_content` or `xml_link` must be specified.
  final pulumi.Input<String>? xmlLink;

  /// Creates a new [WorkspacePolicyState].
  /// [apiManagementWorkspaceId] Specifies the ID of the API Management Workspace. Changing this forces a new resource to be created.
  /// [xmlContent] Specifies the API Management Workspace Policy as an XML string.
  /// [xmlLink] Specifies a publicly accessible URL to a policy XML document.
  WorkspacePolicyState({
    pulumi.Output<String>? apiManagementWorkspaceId,
    pulumi.Output<String>? xmlContent,
    pulumi.Output<String>? xmlLink,
  }) :
      apiManagementWorkspaceId = pulumi.Input.asOptionalInput<String>(apiManagementWorkspaceId),
      xmlContent = pulumi.Input.asOptionalInput<String>(xmlContent),
      xmlLink = pulumi.Input.asOptionalInput<String>(xmlLink);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementWorkspaceId': ?apiManagementWorkspaceId,
      'xmlContent': ?xmlContent,
      'xmlLink': ?xmlLink,
    };
  }

  factory WorkspacePolicyState.fromMap(Map<String, dynamic> map) {
    return WorkspacePolicyState(
      apiManagementWorkspaceId: map['apiManagementWorkspaceId'] == null ? null : pulumi.Output.create<String>(map['apiManagementWorkspaceId'] as String),
      xmlContent: map['xmlContent'] == null ? null : pulumi.Output.create<String>(map['xmlContent'] as String),
      xmlLink: map['xmlLink'] == null ? null : pulumi.Output.create<String>(map['xmlLink'] as String),
    );
  }
}

