// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_system_properties_data_collection_options.dart';
import 'db_system_properties_db_home.dart';
import 'db_system_properties_db_system_options.dart';
import 'db_system_properties_time_zone.dart';

class DbSystemProperties {
  /// The number of CPU cores to enable for the DbSystem.
  final pulumi.Input<int> computeCount;
  /// The compute model of the DbSystem.
  /// Possible values:
  /// ECPU
  /// OCPU
  final pulumi.Input<String>? computeModel;
  /// Data collection options for DbSystem.
  /// Structure is documented below.
  final pulumi.Input<DbSystemPropertiesDataCollectionOptions>? dataCollectionOptions;
  /// The data storage size in GB that is currently available to DbSystems.
  final pulumi.Input<int>? dataStorageSizeGb;
  /// The database edition of the DbSystem.
  /// Possible values:
  /// STANDARD_EDITION
  /// ENTERPRISE_EDITION
  /// ENTERPRISE_EDITION_HIGH_PERFORMANCE
  final pulumi.Input<String> databaseEdition;
  /// Details of the Database Home resource.
  /// Structure is documented below.
  final pulumi.Input<DbSystemPropertiesDbHome>? dbHome;
  /// Details of the DbSystem Options.
  /// Structure is documented below.
  final pulumi.Input<DbSystemPropertiesDbSystemOptions>? dbSystemOptions;
  /// The host domain name of the DbSystem.
  final pulumi.Input<String>? domain;
  /// (Output)
  /// The hostname of the DbSystem.
  final pulumi.Input<String>? hostname;
  /// Prefix for DB System host names.
  final pulumi.Input<String>? hostnamePrefix;
  /// The initial data storage size in GB.
  final pulumi.Input<int> initialDataStorageSizeGb;
  /// The license model of the DbSystem.
  /// Possible values:
  /// LICENSE_INCLUDED
  /// BRING_YOUR_OWN_LICENSE
  final pulumi.Input<String> licenseModel;
  /// (Output)
  /// State of the DbSystem.
  /// Possible values:
  /// PROVISIONING
  /// AVAILABLE
  /// UPDATING
  /// TERMINATING
  /// TERMINATED
  /// FAILED
  /// MIGRATED
  /// MAINTENANCE_IN_PROGRESS
  /// NEEDS_ATTENTION
  /// UPGRADING
  final pulumi.Input<String>? lifecycleState;
  /// The memory size in GB.
  final pulumi.Input<int>? memorySizeGb;
  /// The number of nodes in the DbSystem.
  final pulumi.Input<int>? nodeCount;
  /// (Output)
  /// OCID of the DbSystem.
  final pulumi.Input<String>? ocid;
  /// The private IP address of the DbSystem.
  final pulumi.Input<String>? privateIp;
  /// The reco/redo storage size in GB.
  final pulumi.Input<int>? recoStorageSizeGb;
  /// Shape of DB System.
  final pulumi.Input<String> shape;
  /// SSH public keys to be stored with the DbSystem.
  final pulumi.Input<List<String>> sshPublicKeys;
  /// Represents a time zone from the
  /// [IANA Time Zone Database](https://www.iana.org/time-zones).
  /// Structure is documented below.
  final pulumi.Input<DbSystemPropertiesTimeZone>? timeZone;

  /// Creates a new [DbSystemProperties].
  /// [computeCount] The number of CPU cores to enable for the DbSystem.
  /// [computeModel] The compute model of the DbSystem.
  /// [dataCollectionOptions] Data collection options for DbSystem.
  /// [dataStorageSizeGb] The data storage size in GB that is currently available to DbSystems.
  /// [databaseEdition] The database edition of the DbSystem.
  /// [dbHome] Details of the Database Home resource.
  /// [dbSystemOptions] Details of the DbSystem Options.
  /// [domain] The host domain name of the DbSystem.
  /// [hostname] (Output)
  /// [hostnamePrefix] Prefix for DB System host names.
  /// [initialDataStorageSizeGb] The initial data storage size in GB.
  /// [licenseModel] The license model of the DbSystem.
  /// [lifecycleState] (Output)
  /// [memorySizeGb] The memory size in GB.
  /// [nodeCount] The number of nodes in the DbSystem.
  /// [ocid] (Output)
  /// [privateIp] The private IP address of the DbSystem.
  /// [recoStorageSizeGb] The reco/redo storage size in GB.
  /// [shape] Shape of DB System.
  /// [sshPublicKeys] SSH public keys to be stored with the DbSystem.
  /// [timeZone] Represents a time zone from the
  DbSystemProperties({
    required this.computeCount,
    this.computeModel,
    this.dataCollectionOptions,
    this.dataStorageSizeGb,
    required this.databaseEdition,
    this.dbHome,
    this.dbSystemOptions,
    this.domain,
    this.hostname,
    this.hostnamePrefix,
    required this.initialDataStorageSizeGb,
    required this.licenseModel,
    this.lifecycleState,
    this.memorySizeGb,
    this.nodeCount,
    this.ocid,
    this.privateIp,
    this.recoStorageSizeGb,
    required this.shape,
    required this.sshPublicKeys,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeCount': computeCount,
      'computeModel': ?computeModel,
      'dataCollectionOptions': ?pulumi.Input.mapOptionalInputValue<DbSystemPropertiesDataCollectionOptions, Map<String, dynamic>>(dataCollectionOptions, (value) => value.toMap()),
      'dataStorageSizeGb': ?dataStorageSizeGb,
      'databaseEdition': databaseEdition,
      'dbHome': ?pulumi.Input.mapOptionalInputValue<DbSystemPropertiesDbHome, Map<String, dynamic>>(dbHome, (value) => value.toMap()),
      'dbSystemOptions': ?pulumi.Input.mapOptionalInputValue<DbSystemPropertiesDbSystemOptions, Map<String, dynamic>>(dbSystemOptions, (value) => value.toMap()),
      'domain': ?domain,
      'hostname': ?hostname,
      'hostnamePrefix': ?hostnamePrefix,
      'initialDataStorageSizeGb': initialDataStorageSizeGb,
      'licenseModel': licenseModel,
      'lifecycleState': ?lifecycleState,
      'memorySizeGb': ?memorySizeGb,
      'nodeCount': ?nodeCount,
      'ocid': ?ocid,
      'privateIp': ?privateIp,
      'recoStorageSizeGb': ?recoStorageSizeGb,
      'shape': shape,
      'sshPublicKeys': sshPublicKeys,
      'timeZone': ?pulumi.Input.mapOptionalInputValue<DbSystemPropertiesTimeZone, Map<String, dynamic>>(timeZone, (value) => value.toMap()),
    };
  }

  factory DbSystemProperties.fromMap(Map<String, dynamic> map) {
    return DbSystemProperties(
      computeCount: (map['computeCount'] as int).input(),
      computeModel: map['computeModel'] == null ? null : (map['computeModel']! as String).input(),
      dataCollectionOptions: map['dataCollectionOptions'] == null ? null : (DbSystemPropertiesDataCollectionOptions.fromMap((map['dataCollectionOptions']! as Map).cast<String, dynamic>())).input(),
      dataStorageSizeGb: map['dataStorageSizeGb'] == null ? null : (map['dataStorageSizeGb']! as int).input(),
      databaseEdition: (map['databaseEdition'] as String).input(),
      dbHome: map['dbHome'] == null ? null : (DbSystemPropertiesDbHome.fromMap((map['dbHome']! as Map).cast<String, dynamic>())).input(),
      dbSystemOptions: map['dbSystemOptions'] == null ? null : (DbSystemPropertiesDbSystemOptions.fromMap((map['dbSystemOptions']! as Map).cast<String, dynamic>())).input(),
      domain: map['domain'] == null ? null : (map['domain']! as String).input(),
      hostname: map['hostname'] == null ? null : (map['hostname']! as String).input(),
      hostnamePrefix: map['hostnamePrefix'] == null ? null : (map['hostnamePrefix']! as String).input(),
      initialDataStorageSizeGb: (map['initialDataStorageSizeGb'] as int).input(),
      licenseModel: (map['licenseModel'] as String).input(),
      lifecycleState: map['lifecycleState'] == null ? null : (map['lifecycleState']! as String).input(),
      memorySizeGb: map['memorySizeGb'] == null ? null : (map['memorySizeGb']! as int).input(),
      nodeCount: map['nodeCount'] == null ? null : (map['nodeCount']! as int).input(),
      ocid: map['ocid'] == null ? null : (map['ocid']! as String).input(),
      privateIp: map['privateIp'] == null ? null : (map['privateIp']! as String).input(),
      recoStorageSizeGb: map['recoStorageSizeGb'] == null ? null : (map['recoStorageSizeGb']! as int).input(),
      shape: (map['shape'] as String).input(),
      sshPublicKeys: ((map['sshPublicKeys'] as List).cast<String>()).input(),
      timeZone: map['timeZone'] == null ? null : (DbSystemPropertiesTimeZone.fromMap((map['timeZone']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

