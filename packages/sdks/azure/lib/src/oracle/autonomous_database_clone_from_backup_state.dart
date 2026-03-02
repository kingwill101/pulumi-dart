// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AutonomousDatabaseCloneFromBackup resources.
class AutonomousDatabaseCloneFromBackupState {
  /// The password for the SYS, SYSTEM, and PDB Admin users. The password must be at least 12 characters long, and contain at least 1 uppercase, 1 lowercase, and 1 numeric character. It cannot contain the double quote symbol (") or the username "admin," regardless of casing. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String>? adminPassword;
  /// Defines the network access type for the Autonomous Database. If the property is explicitly set to an empty list, it allows secure public access to the database from any IP address. If specific ACL (Access Control List) values are provided, access will be restricted to only the specified IP addresses. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<List<String>>? allowedIpAddresses;
  /// Indicates if auto-scaling is enabled for the Autonomous Database CPU core count. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<bool>? autoScalingEnabled;
  /// Indicates if auto-scaling is enabled for the Autonomous Database storage. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<bool>? autoScalingForStorageEnabled;
  /// Retention period, in days, for backups. Possible values range between `1` and `60`. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<int>? backupRetentionPeriodInDays;
  /// The autonomous database backup time stamp to be used for a cloning autonomous database. Changing this forces a new Autonomous Database Clone to be created.
  ///
  /// > **Note:** If `backup_timestamp` is not provided latest backup timestamp will be used.
  final pulumi.Input<String>? backupTimestamp;
  /// The character set for the autonomous database. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String>? characterSet;
  /// The type of clone to create. Possible values are Full and Metadata. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String>? cloneType;
  /// The compute amount (CPUs) available to the database. Possible values range between `2.0` and `512.0`. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<double>? computeCount;
  /// The compute model of the Autonomous Database. Possible values are `ECPU` and `OCPU`. Changing this forces a new Autonomous Database Clone to be created.
  ///
  /// > **Note:** `ECPU` compute model is the recommended model and `OCPU` compute model is legacy.
  final pulumi.Input<String>? computeModel;
  /// Specifies a list of customer contact email addresses. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<List<String>>? customerContacts;
  /// The maximum storage that can be allocated for the database, in terabytes. Possible values range between `1` and `384`. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<int>? dataStorageSizeInTb;
  /// A valid Oracle Database version for Autonomous Database. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String>? databaseVersion;
  /// The Autonomous Database workload type. Possible values are `OLTP`, `DW`, `APEX`, and `AJD`. Changing this forces a new Autonomous Database Clone to be created.
  ///
  /// * OLTP: Indicates an Autonomous Transaction Processing database.
  /// * DW: Indicates an Autonomous Data Warehouse database.
  /// * AJD: Indicates an Autonomous JSON Database.
  /// * APEX: Indicates an Autonomous Database with the Oracle APEX Application Development workload type.
  final pulumi.Input<String>? databaseWorkload;
  /// The user-friendly name for the Autonomous Database. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String>? displayName;
  /// The Oracle license model that applies to the Oracle Autonomous Database. Possible values are `LicenseIncluded` and `BringYourOwnLicense`. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String>? licenseModel;
  /// The Azure Region where the autonomous database clone from backup should exist. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String>? location;
  /// Specifies if the Autonomous Database requires mTLS connections. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<bool>? mtlsConnectionRequired;
  /// The name which should be used for this autonomous database clone from backup. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String>? name;
  /// The national character set for the autonomous database. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String>? nationalCharacterSet;
  /// The name of the Resource Group where the autonomous database clone from backup should exist. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The ID of the source Autonomous Database to clone from. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String>? sourceAutonomousDatabaseId;
  /// The ID of the subnet the resource is associated with. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String>? subnetId;
  /// A mapping of tags which should be assigned to the autonomous database clone from backup. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the Virtual Network this Autonomous Database Clone should be created in. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String>? virtualNetworkId;

  /// Creates a new [AutonomousDatabaseCloneFromBackupState].
  /// [adminPassword] The password for the SYS, SYSTEM, and PDB Admin users. The password must be at least 12 characters long, and contain at least 1 uppercase, 1 lowercase, and 1 numeric character. It cannot contain the double quote symbol (") or the username "admin," regardless of casing. Changing this forces a new Autonomous Database Clone to be created.
  /// [allowedIpAddresses] Defines the network access type for the Autonomous Database. If the property is explicitly set to an empty list, it allows secure public access to the database from any IP address. If specific ACL (Access Control List) values are provided, access will be restricted to only the specified IP addresses. Changing this forces a new Autonomous Database Clone to be created.
  /// [autoScalingEnabled] Indicates if auto-scaling is enabled for the Autonomous Database CPU core count. Changing this forces a new Autonomous Database Clone to be created.
  /// [autoScalingForStorageEnabled] Indicates if auto-scaling is enabled for the Autonomous Database storage. Changing this forces a new Autonomous Database Clone to be created.
  /// [backupRetentionPeriodInDays] Retention period, in days, for backups. Possible values range between `1` and `60`. Changing this forces a new Autonomous Database Clone to be created.
  /// [backupTimestamp] The autonomous database backup time stamp to be used for a cloning autonomous database. Changing this forces a new Autonomous Database Clone to be created.
  /// [characterSet] The character set for the autonomous database. Changing this forces a new Autonomous Database Clone to be created.
  /// [cloneType] The type of clone to create. Possible values are Full and Metadata. Changing this forces a new Autonomous Database Clone to be created.
  /// [computeCount] The compute amount (CPUs) available to the database. Possible values range between `2.0` and `512.0`. Changing this forces a new Autonomous Database Clone to be created.
  /// [computeModel] The compute model of the Autonomous Database. Possible values are `ECPU` and `OCPU`. Changing this forces a new Autonomous Database Clone to be created.
  /// [customerContacts] Specifies a list of customer contact email addresses. Changing this forces a new Autonomous Database Clone to be created.
  /// [dataStorageSizeInTb] The maximum storage that can be allocated for the database, in terabytes. Possible values range between `1` and `384`. Changing this forces a new Autonomous Database Clone to be created.
  /// [databaseVersion] A valid Oracle Database version for Autonomous Database. Changing this forces a new Autonomous Database Clone to be created.
  /// [databaseWorkload] The Autonomous Database workload type. Possible values are `OLTP`, `DW`, `APEX`, and `AJD`. Changing this forces a new Autonomous Database Clone to be created.
  /// [displayName] The user-friendly name for the Autonomous Database. Changing this forces a new Autonomous Database Clone to be created.
  /// [licenseModel] The Oracle license model that applies to the Oracle Autonomous Database. Possible values are `LicenseIncluded` and `BringYourOwnLicense`. Changing this forces a new Autonomous Database Clone to be created.
  /// [location] The Azure Region where the autonomous database clone from backup should exist. Changing this forces a new Autonomous Database Clone to be created.
  /// [mtlsConnectionRequired] Specifies if the Autonomous Database requires mTLS connections. Changing this forces a new Autonomous Database Clone to be created.
  /// [name] The name which should be used for this autonomous database clone from backup. Changing this forces a new Autonomous Database Clone to be created.
  /// [nationalCharacterSet] The national character set for the autonomous database. Changing this forces a new Autonomous Database Clone to be created.
  /// [resourceGroupName] The name of the Resource Group where the autonomous database clone from backup should exist. Changing this forces a new Autonomous Database Clone to be created.
  /// [sourceAutonomousDatabaseId] The ID of the source Autonomous Database to clone from. Changing this forces a new Autonomous Database Clone to be created.
  /// [subnetId] The ID of the subnet the resource is associated with. Changing this forces a new Autonomous Database Clone to be created.
  /// [tags] A mapping of tags which should be assigned to the autonomous database clone from backup. Changing this forces a new Autonomous Database Clone to be created.
  /// [virtualNetworkId] The ID of the Virtual Network this Autonomous Database Clone should be created in. Changing this forces a new Autonomous Database Clone to be created.
  AutonomousDatabaseCloneFromBackupState({
    this.adminPassword,
    this.allowedIpAddresses,
    this.autoScalingEnabled,
    this.autoScalingForStorageEnabled,
    this.backupRetentionPeriodInDays,
    this.backupTimestamp,
    this.characterSet,
    this.cloneType,
    this.computeCount,
    this.computeModel,
    this.customerContacts,
    this.dataStorageSizeInTb,
    this.databaseVersion,
    this.databaseWorkload,
    this.displayName,
    this.licenseModel,
    this.location,
    this.mtlsConnectionRequired,
    this.name,
    this.nationalCharacterSet,
    this.resourceGroupName,
    this.sourceAutonomousDatabaseId,
    this.subnetId,
    this.tags,
    this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPassword': ?adminPassword,
      'allowedIpAddresses': ?allowedIpAddresses,
      'autoScalingEnabled': ?autoScalingEnabled,
      'autoScalingForStorageEnabled': ?autoScalingForStorageEnabled,
      'backupRetentionPeriodInDays': ?backupRetentionPeriodInDays,
      'backupTimestamp': ?backupTimestamp,
      'characterSet': ?characterSet,
      'cloneType': ?cloneType,
      'computeCount': ?computeCount,
      'computeModel': ?computeModel,
      'customerContacts': ?customerContacts,
      'dataStorageSizeInTb': ?dataStorageSizeInTb,
      'databaseVersion': ?databaseVersion,
      'databaseWorkload': ?databaseWorkload,
      'displayName': ?displayName,
      'licenseModel': ?licenseModel,
      'location': ?location,
      'mtlsConnectionRequired': ?mtlsConnectionRequired,
      'name': ?name,
      'nationalCharacterSet': ?nationalCharacterSet,
      'resourceGroupName': ?resourceGroupName,
      'sourceAutonomousDatabaseId': ?sourceAutonomousDatabaseId,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory AutonomousDatabaseCloneFromBackupState.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabaseCloneFromBackupState(
      adminPassword: map['adminPassword'] == null ? null : (map['adminPassword'] as String).input(),
      allowedIpAddresses: map['allowedIpAddresses'] == null ? null : ((map['allowedIpAddresses'] as List).cast<String>()).input(),
      autoScalingEnabled: map['autoScalingEnabled'] == null ? null : (map['autoScalingEnabled'] as bool).input(),
      autoScalingForStorageEnabled: map['autoScalingForStorageEnabled'] == null ? null : (map['autoScalingForStorageEnabled'] as bool).input(),
      backupRetentionPeriodInDays: map['backupRetentionPeriodInDays'] == null ? null : (map['backupRetentionPeriodInDays'] as int).input(),
      backupTimestamp: map['backupTimestamp'] == null ? null : (map['backupTimestamp'] as String).input(),
      characterSet: map['characterSet'] == null ? null : (map['characterSet'] as String).input(),
      cloneType: map['cloneType'] == null ? null : (map['cloneType'] as String).input(),
      computeCount: map['computeCount'] == null ? null : (map['computeCount'] as double).input(),
      computeModel: map['computeModel'] == null ? null : (map['computeModel'] as String).input(),
      customerContacts: map['customerContacts'] == null ? null : ((map['customerContacts'] as List).cast<String>()).input(),
      dataStorageSizeInTb: map['dataStorageSizeInTb'] == null ? null : (map['dataStorageSizeInTb'] as int).input(),
      databaseVersion: map['databaseVersion'] == null ? null : (map['databaseVersion'] as String).input(),
      databaseWorkload: map['databaseWorkload'] == null ? null : (map['databaseWorkload'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      licenseModel: map['licenseModel'] == null ? null : (map['licenseModel'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      mtlsConnectionRequired: map['mtlsConnectionRequired'] == null ? null : (map['mtlsConnectionRequired'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      nationalCharacterSet: map['nationalCharacterSet'] == null ? null : (map['nationalCharacterSet'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      sourceAutonomousDatabaseId: map['sourceAutonomousDatabaseId'] == null ? null : (map['sourceAutonomousDatabaseId'] as String).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      virtualNetworkId: map['virtualNetworkId'] == null ? null : (map['virtualNetworkId'] as String).input(),
    );
  }
}

