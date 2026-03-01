// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autonomous_database_long_term_backup_schedule.dart';

/// Input properties used for looking up and filtering AutonomousDatabase resources.
class AutonomousDatabaseState {
  /// The password must be between `12` and `30 `characters long, and must contain at least 1 uppercase, 1 lowercase, and 1 numeric character. It cannot contain the double quote symbol (") or the username "admin", regardless of casing.
  final pulumi.Input<String>? adminPassword;
  /// (Optional) Defines the network access type for the Autonomous Database. If the property is explicitly set to an empty list, it allows secure public access to the database from any IP address. If specific ACL (Access Control List) values are provided, access will be restricted to only the specified IP addresses.
  final pulumi.Input<List<String>>? allowedIps;
  /// Indicates if auto scaling is enabled for the Autonomous Database CPU core count.
  final pulumi.Input<bool>? autoScalingEnabled;
  /// Indicates if auto scaling is enabled for the Autonomous Database storage.
  final pulumi.Input<bool>? autoScalingForStorageEnabled;
  /// Retention period, in days, for backups.
  final pulumi.Input<int>? backupRetentionPeriodInDays;
  /// The character set for the autonomous database. Allowed values are: `AL32UTF8`, `AR8ADOS710`, `AR8ADOS720`, `AR8APTEC715`, `AR8ARABICMACS`, `AR8ASMO8X`, `AR8ISO8859P6`, `AR8MSWIN1256`, `AR8MUSSAD768`, `AR8NAFITHA711`, `AR8NAFITHA721`, `AR8SAKHR706`, `AR8SAKHR707`, `AZ8ISO8859P9E`, `BG8MSWIN`, `BG8PC437S`, `BLT8CP921`, `BLT8ISO8859P13`, `BLT8MSWIN1257`, `BLT8PC775`, `BN8BSCII`, `CDN8PC863`, `CEL8ISO8859P14`, `CL8ISO8859P5`, `CL8ISOIR111`, `CL8KOI8R`, `CL8KOI8U`, `CL8MACCYRILLICS`, `CL8MSWIN1251`, `EE8ISO8859P2`, `EE8MACCES`, `EE8MACCROATIANS`, `EE8MSWIN1250`, `EE8PC852`, `EL8DEC`, `EL8ISO8859P7`, `EL8MACGREEKS`, `EL8MSWIN1253`, `EL8PC437S`, `EL8PC851`, `EL8PC869`, `ET8MSWIN923`, `HU8ABMOD`, `HU8CWI2`, `IN8ISCII`, `IS8PC861`, `IW8ISO8859P8`, `IW8MACHEBREWS`, `IW8MSWIN1255`, `IW8PC1507`, `JA16EUC`, `JA16EUCTILDE`, `JA16SJIS`, `JA16SJISTILDE`, `JA16VMS`, `KO16KSC5601`, `KO16KSCCS`, `KO16MSWIN949`, `LA8ISO6937`, `LA8PASSPORT`, `LT8MSWIN921`, `LT8PC772`, `LT8PC774`, `LV8PC1117`, `LV8PC8LR`, `LV8RST104090`, `N8PC865`, `NE8ISO8859P10`, `NEE8ISO8859P4`, `RU8BESTA`, `RU8PC855`, `RU8PC866`, `SE8ISO8859P3`, `TH8MACTHAIS`, `TH8TISASCII`, `TR8DEC`, `TR8MACTURKISHS`, `TR8MSWIN1254`, `TR8PC857`, `US7ASCII`, `US8PC437`, `UTF8`, `VN8MSWIN1258`, `VN8VN3`, `WE8DEC`, `WE8DG`, `WE8ISO8859P1`, `WE8ISO8859P15`, `WE8ISO8859P9`, `WE8MACROMAN8S`, `WE8MSWIN1252`, `WE8NCR4970`, `WE8NEXTSTEP`, `WE8PC850`, `WE8PC858`, `WE8PC860`, `WE8ROMAN8`, `ZHS16CGB231280`, `ZHS16GBK`, `ZHT16BIG5`, `ZHT16CCDC`, `ZHT16DBT`, `ZHT16HKSCS`, `ZHT16MSWIN950`, `ZHT32EUC`, `ZHT32SOPS`, `ZHT32TRIS`. Changing this forces a new Autonomous Database to be created.
  final pulumi.Input<String>? characterSet;
  /// The compute amount (CPUs) available to the database. Minimum and maximum values depend on the compute model and whether the database is an Autonomous Database Serverless instance or an Autonomous Database on Dedicated Exadata Infrastructure. For an Autonomous Database Serverless instance, the `ECPU` compute model requires a minimum value of one, for databases in the elastic resource pool and minimum value of two, otherwise. Required when using the `computeModel` parameter. When using `cpuCoreCount` parameter, it is an error to specify computeCount to a non-null value. Providing `computeModel` and `computeCount` is the preferred method for both OCPU and ECPU.
  final pulumi.Input<double>? computeCount;
  /// The compute model of the Autonomous Database. This is required if using the `computeCount` parameter. If using `cpuCoreCount` then it is an error to specify `computeModel` to a non-null value. ECPU compute model is the recommended model and OCPU compute model is legacy. Changing this forces a new Autonomous Database to be created.
  final pulumi.Input<String>? computeModel;
  final pulumi.Input<List<String>>? customerContacts;
  /// The maximum storage that can be allocated for the database, in terabytes.
  final pulumi.Input<int>? dataStorageSizeInTbs;
  /// A valid Oracle Database version for Autonomous Database. Changing this forces a new Autonomous Database to be created.
  final pulumi.Input<String>? dbVersion;
  /// The Autonomous Database workload type. Changing this forces a new Autonomous Database to be created. Possible values are `AJD`, `APEX`, `DW` and `OLTP`.
  ///
  /// > **Note:** `AJD` indicates an Autonomous JSON database; `APEX` indicates an Autonomous Database with the Oracle APEX Application Development workload type; `DW` indicates an Autonomous Data Warehouse database; `OLTP` indicates an Autonomous Transaction Processing database
  /// > **Note:** When Provisioning Database with `APEX` workload `mtls_connection_required` must be set to `true`.
  final pulumi.Input<String>? dbWorkload;
  /// The user-friendly name for the Autonomous Database. The name does not have to be unique. Changing this forces a new Autonomous Database to be created.
  final pulumi.Input<String>? displayName;
  /// The Oracle license model that applies to the Oracle Autonomous Database. Possible values are `LicenseIncluded` and `BringYourOwnLicense`. Changing this forces a new Autonomous Database to be created. Bring your own license (BYOL) allows you to apply your current on-premises Oracle software licenses to equivalent, highly automated Oracle services in the cloud. License Included allows you to subscribe to new Oracle Database software licenses and the Oracle Database service. Note that when provisioning an [Autonomous Database on dedicated Exadata infrastructure](https://docs.oracle.com/en/cloud/paas/autonomous-database/index.html), this attribute must be null. It is already set at the Autonomous Exadata Infrastructure level. When provisioning an [Autonomous Database Serverless] (https://docs.oracle.com/en/cloud/paas/autonomous-database/index.html) database, if a value is not specified, the system defaults the value to `BRING_YOUR_OWN_LICENSE`. Bring your own license (BYOL) also allows you to select the DB edition using the optional parameter.
  final pulumi.Input<String>? licenseModel;
  /// The Azure Region where the Autonomous Database should exist. Changing this forces a new Autonomous Database to be created.
  final pulumi.Input<String>? location;
  final pulumi.Input<AutonomousDatabaseLongTermBackupSchedule>? longTermBackupSchedule;
  /// Specifies if the Autonomous Database requires mTLS connections. Changing this forces a new Autonomous Database to be created. Default value `false`.
  ///
  /// > **Note:** `mtls_connection_required`  must be set to `true` for all workload types except 'APEX' when creating a database with public access.
  final pulumi.Input<bool>? mtlsConnectionRequired;
  /// The name which should be used for this Autonomous Database. Changing this forces a new Autonomous Database to be created.
  final pulumi.Input<String>? name;
  /// The national character set for the autonomous database. Changing this forces a new Autonomous Database to be created. The default is AL16UTF16. Allowed values are: AL16UTF16 or UTF8.
  final pulumi.Input<String>? nationalCharacterSet;
  /// The name of the Resource Group where the Autonomous Database should exist. Changing this forces a new Autonomous Database to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the subnet the resource is associated with. Changing this forces a new Autonomous Database to be created.
  final pulumi.Input<String>? subnetId;
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the vnet associated with the cloud VM cluster. Changing this forces a new Autonomous Database to be created.
  final pulumi.Input<String>? virtualNetworkId;

  /// Creates a new [AutonomousDatabaseState].
  /// [adminPassword] The password must be between `12` and `30 `characters long, and must contain at least 1 uppercase, 1 lowercase, and 1 numeric character. It cannot contain the double quote symbol (") or the username "admin", regardless of casing.
  /// [allowedIps] (Optional) Defines the network access type for the Autonomous Database. If the property is explicitly set to an empty list, it allows secure public access to the database from any IP address. If specific ACL (Access Control List) values are provided, access will be restricted to only the specified IP addresses.
  /// [autoScalingEnabled] Indicates if auto scaling is enabled for the Autonomous Database CPU core count.
  /// [autoScalingForStorageEnabled] Indicates if auto scaling is enabled for the Autonomous Database storage.
  /// [backupRetentionPeriodInDays] Retention period, in days, for backups.
  /// [characterSet] The character set for the autonomous database. Allowed values are: `AL32UTF8`, `AR8ADOS710`, `AR8ADOS720`, `AR8APTEC715`, `AR8ARABICMACS`, `AR8ASMO8X`, `AR8ISO8859P6`, `AR8MSWIN1256`, `AR8MUSSAD768`, `AR8NAFITHA711`, `AR8NAFITHA721`, `AR8SAKHR706`, `AR8SAKHR707`, `AZ8ISO8859P9E`, `BG8MSWIN`, `BG8PC437S`, `BLT8CP921`, `BLT8ISO8859P13`, `BLT8MSWIN1257`, `BLT8PC775`, `BN8BSCII`, `CDN8PC863`, `CEL8ISO8859P14`, `CL8ISO8859P5`, `CL8ISOIR111`, `CL8KOI8R`, `CL8KOI8U`, `CL8MACCYRILLICS`, `CL8MSWIN1251`, `EE8ISO8859P2`, `EE8MACCES`, `EE8MACCROATIANS`, `EE8MSWIN1250`, `EE8PC852`, `EL8DEC`, `EL8ISO8859P7`, `EL8MACGREEKS`, `EL8MSWIN1253`, `EL8PC437S`, `EL8PC851`, `EL8PC869`, `ET8MSWIN923`, `HU8ABMOD`, `HU8CWI2`, `IN8ISCII`, `IS8PC861`, `IW8ISO8859P8`, `IW8MACHEBREWS`, `IW8MSWIN1255`, `IW8PC1507`, `JA16EUC`, `JA16EUCTILDE`, `JA16SJIS`, `JA16SJISTILDE`, `JA16VMS`, `KO16KSC5601`, `KO16KSCCS`, `KO16MSWIN949`, `LA8ISO6937`, `LA8PASSPORT`, `LT8MSWIN921`, `LT8PC772`, `LT8PC774`, `LV8PC1117`, `LV8PC8LR`, `LV8RST104090`, `N8PC865`, `NE8ISO8859P10`, `NEE8ISO8859P4`, `RU8BESTA`, `RU8PC855`, `RU8PC866`, `SE8ISO8859P3`, `TH8MACTHAIS`, `TH8TISASCII`, `TR8DEC`, `TR8MACTURKISHS`, `TR8MSWIN1254`, `TR8PC857`, `US7ASCII`, `US8PC437`, `UTF8`, `VN8MSWIN1258`, `VN8VN3`, `WE8DEC`, `WE8DG`, `WE8ISO8859P1`, `WE8ISO8859P15`, `WE8ISO8859P9`, `WE8MACROMAN8S`, `WE8MSWIN1252`, `WE8NCR4970`, `WE8NEXTSTEP`, `WE8PC850`, `WE8PC858`, `WE8PC860`, `WE8ROMAN8`, `ZHS16CGB231280`, `ZHS16GBK`, `ZHT16BIG5`, `ZHT16CCDC`, `ZHT16DBT`, `ZHT16HKSCS`, `ZHT16MSWIN950`, `ZHT32EUC`, `ZHT32SOPS`, `ZHT32TRIS`. Changing this forces a new Autonomous Database to be created.
  /// [computeCount] The compute amount (CPUs) available to the database. Minimum and maximum values depend on the compute model and whether the database is an Autonomous Database Serverless instance or an Autonomous Database on Dedicated Exadata Infrastructure. For an Autonomous Database Serverless instance, the `ECPU` compute model requires a minimum value of one, for databases in the elastic resource pool and minimum value of two, otherwise. Required when using the `computeModel` parameter. When using `cpuCoreCount` parameter, it is an error to specify computeCount to a non-null value. Providing `computeModel` and `computeCount` is the preferred method for both OCPU and ECPU.
  /// [computeModel] The compute model of the Autonomous Database. This is required if using the `computeCount` parameter. If using `cpuCoreCount` then it is an error to specify `computeModel` to a non-null value. ECPU compute model is the recommended model and OCPU compute model is legacy. Changing this forces a new Autonomous Database to be created.
  /// [customerContacts] Optional.
  /// [dataStorageSizeInTbs] The maximum storage that can be allocated for the database, in terabytes.
  /// [dbVersion] A valid Oracle Database version for Autonomous Database. Changing this forces a new Autonomous Database to be created.
  /// [dbWorkload] The Autonomous Database workload type. Changing this forces a new Autonomous Database to be created. Possible values are `AJD`, `APEX`, `DW` and `OLTP`.
  /// [displayName] The user-friendly name for the Autonomous Database. The name does not have to be unique. Changing this forces a new Autonomous Database to be created.
  /// [licenseModel] The Oracle license model that applies to the Oracle Autonomous Database. Possible values are `LicenseIncluded` and `BringYourOwnLicense`. Changing this forces a new Autonomous Database to be created. Bring your own license (BYOL) allows you to apply your current on-premises Oracle software licenses to equivalent, highly automated Oracle services in the cloud. License Included allows you to subscribe to new Oracle Database software licenses and the Oracle Database service. Note that when provisioning an [Autonomous Database on dedicated Exadata infrastructure](https://docs.oracle.com/en/cloud/paas/autonomous-database/index.html), this attribute must be null. It is already set at the Autonomous Exadata Infrastructure level. When provisioning an [Autonomous Database Serverless] (https://docs.oracle.com/en/cloud/paas/autonomous-database/index.html) database, if a value is not specified, the system defaults the value to `BRING_YOUR_OWN_LICENSE`. Bring your own license (BYOL) also allows you to select the DB edition using the optional parameter.
  /// [location] The Azure Region where the Autonomous Database should exist. Changing this forces a new Autonomous Database to be created.
  /// [longTermBackupSchedule] Optional.
  /// [mtlsConnectionRequired] Specifies if the Autonomous Database requires mTLS connections. Changing this forces a new Autonomous Database to be created. Default value `false`.
  /// [name] The name which should be used for this Autonomous Database. Changing this forces a new Autonomous Database to be created.
  /// [nationalCharacterSet] The national character set for the autonomous database. Changing this forces a new Autonomous Database to be created. The default is AL16UTF16. Allowed values are: AL16UTF16 or UTF8.
  /// [resourceGroupName] The name of the Resource Group where the Autonomous Database should exist. Changing this forces a new Autonomous Database to be created.
  /// [subnetId] The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the subnet the resource is associated with. Changing this forces a new Autonomous Database to be created.
  /// [tags] Optional.
  /// [virtualNetworkId] The ID of the vnet associated with the cloud VM cluster. Changing this forces a new Autonomous Database to be created.
  AutonomousDatabaseState({
    pulumi.Output<String>? adminPassword,
    pulumi.Output<List<String>>? allowedIps,
    pulumi.Output<bool>? autoScalingEnabled,
    pulumi.Output<bool>? autoScalingForStorageEnabled,
    pulumi.Output<int>? backupRetentionPeriodInDays,
    pulumi.Output<String>? characterSet,
    pulumi.Output<double>? computeCount,
    pulumi.Output<String>? computeModel,
    pulumi.Output<List<String>>? customerContacts,
    pulumi.Output<int>? dataStorageSizeInTbs,
    pulumi.Output<String>? dbVersion,
    pulumi.Output<String>? dbWorkload,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? licenseModel,
    pulumi.Output<String>? location,
    pulumi.Output<AutonomousDatabaseLongTermBackupSchedule>? longTermBackupSchedule,
    pulumi.Output<bool>? mtlsConnectionRequired,
    pulumi.Output<String>? name,
    pulumi.Output<String>? nationalCharacterSet,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? subnetId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? virtualNetworkId,
  }) :
      adminPassword = pulumi.Input.asOptionalInput<String>(adminPassword),
      allowedIps = pulumi.Input.asOptionalInput<List<String>>(allowedIps),
      autoScalingEnabled = pulumi.Input.asOptionalInput<bool>(autoScalingEnabled),
      autoScalingForStorageEnabled = pulumi.Input.asOptionalInput<bool>(autoScalingForStorageEnabled),
      backupRetentionPeriodInDays = pulumi.Input.asOptionalInput<int>(backupRetentionPeriodInDays),
      characterSet = pulumi.Input.asOptionalInput<String>(characterSet),
      computeCount = pulumi.Input.asOptionalInput<double>(computeCount),
      computeModel = pulumi.Input.asOptionalInput<String>(computeModel),
      customerContacts = pulumi.Input.asOptionalInput<List<String>>(customerContacts),
      dataStorageSizeInTbs = pulumi.Input.asOptionalInput<int>(dataStorageSizeInTbs),
      dbVersion = pulumi.Input.asOptionalInput<String>(dbVersion),
      dbWorkload = pulumi.Input.asOptionalInput<String>(dbWorkload),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      licenseModel = pulumi.Input.asOptionalInput<String>(licenseModel),
      location = pulumi.Input.asOptionalInput<String>(location),
      longTermBackupSchedule = pulumi.Input.asOptionalInput<AutonomousDatabaseLongTermBackupSchedule>(longTermBackupSchedule),
      mtlsConnectionRequired = pulumi.Input.asOptionalInput<bool>(mtlsConnectionRequired),
      name = pulumi.Input.asOptionalInput<String>(name),
      nationalCharacterSet = pulumi.Input.asOptionalInput<String>(nationalCharacterSet),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualNetworkId = pulumi.Input.asOptionalInput<String>(virtualNetworkId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPassword': ?adminPassword,
      'allowedIps': ?allowedIps,
      'autoScalingEnabled': ?autoScalingEnabled,
      'autoScalingForStorageEnabled': ?autoScalingForStorageEnabled,
      'backupRetentionPeriodInDays': ?backupRetentionPeriodInDays,
      'characterSet': ?characterSet,
      'computeCount': ?computeCount,
      'computeModel': ?computeModel,
      'customerContacts': ?customerContacts,
      'dataStorageSizeInTbs': ?dataStorageSizeInTbs,
      'dbVersion': ?dbVersion,
      'dbWorkload': ?dbWorkload,
      'displayName': ?displayName,
      'licenseModel': ?licenseModel,
      'location': ?location,
      'longTermBackupSchedule': ?pulumi.Input.mapOptionalInputValue<AutonomousDatabaseLongTermBackupSchedule, Map<String, dynamic>>(longTermBackupSchedule, (value) => value.toMap()),
      'mtlsConnectionRequired': ?mtlsConnectionRequired,
      'name': ?name,
      'nationalCharacterSet': ?nationalCharacterSet,
      'resourceGroupName': ?resourceGroupName,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory AutonomousDatabaseState.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabaseState(
      adminPassword: map['adminPassword'] == null ? null : pulumi.Output.create<String>(map['adminPassword'] as String),
      allowedIps: map['allowedIps'] == null ? null : pulumi.Output.create<List<String>>((map['allowedIps'] as List).cast<String>()),
      autoScalingEnabled: map['autoScalingEnabled'] == null ? null : pulumi.Output.create<bool>(map['autoScalingEnabled'] as bool),
      autoScalingForStorageEnabled: map['autoScalingForStorageEnabled'] == null ? null : pulumi.Output.create<bool>(map['autoScalingForStorageEnabled'] as bool),
      backupRetentionPeriodInDays: map['backupRetentionPeriodInDays'] == null ? null : pulumi.Output.create<int>(map['backupRetentionPeriodInDays'] as int),
      characterSet: map['characterSet'] == null ? null : pulumi.Output.create<String>(map['characterSet'] as String),
      computeCount: map['computeCount'] == null ? null : pulumi.Output.create<double>(map['computeCount'] as double),
      computeModel: map['computeModel'] == null ? null : pulumi.Output.create<String>(map['computeModel'] as String),
      customerContacts: map['customerContacts'] == null ? null : pulumi.Output.create<List<String>>((map['customerContacts'] as List).cast<String>()),
      dataStorageSizeInTbs: map['dataStorageSizeInTbs'] == null ? null : pulumi.Output.create<int>(map['dataStorageSizeInTbs'] as int),
      dbVersion: map['dbVersion'] == null ? null : pulumi.Output.create<String>(map['dbVersion'] as String),
      dbWorkload: map['dbWorkload'] == null ? null : pulumi.Output.create<String>(map['dbWorkload'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      licenseModel: map['licenseModel'] == null ? null : pulumi.Output.create<String>(map['licenseModel'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      longTermBackupSchedule: map['longTermBackupSchedule'] == null ? null : pulumi.Output.create<AutonomousDatabaseLongTermBackupSchedule>(AutonomousDatabaseLongTermBackupSchedule.fromMap((map['longTermBackupSchedule'] as Map).cast<String, dynamic>())),
      mtlsConnectionRequired: map['mtlsConnectionRequired'] == null ? null : pulumi.Output.create<bool>(map['mtlsConnectionRequired'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nationalCharacterSet: map['nationalCharacterSet'] == null ? null : pulumi.Output.create<String>(map['nationalCharacterSet'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualNetworkId: map['virtualNetworkId'] == null ? null : pulumi.Output.create<String>(map['virtualNetworkId'] as String),
    );
  }
}

