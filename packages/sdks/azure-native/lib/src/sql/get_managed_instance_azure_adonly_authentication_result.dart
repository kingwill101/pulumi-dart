// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getManagedInstanceAzureADOnlyAuthentication.
class GetManagedInstanceAzureADOnlyAuthenticationResult {
  /// Azure Active Directory only Authentication enabled.
  final bool? azureADOnlyAuthentication;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource ID.
  final String? id;
  /// Resource name.
  final String? name;
  /// Resource type.
  final String? type;

  /// Creates a new [GetManagedInstanceAzureADOnlyAuthenticationResult].
  /// [azureADOnlyAuthentication] Azure Active Directory only Authentication enabled.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [type] Resource type.
  const GetManagedInstanceAzureADOnlyAuthenticationResult({
    this.azureADOnlyAuthentication,
    this.azureApiVersion,
    this.id,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureADOnlyAuthentication': ?azureADOnlyAuthentication,
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'type': ?type,
    };
  }

  factory GetManagedInstanceAzureADOnlyAuthenticationResult.fromMap(Map<String, dynamic> map) {
    return GetManagedInstanceAzureADOnlyAuthenticationResult(
      azureADOnlyAuthentication: (() { final guardedValue = map['azureADOnlyAuthentication']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
