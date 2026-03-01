// ignore_for_file: unused_element, unnecessary_cast


/// Cluster User Credential appliance.
class ApplianceCredentialKubeconfigResponse {
  /// Name which contains the role of the kubeconfig.
  final String name;
  /// Contains the kubeconfig value.
  final String value;

  /// Creates a new [ApplianceCredentialKubeconfigResponse].
  /// [name] Name which contains the role of the kubeconfig.
  /// [value] Contains the kubeconfig value.
  ApplianceCredentialKubeconfigResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory ApplianceCredentialKubeconfigResponse.fromMap(Map<String, dynamic> map) {
    return ApplianceCredentialKubeconfigResponse(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

