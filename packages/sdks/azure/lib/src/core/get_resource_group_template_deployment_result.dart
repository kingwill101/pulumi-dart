// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getResourceGroupTemplateDeployment.
class GetResourceGroupTemplateDeploymentResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// The JSON Content of the Outputs of the ARM Template Deployment.
  final String? outputContent;
  final String? resourceGroupName;

  /// Creates a new [GetResourceGroupTemplateDeploymentResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [outputContent] The JSON Content of the Outputs of the ARM Template Deployment.
  /// [resourceGroupName] Optional.
  const GetResourceGroupTemplateDeploymentResult({
    this.id,
    this.name,
    this.outputContent,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'outputContent': ?outputContent,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory GetResourceGroupTemplateDeploymentResult.fromMap(Map<String, dynamic> map) {
    return GetResourceGroupTemplateDeploymentResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputContent: (() { final guardedValue = map['outputContent']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
