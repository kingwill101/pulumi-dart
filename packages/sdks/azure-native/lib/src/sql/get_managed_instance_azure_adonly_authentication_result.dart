// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getManagedInstanceAzureADOnlyAuthentication.
class GetManagedInstanceAzureADOnlyAuthenticationResult {
  /// Azure Active Directory only Authentication enabled.
  final bool azureADOnlyAuthentication;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Resource ID.
  final String id;

  /// Resource name.
  final String name;

  /// Resource type.
  final String type;

  /// Creates a new [GetManagedInstanceAzureADOnlyAuthenticationResult].
  /// [azureADOnlyAuthentication] Azure Active Directory only Authentication enabled.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [type] Resource type.
  GetManagedInstanceAzureADOnlyAuthenticationResult({
    required this.azureADOnlyAuthentication,
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureADOnlyAuthentication': azureADOnlyAuthentication,
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'type': type,
    };
  }

  factory GetManagedInstanceAzureADOnlyAuthenticationResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetManagedInstanceAzureADOnlyAuthenticationResult(
      azureADOnlyAuthentication: map['azureADOnlyAuthentication'] as bool,
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}
