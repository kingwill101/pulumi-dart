// ignore_for_file: unused_element, unnecessary_cast

import 'get_r2_data_catalog_maintenance_config.dart';

/// Result data returned by getR2DataCatalog.
class GetR2DataCatalogResult {
  /// Use this to identify the account.
  final String? accountId;
  /// Specifies the associated R2 bucket name.
  final String? bucket;
  /// Specifies the R2 bucket name.
  final String? bucketName;
  /// Shows the credential configuration status.
  /// Available values: "present", "absent".
  final String? credentialStatus;
  /// Specifies the R2 bucket name.
  final String? id;
  /// Configures maintenance for the catalog.
  final GetR2DataCatalogMaintenanceConfig? maintenanceConfig;
  /// Specifies the catalog name (generated from account and bucket name).
  final String? name;
  /// Indicates the status of the catalog.
  /// Available values: "active", "inactive".
  final String? status;

  /// Creates a new [GetR2DataCatalogResult].
  /// [accountId] Use this to identify the account.
  /// [bucket] Specifies the associated R2 bucket name.
  /// [bucketName] Specifies the R2 bucket name.
  /// [credentialStatus] Shows the credential configuration status.
  /// [id] Specifies the R2 bucket name.
  /// [maintenanceConfig] Configures maintenance for the catalog.
  /// [name] Specifies the catalog name (generated from account and bucket name).
  /// [status] Indicates the status of the catalog.
  const GetR2DataCatalogResult({
    this.accountId,
    this.bucket,
    this.bucketName,
    this.credentialStatus,
    this.id,
    this.maintenanceConfig,
    this.name,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'bucket': ?bucket,
      'bucketName': ?bucketName,
      'credentialStatus': ?credentialStatus,
      'id': ?id,
      'maintenanceConfig': ?maintenanceConfig?.toMap(),
      'name': ?name,
      'status': ?status,
    };
  }

  factory GetR2DataCatalogResult.fromMap(Map<String, dynamic> map) {
    return GetR2DataCatalogResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bucketName: (() { final guardedValue = map['bucketName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      credentialStatus: (() { final guardedValue = map['credentialStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maintenanceConfig: (() { final guardedValue = map['maintenanceConfig']; if (guardedValue == null) return null; return GetR2DataCatalogMaintenanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
