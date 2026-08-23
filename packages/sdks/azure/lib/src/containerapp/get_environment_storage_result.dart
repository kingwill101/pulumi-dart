// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEnvironmentStorage.
class GetEnvironmentStorageResult {
  /// The access mode to connect this storage to the Container App.
  final String accessMode;
  /// The Azure Storage Account in which the Share is located.
  final String accountName;
  final String containerAppEnvironmentId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  /// The NFS server URL for the Azure File Share.
  final String nfsServerUrl;
  /// The name of the Azure Storage Share.
  final String shareName;

  /// Creates a new [GetEnvironmentStorageResult].
  /// [accessMode] The access mode to connect this storage to the Container App.
  /// [accountName] The Azure Storage Account in which the Share is located.
  /// [containerAppEnvironmentId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [nfsServerUrl] The NFS server URL for the Azure File Share.
  /// [shareName] The name of the Azure Storage Share.
  const GetEnvironmentStorageResult({
    required this.accessMode,
    required this.accountName,
    required this.containerAppEnvironmentId,
    required this.id,
    required this.name,
    required this.nfsServerUrl,
    required this.shareName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': accessMode,
      'accountName': accountName,
      'containerAppEnvironmentId': containerAppEnvironmentId,
      'id': id,
      'name': name,
      'nfsServerUrl': nfsServerUrl,
      'shareName': shareName,
    };
  }

  factory GetEnvironmentStorageResult.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentStorageResult(
      accessMode: map['accessMode'] as String,
      accountName: map['accountName'] as String,
      containerAppEnvironmentId: map['containerAppEnvironmentId'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      nfsServerUrl: map['nfsServerUrl'] as String,
      shareName: map['shareName'] as String,
    );
  }
}
