// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_assessment.dart';
import 'virtual_machine_auto_backup.dart';
import 'virtual_machine_auto_patching.dart';
import 'virtual_machine_key_vault_credential.dart';
import 'virtual_machine_sql_instance.dart';
import 'virtual_machine_storage_configuration.dart';
import 'virtual_machine_wsfc_domain_credential.dart';

/// Input properties used for looking up and filtering VirtualMachine resources.
class VirtualMachineState {
  /// An `assessment` block as defined below.
  final pulumi.Input<VirtualMachineAssessment>? assessment;
  /// An `auto_backup` block as defined below. This block can be added to an existing resource, but removing this block forces a new resource to be created.
  final pulumi.Input<VirtualMachineAutoBackup>? autoBackup;
  /// An `auto_patching` block as defined below.
  final pulumi.Input<VirtualMachineAutoPatching>? autoPatching;
  /// An `key_vault_credential` block as defined below.
  final pulumi.Input<VirtualMachineKeyVaultCredential>? keyVaultCredential;
  /// Should R Services be enabled?
  final pulumi.Input<bool>? rServicesEnabled;
  /// The SQL Server port. Defaults to `1433`.
  final pulumi.Input<int>? sqlConnectivityPort;
  /// The connectivity type used for this SQL Server. Possible values are `LOCAL`, `PRIVATE` and `PUBLIC`. Defaults to `PRIVATE`.
  final pulumi.Input<String>? sqlConnectivityType;
  /// The SQL Server sysadmin login password.
  final pulumi.Input<String>? sqlConnectivityUpdatePassword;
  /// The SQL Server sysadmin login to create.
  final pulumi.Input<String>? sqlConnectivityUpdateUsername;
  /// A `sql_instance` block as defined below.
  final pulumi.Input<VirtualMachineSqlInstance>? sqlInstance;
  /// The SQL Server license type. Possible values are `AHUB` (Azure Hybrid Benefit), `DR` (Disaster Recovery), and `PAYG` (Pay-As-You-Go). Changing this forces a new resource to be created.
  final pulumi.Input<String>? sqlLicenseType;
  /// The ID of the SQL Virtual Machine Group that the SQL Virtual Machine belongs to.
  final pulumi.Input<String>? sqlVirtualMachineGroupId;
  /// An `storage_configuration` block as defined below.
  final pulumi.Input<VirtualMachineStorageConfiguration>? storageConfiguration;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualMachineId;
  /// A `wsfc_domain_credential` block as defined below
  final pulumi.Input<VirtualMachineWsfcDomainCredential>? wsfcDomainCredential;

  /// Creates a new [VirtualMachineState].
  /// [assessment] An `assessment` block as defined below.
  /// [autoBackup] An `auto_backup` block as defined below. This block can be added to an existing resource, but removing this block forces a new resource to be created.
  /// [autoPatching] An `auto_patching` block as defined below.
  /// [keyVaultCredential] An `key_vault_credential` block as defined below.
  /// [rServicesEnabled] Should R Services be enabled?
  /// [sqlConnectivityPort] The SQL Server port. Defaults to `1433`.
  /// [sqlConnectivityType] The connectivity type used for this SQL Server. Possible values are `LOCAL`, `PRIVATE` and `PUBLIC`. Defaults to `PRIVATE`.
  /// [sqlConnectivityUpdatePassword] The SQL Server sysadmin login password.
  /// [sqlConnectivityUpdateUsername] The SQL Server sysadmin login to create.
  /// [sqlInstance] A `sql_instance` block as defined below.
  /// [sqlLicenseType] The SQL Server license type. Possible values are `AHUB` (Azure Hybrid Benefit), `DR` (Disaster Recovery), and `PAYG` (Pay-As-You-Go). Changing this forces a new resource to be created.
  /// [sqlVirtualMachineGroupId] The ID of the SQL Virtual Machine Group that the SQL Virtual Machine belongs to.
  /// [storageConfiguration] An `storage_configuration` block as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  /// [virtualMachineId] The ID of the Virtual Machine. Changing this forces a new resource to be created.
  /// [wsfcDomainCredential] A `wsfc_domain_credential` block as defined below
  VirtualMachineState({
    this.assessment,
    this.autoBackup,
    this.autoPatching,
    this.keyVaultCredential,
    this.rServicesEnabled,
    this.sqlConnectivityPort,
    this.sqlConnectivityType,
    this.sqlConnectivityUpdatePassword,
    this.sqlConnectivityUpdateUsername,
    this.sqlInstance,
    this.sqlLicenseType,
    this.sqlVirtualMachineGroupId,
    this.storageConfiguration,
    this.tags,
    this.virtualMachineId,
    this.wsfcDomainCredential,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessment': ?pulumi.Input.mapOptionalInputValue<VirtualMachineAssessment, Map<String, dynamic>>(assessment, (value) => value.toMap()),
      'autoBackup': ?pulumi.Input.mapOptionalInputValue<VirtualMachineAutoBackup, Map<String, dynamic>>(autoBackup, (value) => value.toMap()),
      'autoPatching': ?pulumi.Input.mapOptionalInputValue<VirtualMachineAutoPatching, Map<String, dynamic>>(autoPatching, (value) => value.toMap()),
      'keyVaultCredential': ?pulumi.Input.mapOptionalInputValue<VirtualMachineKeyVaultCredential, Map<String, dynamic>>(keyVaultCredential, (value) => value.toMap()),
      'rServicesEnabled': ?rServicesEnabled,
      'sqlConnectivityPort': ?sqlConnectivityPort,
      'sqlConnectivityType': ?sqlConnectivityType,
      'sqlConnectivityUpdatePassword': ?sqlConnectivityUpdatePassword,
      'sqlConnectivityUpdateUsername': ?sqlConnectivityUpdateUsername,
      'sqlInstance': ?pulumi.Input.mapOptionalInputValue<VirtualMachineSqlInstance, Map<String, dynamic>>(sqlInstance, (value) => value.toMap()),
      'sqlLicenseType': ?sqlLicenseType,
      'sqlVirtualMachineGroupId': ?sqlVirtualMachineGroupId,
      'storageConfiguration': ?pulumi.Input.mapOptionalInputValue<VirtualMachineStorageConfiguration, Map<String, dynamic>>(storageConfiguration, (value) => value.toMap()),
      'tags': ?tags,
      'virtualMachineId': ?virtualMachineId,
      'wsfcDomainCredential': ?pulumi.Input.mapOptionalInputValue<VirtualMachineWsfcDomainCredential, Map<String, dynamic>>(wsfcDomainCredential, (value) => value.toMap()),
    };
  }

  factory VirtualMachineState.fromMap(Map<String, dynamic> map) {
    return VirtualMachineState(
      assessment: map['assessment'] == null ? null : (VirtualMachineAssessment.fromMap((map['assessment'] as Map).cast<String, dynamic>())).input(),
      autoBackup: map['autoBackup'] == null ? null : (VirtualMachineAutoBackup.fromMap((map['autoBackup'] as Map).cast<String, dynamic>())).input(),
      autoPatching: map['autoPatching'] == null ? null : (VirtualMachineAutoPatching.fromMap((map['autoPatching'] as Map).cast<String, dynamic>())).input(),
      keyVaultCredential: map['keyVaultCredential'] == null ? null : (VirtualMachineKeyVaultCredential.fromMap((map['keyVaultCredential'] as Map).cast<String, dynamic>())).input(),
      rServicesEnabled: map['rServicesEnabled'] == null ? null : (map['rServicesEnabled'] as bool).input(),
      sqlConnectivityPort: map['sqlConnectivityPort'] == null ? null : (map['sqlConnectivityPort'] as int).input(),
      sqlConnectivityType: map['sqlConnectivityType'] == null ? null : (map['sqlConnectivityType'] as String).input(),
      sqlConnectivityUpdatePassword: map['sqlConnectivityUpdatePassword'] == null ? null : (map['sqlConnectivityUpdatePassword'] as String).input(),
      sqlConnectivityUpdateUsername: map['sqlConnectivityUpdateUsername'] == null ? null : (map['sqlConnectivityUpdateUsername'] as String).input(),
      sqlInstance: map['sqlInstance'] == null ? null : (VirtualMachineSqlInstance.fromMap((map['sqlInstance'] as Map).cast<String, dynamic>())).input(),
      sqlLicenseType: map['sqlLicenseType'] == null ? null : (map['sqlLicenseType'] as String).input(),
      sqlVirtualMachineGroupId: map['sqlVirtualMachineGroupId'] == null ? null : (map['sqlVirtualMachineGroupId'] as String).input(),
      storageConfiguration: map['storageConfiguration'] == null ? null : (VirtualMachineStorageConfiguration.fromMap((map['storageConfiguration'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      virtualMachineId: map['virtualMachineId'] == null ? null : (map['virtualMachineId'] as String).input(),
      wsfcDomainCredential: map['wsfcDomainCredential'] == null ? null : (VirtualMachineWsfcDomainCredential.fromMap((map['wsfcDomainCredential'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

