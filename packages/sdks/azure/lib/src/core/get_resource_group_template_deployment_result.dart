// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getResourceGroupTemplateDeployment.
class GetResourceGroupTemplateDeploymentResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  /// The JSON Content of the Outputs of the ARM Template Deployment.
  final String outputContent;
  final String resourceGroupName;

  /// Creates a new [GetResourceGroupTemplateDeploymentResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [outputContent] The JSON Content of the Outputs of the ARM Template Deployment.
  /// [resourceGroupName] Required.
  const GetResourceGroupTemplateDeploymentResult({
    required this.id,
    required this.name,
    required this.outputContent,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'outputContent': outputContent,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetResourceGroupTemplateDeploymentResult.fromMap(Map<String, dynamic> map) {
    return GetResourceGroupTemplateDeploymentResult(
      id: map['id'] as String,
      name: map['name'] as String,
      outputContent: map['outputContent'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

