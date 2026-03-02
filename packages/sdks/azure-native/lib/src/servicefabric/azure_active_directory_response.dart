// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The settings to enable AAD authentication on the cluster.
class AzureActiveDirectoryResponse {
  /// Azure active directory client application id.
  final pulumi.Input<String>? clientApplication;
  /// Azure active directory cluster application id.
  final pulumi.Input<String>? clusterApplication;
  /// Azure active directory tenant id.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [AzureActiveDirectoryResponse].
  /// [clientApplication] Azure active directory client application id.
  /// [clusterApplication] Azure active directory cluster application id.
  /// [tenantId] Azure active directory tenant id.
  AzureActiveDirectoryResponse({
    this.clientApplication,
    this.clusterApplication,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientApplication': ?clientApplication,
      'clusterApplication': ?clusterApplication,
      'tenantId': ?tenantId,
    };
  }

  factory AzureActiveDirectoryResponse.fromMap(Map<String, dynamic> map) {
    return AzureActiveDirectoryResponse(
      clientApplication: map['clientApplication'] == null ? null : (map['clientApplication']! as String).input(),
      clusterApplication: map['clusterApplication'] == null ? null : (map['clusterApplication']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
    );
  }
}

