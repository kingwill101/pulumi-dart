// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEnvironmentStorage.
class GetEnvironmentStorageResult {
  /// The access mode to connect this storage to the Container App.
  final String? accessMode;
  /// The Azure Storage Account in which the Share is located.
  final String? accountName;
  final String? containerAppEnvironmentId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// The NFS server URL for the Azure File Share.
  final String? nfsServerUrl;
  /// The name of the Azure Storage Share.
  final String? shareName;

  /// Creates a new [GetEnvironmentStorageResult].
  /// [accessMode] The access mode to connect this storage to the Container App.
  /// [accountName] The Azure Storage Account in which the Share is located.
  /// [containerAppEnvironmentId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [nfsServerUrl] The NFS server URL for the Azure File Share.
  /// [shareName] The name of the Azure Storage Share.
  const GetEnvironmentStorageResult({
    this.accessMode,
    this.accountName,
    this.containerAppEnvironmentId,
    this.id,
    this.name,
    this.nfsServerUrl,
    this.shareName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': ?accessMode,
      'accountName': ?accountName,
      'containerAppEnvironmentId': ?containerAppEnvironmentId,
      'id': ?id,
      'name': ?name,
      'nfsServerUrl': ?nfsServerUrl,
      'shareName': ?shareName,
    };
  }

  factory GetEnvironmentStorageResult.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentStorageResult(
      accessMode: (() { final guardedValue = map['accessMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      containerAppEnvironmentId: (() { final guardedValue = map['containerAppEnvironmentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nfsServerUrl: (() { final guardedValue = map['nfsServerUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shareName: (() { final guardedValue = map['shareName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
