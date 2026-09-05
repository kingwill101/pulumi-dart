// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTenantTemplateDeployment.
class GetTenantTemplateDeploymentResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// The JSON Content of the Outputs of the ARM Template Deployment.
  final String? outputContent;

  /// Creates a new [GetTenantTemplateDeploymentResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [outputContent] The JSON Content of the Outputs of the ARM Template Deployment.
  const GetTenantTemplateDeploymentResult({
    this.id,
    this.name,
    this.outputContent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'outputContent': ?outputContent,
    };
  }

  factory GetTenantTemplateDeploymentResult.fromMap(Map<String, dynamic> map) {
    return GetTenantTemplateDeploymentResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputContent: (() { final guardedValue = map['outputContent']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
