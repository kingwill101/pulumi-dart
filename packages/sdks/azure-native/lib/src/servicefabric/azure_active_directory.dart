// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The settings to enable AAD authentication on the cluster.
class AzureActiveDirectory {
  /// Azure active directory client application id.
  final pulumi.Input<String>? clientApplication;
  /// Azure active directory cluster application id.
  final pulumi.Input<String>? clusterApplication;
  /// Azure active directory tenant id.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [AzureActiveDirectory].
  /// [clientApplication] Azure active directory client application id.
  /// [clusterApplication] Azure active directory cluster application id.
  /// [tenantId] Azure active directory tenant id.
  const AzureActiveDirectory({
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

  factory AzureActiveDirectory.fromMap(Map<String, dynamic> map) {
    return AzureActiveDirectory(
      clientApplication: (() { final guardedValue = map['clientApplication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterApplication: (() { final guardedValue = map['clusterApplication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

