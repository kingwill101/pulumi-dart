// ignore_for_file: unused_element, unnecessary_cast


class ClusterDiagnosticsConfig {
  /// The Blob Endpoint of the Storage Account.
  final String blobEndpoint;
  /// The protected diagnostics storage key name, such as `StorageAccountKey1`.
  final String protectedAccountKeyName;
  /// The Queue Endpoint of the Storage Account.
  final String queueEndpoint;
  /// The name of the Storage Account where the Diagnostics should be sent to.
  final String storageAccountName;
  /// The Table Endpoint of the Storage Account.
  final String tableEndpoint;

  /// Creates a new [ClusterDiagnosticsConfig].
  /// [blobEndpoint] The Blob Endpoint of the Storage Account.
  /// [protectedAccountKeyName] The protected diagnostics storage key name, such as `StorageAccountKey1`.
  /// [queueEndpoint] The Queue Endpoint of the Storage Account.
  /// [storageAccountName] The name of the Storage Account where the Diagnostics should be sent to.
  /// [tableEndpoint] The Table Endpoint of the Storage Account.
  ClusterDiagnosticsConfig({
    required this.blobEndpoint,
    required this.protectedAccountKeyName,
    required this.queueEndpoint,
    required this.storageAccountName,
    required this.tableEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobEndpoint': blobEndpoint,
      'protectedAccountKeyName': protectedAccountKeyName,
      'queueEndpoint': queueEndpoint,
      'storageAccountName': storageAccountName,
      'tableEndpoint': tableEndpoint,
    };
  }

  factory ClusterDiagnosticsConfig.fromMap(Map<String, dynamic> map) {
    return ClusterDiagnosticsConfig(
      blobEndpoint: map['blobEndpoint'] as String,
      protectedAccountKeyName: map['protectedAccountKeyName'] as String,
      queueEndpoint: map['queueEndpoint'] as String,
      storageAccountName: map['storageAccountName'] as String,
      tableEndpoint: map['tableEndpoint'] as String,
    );
  }
}

