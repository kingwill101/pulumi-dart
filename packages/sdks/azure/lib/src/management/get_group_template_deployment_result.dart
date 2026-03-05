// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getGroupTemplateDeployment.
class GetGroupTemplateDeploymentResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String managementGroupId;
  final String name;

  /// The JSON Content of the Outputs of the ARM Template Deployment.
  final String outputContent;

  /// Creates a new [GetGroupTemplateDeploymentResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [managementGroupId] Required.
  /// [name] Required.
  /// [outputContent] The JSON Content of the Outputs of the ARM Template Deployment.
  GetGroupTemplateDeploymentResult({
    required this.id,
    required this.managementGroupId,
    required this.name,
    required this.outputContent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'managementGroupId': managementGroupId,
      'name': name,
      'outputContent': outputContent,
    };
  }

  factory GetGroupTemplateDeploymentResult.fromMap(Map<String, dynamic> map) {
    return GetGroupTemplateDeploymentResult(
      id: map['id'] as String,
      managementGroupId: map['managementGroupId'] as String,
      name: map['name'] as String,
      outputContent: map['outputContent'] as String,
    );
  }
}
