// ignore_for_file: unused_element, unnecessary_cast


/// Azure Files or Blob Storage access information value for dictionary storage.
class AzureStorageInfoValueResponse {
  /// Access key for the storage account.
  final String? accessKey;
  /// Name of the storage account.
  final String? accountName;
  /// Path to mount the storage within the site's runtime environment.
  final String? mountPath;
  /// Mounting protocol to use for the storage account.
  final String? protocol;
  /// Name of the file share (container name, for Blob storage).
  final String? shareName;
  /// State of the storage account.
  final String state;
  /// Type of storage.
  final String? type;

  /// Creates a new [AzureStorageInfoValueResponse].
  /// [accessKey] Access key for the storage account.
  /// [accountName] Name of the storage account.
  /// [mountPath] Path to mount the storage within the site's runtime environment.
  /// [protocol] Mounting protocol to use for the storage account.
  /// [shareName] Name of the file share (container name, for Blob storage).
  /// [state] State of the storage account.
  /// [type] Type of storage.
  AzureStorageInfoValueResponse({
    this.accessKey,
    this.accountName,
    this.mountPath,
    this.protocol,
    this.shareName,
    required this.state,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': ?accessKey,
      'accountName': ?accountName,
      'mountPath': ?mountPath,
      'protocol': ?protocol,
      'shareName': ?shareName,
      'state': state,
      'type': ?type,
    };
  }

  factory AzureStorageInfoValueResponse.fromMap(Map<String, dynamic> map) {
    return AzureStorageInfoValueResponse(
      accessKey: map['accessKey'] == null ? null : map['accessKey'] as String,
      accountName: map['accountName'] == null ? null : map['accountName'] as String,
      mountPath: map['mountPath'] == null ? null : map['mountPath'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      shareName: map['shareName'] == null ? null : map['shareName'] as String,
      state: map['state'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

