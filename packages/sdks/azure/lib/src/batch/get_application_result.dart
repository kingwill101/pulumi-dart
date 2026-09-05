// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getApplication.
class GetApplicationResult {
  final String? accountName;
  /// May packages within the application be overwritten using the same version string.
  final bool? allowUpdates;
  /// The package to use if a client requests the application but does not specify a version.
  final String? defaultVersion;
  /// The display name for the application.
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Batch application name.
  final String? name;
  final String? resourceGroupName;

  /// Creates a new [GetApplicationResult].
  /// [accountName] Optional.
  /// [allowUpdates] May packages within the application be overwritten using the same version string.
  /// [defaultVersion] The package to use if a client requests the application but does not specify a version.
  /// [displayName] The display name for the application.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The Batch application name.
  /// [resourceGroupName] Optional.
  const GetApplicationResult({
    this.accountName,
    this.allowUpdates,
    this.defaultVersion,
    this.displayName,
    this.id,
    this.name,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'allowUpdates': ?allowUpdates,
      'defaultVersion': ?defaultVersion,
      'displayName': ?displayName,
      'id': ?id,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory GetApplicationResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationResult(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      allowUpdates: (() { final guardedValue = map['allowUpdates']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      defaultVersion: (() { final guardedValue = map['defaultVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
