// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGroupTemplateDeployment.
class GetGroupTemplateDeploymentResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? managementGroupId;
  final String? name;
  /// The JSON Content of the Outputs of the ARM Template Deployment.
  final String? outputContent;

  /// Creates a new [GetGroupTemplateDeploymentResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [managementGroupId] Optional.
  /// [name] Optional.
  /// [outputContent] The JSON Content of the Outputs of the ARM Template Deployment.
  const GetGroupTemplateDeploymentResult({
    this.id,
    this.managementGroupId,
    this.name,
    this.outputContent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'managementGroupId': ?managementGroupId,
      'name': ?name,
      'outputContent': ?outputContent,
    };
  }

  factory GetGroupTemplateDeploymentResult.fromMap(Map<String, dynamic> map) {
    return GetGroupTemplateDeploymentResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managementGroupId: (() { final guardedValue = map['managementGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputContent: (() { final guardedValue = map['outputContent']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
