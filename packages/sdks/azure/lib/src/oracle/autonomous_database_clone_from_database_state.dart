// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AutonomousDatabaseCloneFromDatabase resources.
class AutonomousDatabaseCloneFromDatabaseState {
  /// The password for the SYS, SYSTEM, and PDB Admin users. The password must be at least 12 characters long, and contain at least 1 uppercase, 1 lowercase, and 1 numeric character. It cannot contain the double quote symbol (`"`) or the username "admin", regardless of casing. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String>? adminPassword;

  /// Defines the network access type for the Autonomous Database. If the property is explicitly set to an empty list, it allows secure public access to the database from any IP address. If specific ACL (Access Control List) values are provided, access will be restricted to only the specified IP addresses. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<List<String>>? allowedIpAddresses;

  /// Indicates if auto scaling is enabled for the Autonomous Database CPU core count. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<bool>? autoScalingEnabled;

  /// Indicates if auto scaling is enabled for the Autonomous Database storage. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<bool>? autoScalingForStorageEnabled;

  /// Retention period, in days, for backups. Possible values range between `1` and `60`. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<int>? backupRetentionPeriodInDays;

  /// The character set for the autonomous database. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String>? characterSet;

  /// The type of clone to create. Possible values are `Full` and `Metadata`. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String>? cloneType;

  /// The compute amount (CPUs) available to the database. Possible values range between `2.0` and `512.0`. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<double>? computeCount;

  /// The compute model of the Autonomous Database. Possible values are `ECPU` and `OCPU`. Changing this forces a new Autonomous Database Clone to be created.
  ///
  /// &gt; **Note:** `ECPU` compute model is the recommended model and `OCPU` compute model is legacy.
  final pulumi.Input<String>? computeModel;

  /// Specifies a list of customer contacts as email addresses. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<List<String>>? customerContacts;

  /// The maximum storage that can be allocated for the database, in terabytes. Possible values range between `1` and `384`. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<int>? dataStorageSizeInTb;

  /// A valid Oracle Database version for Autonomous Database. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String>? databaseVersion;

  /// The Autonomous Database workload type. Possible values are `OLTP` and `DW`, `APEX`, `AJD`. Changing this forces a new Autonomous Database Clone to be created.
  /// * OLTP - indicates an Autonomous Transaction Processing database
  /// * DW - indicates an Autonomous Data Warehouse database
  /// * AJD - indicates an Autonomous JSON Database
  /// * APEX - indicates an Autonomous Database with the Oracle APEX Application Development workload type.
  ///
  /// &gt; **Note:** To clone the database with a different `database_workload` type, please refer to the documentation [here](https://docs.public.oneportal.content.oci.oraclecloud.com/iaas/autonomous-database-serverless/doc/autonomous-clone-cross-workload-type.html#GUID-527A712D-FF82-498B-AB35-8A1623E36EDD) for correct configuration steps.
  final pulumi.Input<String>? databaseWorkload;

  /// The user-friendly name for the Autonomous Database. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String>? displayName;

  /// The Oracle license model that applies to the Oracle Autonomous Database. Possible values are `LicenseIncluded` and `BringYourOwnLicense`. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String>? licenseModel;

  /// The Azure Region where the Autonomous Database should exist. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String>? location;

  /// Specifies if the Autonomous Database requires mTLS connections. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<bool>? mtlsConnectionRequired;

  /// The name which should be used for this autonomous database clone from database. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String>? name;

  /// The national character set for the autonomous database. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String>? nationalCharacterSet;

  /// The refreshable model for the clone. Possible values are `Automatic` and `Manual`. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String>? refreshableModel;

  /// The name of the Resource Group where the autonomous database clone from database should exist. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// The ID of the source Autonomous Database to clone from. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String>? sourceAutonomousDatabaseId;

  /// The ID of the subnet the resource is associated with. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String>? subnetId;

  /// A mapping of tags to assign to the Autonomous Database Clone. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<Map<String, String>>? tags;

  /// The ID of the Virtual Network this Autonomous Database Clone should be created in. Changing this forces a new Autonomous Database Clone to be created.
  final pulumi.Input<String>? virtualNetworkId;

  /// Creates a new [AutonomousDatabaseCloneFromDatabaseState].
  /// [adminPassword] The password for the SYS, SYSTEM, and PDB Admin users. The password must be at least 12 characters long, and contain at least 1 uppercase, 1 lowercase, and 1 numeric character. It cannot contain the double quote symbol (`"`) or the username "admin", regardless of casing. Changing this forces a new Autonomous Database Clone to be created.
  /// [allowedIpAddresses] Defines the network access type for the Autonomous Database. If the property is explicitly set to an empty list, it allows secure public access to the database from any IP address. If specific ACL (Access Control List) values are provided, access will be restricted to only the specified IP addresses. Changing this forces a new Autonomous Database Clone to be created.
  /// [autoScalingEnabled] Indicates if auto scaling is enabled for the Autonomous Database CPU core count. Changing this forces a new Autonomous Database Clone to be created.
  /// [autoScalingForStorageEnabled] Indicates if auto scaling is enabled for the Autonomous Database storage. Changing this forces a new Autonomous Database Clone to be created.
  /// [backupRetentionPeriodInDays] Retention period, in days, for backups. Possible values range between `1` and `60`. Changing this forces a new Autonomous Database Clone to be created.
  /// [characterSet] The character set for the autonomous database. Changing this forces a new Autonomous Database Clone to be created.
  /// [cloneType] The type of clone to create. Possible values are `Full` and `Metadata`. Changing this forces a new Autonomous Database Clone to be created.
  /// [computeCount] The compute amount (CPUs) available to the database. Possible values range between `2.0` and `512.0`. Changing this forces a new Autonomous Database Clone to be created.
  /// [computeModel] The compute model of the Autonomous Database. Possible values are `ECPU` and `OCPU`. Changing this forces a new Autonomous Database Clone to be created.
  /// [customerContacts] Specifies a list of customer contacts as email addresses. Changing this forces a new Autonomous Database Clone to be created.
  /// [dataStorageSizeInTb] The maximum storage that can be allocated for the database, in terabytes. Possible values range between `1` and `384`. Changing this forces a new Autonomous Database Clone to be created.
  /// [databaseVersion] A valid Oracle Database version for Autonomous Database. Changing this forces a new Autonomous Database Clone to be created.
  /// [databaseWorkload] The Autonomous Database workload type. Possible values are `OLTP` and `DW`, `APEX`, `AJD`. Changing this forces a new Autonomous Database Clone to be created.
  /// [displayName] The user-friendly name for the Autonomous Database. Changing this forces a new Autonomous Database Clone to be created.
  /// [licenseModel] The Oracle license model that applies to the Oracle Autonomous Database. Possible values are `LicenseIncluded` and `BringYourOwnLicense`. Changing this forces a new Autonomous Database Clone to be created.
  /// [location] The Azure Region where the Autonomous Database should exist. Changing this forces a new Autonomous Database Clone to be created.
  /// [mtlsConnectionRequired] Specifies if the Autonomous Database requires mTLS connections. Changing this forces a new Autonomous Database Clone to be created.
  /// [name] The name which should be used for this autonomous database clone from database. Changing this forces a new Autonomous Database Clone to be created.
  /// [nationalCharacterSet] The national character set for the autonomous database. Changing this forces a new Autonomous Database Clone to be created.
  /// [refreshableModel] The refreshable model for the clone. Possible values are `Automatic` and `Manual`. Changing this forces a new Autonomous Database Clone to be created.
  /// [resourceGroupName] The name of the Resource Group where the autonomous database clone from database should exist. Changing this forces a new Autonomous Database Clone to be created.
  /// [sourceAutonomousDatabaseId] The ID of the source Autonomous Database to clone from. Changing this forces a new Autonomous Database Clone to be created.
  /// [subnetId] The ID of the subnet the resource is associated with. Changing this forces a new Autonomous Database Clone to be created.
  /// [tags] A mapping of tags to assign to the Autonomous Database Clone. Changing this forces a new Autonomous Database Clone to be created.
  /// [virtualNetworkId] The ID of the Virtual Network this Autonomous Database Clone should be created in. Changing this forces a new Autonomous Database Clone to be created.
  AutonomousDatabaseCloneFromDatabaseState({
    this.adminPassword,
    this.allowedIpAddresses,
    this.autoScalingEnabled,
    this.autoScalingForStorageEnabled,
    this.backupRetentionPeriodInDays,
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
    this.refreshableModel,
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
      'refreshableModel': ?refreshableModel,
      'resourceGroupName': ?resourceGroupName,
      'sourceAutonomousDatabaseId': ?sourceAutonomousDatabaseId,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory AutonomousDatabaseCloneFromDatabaseState.fromMap(
    Map<String, dynamic> map,
  ) {
    return AutonomousDatabaseCloneFromDatabaseState(
      adminPassword: (() {
        final guardedValue = map['adminPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      allowedIpAddresses: (() {
        final guardedValue = map['allowedIpAddresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      autoScalingEnabled: (() {
        final guardedValue = map['autoScalingEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      autoScalingForStorageEnabled: (() {
        final guardedValue = map['autoScalingForStorageEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      backupRetentionPeriodInDays: (() {
        final guardedValue = map['backupRetentionPeriodInDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      characterSet: (() {
        final guardedValue = map['characterSet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cloneType: (() {
        final guardedValue = map['cloneType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      computeCount: (() {
        final guardedValue = map['computeCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      computeModel: (() {
        final guardedValue = map['computeModel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      customerContacts: (() {
        final guardedValue = map['customerContacts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      dataStorageSizeInTb: (() {
        final guardedValue = map['dataStorageSizeInTb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      databaseVersion: (() {
        final guardedValue = map['databaseVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      databaseWorkload: (() {
        final guardedValue = map['databaseWorkload'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      licenseModel: (() {
        final guardedValue = map['licenseModel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mtlsConnectionRequired: (() {
        final guardedValue = map['mtlsConnectionRequired'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nationalCharacterSet: (() {
        final guardedValue = map['nationalCharacterSet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      refreshableModel: (() {
        final guardedValue = map['refreshableModel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceAutonomousDatabaseId: (() {
        final guardedValue = map['sourceAutonomousDatabaseId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subnetId: (() {
        final guardedValue = map['subnetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      virtualNetworkId: (() {
        final guardedValue = map['virtualNetworkId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
