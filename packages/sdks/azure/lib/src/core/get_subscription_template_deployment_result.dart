// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSubscriptionTemplateDeployment.
class GetSubscriptionTemplateDeploymentResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  /// The JSON Content of the Outputs of the ARM Template Deployment.
  final String outputContent;

  /// Creates a new [GetSubscriptionTemplateDeploymentResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [outputContent] The JSON Content of the Outputs of the ARM Template Deployment.
  const GetSubscriptionTemplateDeploymentResult({
    required this.id,
    required this.name,
    required this.outputContent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'outputContent': outputContent,
    };
  }

  factory GetSubscriptionTemplateDeploymentResult.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionTemplateDeploymentResult(
      id: map['id'] as String,
      name: map['name'] as String,
      outputContent: map['outputContent'] as String,
    );
  }
}
