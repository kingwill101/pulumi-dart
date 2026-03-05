// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterDiagnosticsConfig {
  /// The Blob Endpoint of the Storage Account.
  final pulumi.Input<String> blobEndpoint;
  /// The protected diagnostics storage key name, such as `StorageAccountKey1`.
  final pulumi.Input<String> protectedAccountKeyName;
  /// The Queue Endpoint of the Storage Account.
  final pulumi.Input<String> queueEndpoint;
  /// The name of the Storage Account where the Diagnostics should be sent to.
  final pulumi.Input<String> storageAccountName;
  /// The Table Endpoint of the Storage Account.
  final pulumi.Input<String> tableEndpoint;

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
      blobEndpoint: pulumi.Input.fromValue(map['blobEndpoint'] as String),
      protectedAccountKeyName: pulumi.Input.fromValue(map['protectedAccountKeyName'] as String),
      queueEndpoint: pulumi.Input.fromValue(map['queueEndpoint'] as String),
      storageAccountName: pulumi.Input.fromValue(map['storageAccountName'] as String),
      tableEndpoint: pulumi.Input.fromValue(map['tableEndpoint'] as String),
    );
  }
}

