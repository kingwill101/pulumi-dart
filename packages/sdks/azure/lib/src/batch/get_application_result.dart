// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getApplication.
class GetApplicationResult {
  final String accountName;
  /// May packages within the application be overwritten using the same version string.
  final bool allowUpdates;
  /// The package to use if a client requests the application but does not specify a version.
  final String defaultVersion;
  /// The display name for the application.
  final String displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Batch application name.
  final String name;
  final String resourceGroupName;

  /// Creates a new [GetApplicationResult].
  /// [accountName] Required.
  /// [allowUpdates] May packages within the application be overwritten using the same version string.
  /// [defaultVersion] The package to use if a client requests the application but does not specify a version.
  /// [displayName] The display name for the application.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The Batch application name.
  /// [resourceGroupName] Required.
  const GetApplicationResult({
    required this.accountName,
    required this.allowUpdates,
    required this.defaultVersion,
    required this.displayName,
    required this.id,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'allowUpdates': allowUpdates,
      'defaultVersion': defaultVersion,
      'displayName': displayName,
      'id': id,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetApplicationResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationResult(
      accountName: map['accountName'] as String,
      allowUpdates: map['allowUpdates'] as bool,
      defaultVersion: map['defaultVersion'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

