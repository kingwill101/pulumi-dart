// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'r2_data_catalog_maintenance_config.dart';

/// Input properties used for looking up and filtering R2DataCatalog resources.
class R2DataCatalogState {
  /// Use this to identify the account.
  final pulumi.Input<String?>? accountId;
  /// Specifies the associated R2 bucket name.
  final pulumi.Input<String?>? bucket;
  /// Specifies the R2 bucket name.
  final pulumi.Input<String?>? bucketName;
  /// Shows the credential configuration status.
  /// Available values: "present", "absent".
  final pulumi.Input<String?>? credentialStatus;
  /// Configures maintenance for the catalog.
  final pulumi.Input<R2DataCatalogMaintenanceConfig?>? maintenanceConfig;
  /// Specifies the catalog name (generated from account and bucket name).
  final pulumi.Input<String?>? name;
  /// Indicates the status of the catalog.
  /// Available values: "active", "inactive".
  final pulumi.Input<String?>? status;

  /// Creates a new [R2DataCatalogState].
  /// [accountId] Use this to identify the account.
  /// [bucket] Specifies the associated R2 bucket name.
  /// [bucketName] Specifies the R2 bucket name.
  /// [credentialStatus] Shows the credential configuration status.
  /// [maintenanceConfig] Configures maintenance for the catalog.
  /// [name] Specifies the catalog name (generated from account and bucket name).
  /// [status] Indicates the status of the catalog.
  const R2DataCatalogState({
    this.accountId,
    this.bucket,
    this.bucketName,
    this.credentialStatus,
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
      'maintenanceConfig': ?pulumi.Input.mapOptionalInputValue<R2DataCatalogMaintenanceConfig, Map<String, dynamic>>(maintenanceConfig, (value) => value.toMap()),
      'name': ?name,
      'status': ?status,
    };
  }

  factory R2DataCatalogState.fromMap(Map<String, dynamic> map) {
    return R2DataCatalogState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucketName: (() { final guardedValue = map['bucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentialStatus: (() { final guardedValue = map['credentialStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceConfig: (() { final guardedValue = map['maintenanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(R2DataCatalogMaintenanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
