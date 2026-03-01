// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracle_autonomous_database_clone_from_backup_autonomous_database_clone_from_backup_args_doc}
/// The set of arguments for AutonomousDatabaseCloneFromBackup.
/// {@endtemplate}
/// {@macro pulumi_oracle_autonomous_database_clone_from_backup_autonomous_database_clone_from_backup_args_doc}
class AutonomousDatabaseCloneFromBackupArgs {
  /// The password for the SYS, SYSTEM, and PDB Admin users. The password must be at least 12 characters long, and contain at least 1 uppercase, 1 lowercase, and 1 numeric character. It cannot contain the double quote symbol (") or the username "admin," regardless of casing. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String> adminPassword;
  /// Defines the network access type for the Autonomous Database. If the property is explicitly set to an empty list, it allows secure public access to the database from any IP address. If specific ACL (Access Control List) values are provided, access will be restricted to only the specified IP addresses. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<List<String>>? allowedIpAddresses;
  /// Indicates if auto-scaling is enabled for the Autonomous Database CPU core count. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<bool> autoScalingEnabled;
  /// Indicates if auto-scaling is enabled for the Autonomous Database storage. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<bool> autoScalingForStorageEnabled;
  /// Retention period, in days, for backups. Possible values range between `1` and `60`. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<int> backupRetentionPeriodInDays;
  /// The autonomous database backup time stamp to be used for a cloning autonomous database. Changing this forces a new Autonomous Database Clone to be created.
  ///
  /// > **Note:** If `backup_timestamp` is not provided latest backup timestamp will be used.
  final pulumi.Input<String>? backupTimestamp;
  /// The character set for the autonomous database. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String> characterSet;
  /// The type of clone to create. Possible values are Full and Metadata. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String> cloneType;
  /// The compute amount (CPUs) available to the database. Possible values range between `2.0` and `512.0`. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<double> computeCount;
  /// The compute model of the Autonomous Database. Possible values are `ECPU` and `OCPU`. Changing this forces a new Autonomous Database Clone to be created.
  ///
  /// > **Note:** `ECPU` compute model is the recommended model and `OCPU` compute model is legacy.
  final pulumi.Input<String> computeModel;
  /// Specifies a list of customer contact email addresses. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<List<String>>? customerContacts;
  /// The maximum storage that can be allocated for the database, in terabytes. Possible values range between `1` and `384`. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<int> dataStorageSizeInTb;
  /// A valid Oracle Database version for Autonomous Database. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String> databaseVersion;
  /// The Autonomous Database workload type. Possible values are `OLTP`, `DW`, `APEX`, and `AJD`. Changing this forces a new Autonomous Database Clone to be created.
  ///
  /// * OLTP: Indicates an Autonomous Transaction Processing database.
  /// * DW: Indicates an Autonomous Data Warehouse database.
  /// * AJD: Indicates an Autonomous JSON Database.
  /// * APEX: Indicates an Autonomous Database with the Oracle APEX Application Development workload type.
  final pulumi.Input<String> databaseWorkload;
  /// The user-friendly name for the Autonomous Database. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String> displayName;
  /// The Oracle license model that applies to the Oracle Autonomous Database. Possible values are `LicenseIncluded` and `BringYourOwnLicense`. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String> licenseModel;
  /// The Azure Region where the autonomous database clone from backup should exist. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String>? location;
  /// Specifies if the Autonomous Database requires mTLS connections. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<bool> mtlsConnectionRequired;
  /// The name which should be used for this autonomous database clone from backup. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String>? name;
  /// The national character set for the autonomous database. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String> nationalCharacterSet;
  /// The name of the Resource Group where the autonomous database clone from backup should exist. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The ID of the source Autonomous Database to clone from. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String> sourceAutonomousDatabaseId;
  /// The ID of the subnet the resource is associated with. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String>? subnetId;
  /// A mapping of tags which should be assigned to the autonomous database clone from backup. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the Virtual Network this Autonomous Database Clone should be created in. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String>? virtualNetworkId;

  /// Creates a new [AutonomousDatabaseCloneFromBackupArgs].
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
  AutonomousDatabaseCloneFromBackupArgs({
    required pulumi.Output<String> adminPassword,
    pulumi.Output<List<String>>? allowedIpAddresses,
    required pulumi.Output<bool> autoScalingEnabled,
    required pulumi.Output<bool> autoScalingForStorageEnabled,
    required pulumi.Output<int> backupRetentionPeriodInDays,
    pulumi.Output<String>? backupTimestamp,
    required pulumi.Output<String> characterSet,
    required pulumi.Output<String> cloneType,
    required pulumi.Output<double> computeCount,
    required pulumi.Output<String> computeModel,
    pulumi.Output<List<String>>? customerContacts,
    required pulumi.Output<int> dataStorageSizeInTb,
    required pulumi.Output<String> databaseVersion,
    required pulumi.Output<String> databaseWorkload,
    required pulumi.Output<String> displayName,
    required pulumi.Output<String> licenseModel,
    pulumi.Output<String>? location,
    required pulumi.Output<bool> mtlsConnectionRequired,
    pulumi.Output<String>? name,
    required pulumi.Output<String> nationalCharacterSet,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sourceAutonomousDatabaseId,
    pulumi.Output<String>? subnetId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? virtualNetworkId,
  }) :
      adminPassword = pulumi.Input.asInput<String>(adminPassword),
      allowedIpAddresses = pulumi.Input.asOptionalInput<List<String>>(allowedIpAddresses),
      autoScalingEnabled = pulumi.Input.asInput<bool>(autoScalingEnabled),
      autoScalingForStorageEnabled = pulumi.Input.asInput<bool>(autoScalingForStorageEnabled),
      backupRetentionPeriodInDays = pulumi.Input.asInput<int>(backupRetentionPeriodInDays),
      backupTimestamp = pulumi.Input.asOptionalInput<String>(backupTimestamp),
      characterSet = pulumi.Input.asInput<String>(characterSet),
      cloneType = pulumi.Input.asInput<String>(cloneType),
      computeCount = pulumi.Input.asInput<double>(computeCount),
      computeModel = pulumi.Input.asInput<String>(computeModel),
      customerContacts = pulumi.Input.asOptionalInput<List<String>>(customerContacts),
      dataStorageSizeInTb = pulumi.Input.asInput<int>(dataStorageSizeInTb),
      databaseVersion = pulumi.Input.asInput<String>(databaseVersion),
      databaseWorkload = pulumi.Input.asInput<String>(databaseWorkload),
      displayName = pulumi.Input.asInput<String>(displayName),
      licenseModel = pulumi.Input.asInput<String>(licenseModel),
      location = pulumi.Input.asOptionalInput<String>(location),
      mtlsConnectionRequired = pulumi.Input.asInput<bool>(mtlsConnectionRequired),
      name = pulumi.Input.asOptionalInput<String>(name),
      nationalCharacterSet = pulumi.Input.asInput<String>(nationalCharacterSet),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sourceAutonomousDatabaseId = pulumi.Input.asInput<String>(sourceAutonomousDatabaseId),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualNetworkId = pulumi.Input.asOptionalInput<String>(virtualNetworkId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPassword': adminPassword,
      'allowedIpAddresses': ?allowedIpAddresses,
      'autoScalingEnabled': autoScalingEnabled,
      'autoScalingForStorageEnabled': autoScalingForStorageEnabled,
      'backupRetentionPeriodInDays': backupRetentionPeriodInDays,
      'backupTimestamp': ?backupTimestamp,
      'characterSet': characterSet,
      'cloneType': cloneType,
      'computeCount': computeCount,
      'computeModel': computeModel,
      'customerContacts': ?customerContacts,
      'dataStorageSizeInTb': dataStorageSizeInTb,
      'databaseVersion': databaseVersion,
      'databaseWorkload': databaseWorkload,
      'displayName': displayName,
      'licenseModel': licenseModel,
      'location': ?location,
      'mtlsConnectionRequired': mtlsConnectionRequired,
      'name': ?name,
      'nationalCharacterSet': nationalCharacterSet,
      'resourceGroupName': resourceGroupName,
      'sourceAutonomousDatabaseId': sourceAutonomousDatabaseId,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory AutonomousDatabaseCloneFromBackupArgs.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabaseCloneFromBackupArgs(
      adminPassword: pulumi.Output.create<String>(map['adminPassword'] as String),
      allowedIpAddresses: map['allowedIpAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['allowedIpAddresses'] as List).cast<String>()),
      autoScalingEnabled: pulumi.Output.create<bool>(map['autoScalingEnabled'] as bool),
      autoScalingForStorageEnabled: pulumi.Output.create<bool>(map['autoScalingForStorageEnabled'] as bool),
      backupRetentionPeriodInDays: pulumi.Output.create<int>(map['backupRetentionPeriodInDays'] as int),
      backupTimestamp: map['backupTimestamp'] == null ? null : pulumi.Output.create<String>(map['backupTimestamp'] as String),
      characterSet: pulumi.Output.create<String>(map['characterSet'] as String),
      cloneType: pulumi.Output.create<String>(map['cloneType'] as String),
      computeCount: pulumi.Output.create<double>(map['computeCount'] as double),
      computeModel: pulumi.Output.create<String>(map['computeModel'] as String),
      customerContacts: map['customerContacts'] == null ? null : pulumi.Output.create<List<String>>((map['customerContacts'] as List).cast<String>()),
      dataStorageSizeInTb: pulumi.Output.create<int>(map['dataStorageSizeInTb'] as int),
      databaseVersion: pulumi.Output.create<String>(map['databaseVersion'] as String),
      databaseWorkload: pulumi.Output.create<String>(map['databaseWorkload'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      licenseModel: pulumi.Output.create<String>(map['licenseModel'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      mtlsConnectionRequired: pulumi.Output.create<bool>(map['mtlsConnectionRequired'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nationalCharacterSet: pulumi.Output.create<String>(map['nationalCharacterSet'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sourceAutonomousDatabaseId: pulumi.Output.create<String>(map['sourceAutonomousDatabaseId'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualNetworkId: map['virtualNetworkId'] == null ? null : pulumi.Output.create<String>(map['virtualNetworkId'] as String),
    );
  }
}

