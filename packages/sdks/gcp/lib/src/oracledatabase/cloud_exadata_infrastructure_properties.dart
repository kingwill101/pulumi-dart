// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_exadata_infrastructure_properties_customer_contact.dart';
import 'cloud_exadata_infrastructure_properties_maintenance_window.dart';

class CloudExadataInfrastructureProperties {
  /// (Output)
  /// The requested number of additional storage servers activated for the
  /// Exadata Infrastructure.
  final pulumi.Input<int>? activatedStorageCount;
  /// (Output)
  /// The requested number of additional storage servers for the Exadata
  /// Infrastructure.
  final pulumi.Input<int>? additionalStorageCount;
  /// (Output)
  /// The available storage can be allocated to the Exadata Infrastructure
  /// resource, in gigabytes (GB).
  final pulumi.Input<int>? availableStorageSizeGb;
  /// The number of compute servers for the Exadata Infrastructure.
  final pulumi.Input<int>? computeCount;
  /// (Output)
  /// The number of enabled CPU cores.
  final pulumi.Input<int>? cpuCount;
  /// The list of customer contacts.
  /// Structure is documented below.
  final pulumi.Input<List<CloudExadataInfrastructurePropertiesCustomerContact>>? customerContacts;
  /// (Output)
  /// Size, in terabytes, of the DATA disk group.
  final pulumi.Input<double>? dataStorageSizeTb;
  /// (Output)
  /// The local node storage allocated in GBs.
  final pulumi.Input<int>? dbNodeStorageSizeGb;
  /// (Output)
  /// The software version of the database servers (dom0) in the Exadata
  /// Infrastructure.
  final pulumi.Input<String>? dbServerVersion;
  /// Maintenance window as defined by Oracle.
  /// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/MaintenanceWindow
  /// Structure is documented below.
  final pulumi.Input<CloudExadataInfrastructurePropertiesMaintenanceWindow>? maintenanceWindow;
  /// (Output)
  /// The total number of CPU cores available.
  final pulumi.Input<int>? maxCpuCount;
  /// (Output)
  /// The total available DATA disk group size.
  final pulumi.Input<double>? maxDataStorageTb;
  /// (Output)
  /// The total local node storage available in GBs.
  final pulumi.Input<int>? maxDbNodeStorageSizeGb;
  /// (Output)
  /// The total memory available in GBs.
  final pulumi.Input<int>? maxMemoryGb;
  /// (Output)
  /// The memory allocated in GBs.
  final pulumi.Input<int>? memorySizeGb;
  /// (Output)
  /// The monthly software version of the database servers (dom0)
  /// in the Exadata Infrastructure. Example: 20.1.15
  final pulumi.Input<String>? monthlyDbServerVersion;
  /// (Output)
  /// The monthly software version of the storage servers (cells)
  /// in the Exadata Infrastructure. Example: 20.1.15
  final pulumi.Input<String>? monthlyStorageServerVersion;
  /// (Output)
  /// The OCID of the next maintenance run.
  final pulumi.Input<String>? nextMaintenanceRunId;
  /// (Output)
  /// The time when the next maintenance run will occur.
  final pulumi.Input<String>? nextMaintenanceRunTime;
  /// (Output)
  /// The time when the next security maintenance run will occur.
  final pulumi.Input<String>? nextSecurityMaintenanceRunTime;
  /// (Output)
  /// Deep link to the OCI console to view this resource.
  final pulumi.Input<String>? ociUrl;
  /// (Output)
  /// OCID of created infra.
  /// https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm#Oracle
  final pulumi.Input<String>? ocid;
  /// The shape of the Exadata Infrastructure. The shape determines the
  /// amount of CPU, storage, and memory resources allocated to the instance.
  final pulumi.Input<String> shape;
  /// (Output)
  /// The current lifecycle state of the Exadata Infrastructure.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// PROVISIONING
  /// AVAILABLE
  /// UPDATING
  /// TERMINATING
  /// TERMINATED
  /// FAILED
  /// MAINTENANCE_IN_PROGRESS
  final pulumi.Input<String>? state;
  /// The number of Cloud Exadata storage servers for the Exadata Infrastructure.
  final pulumi.Input<int>? storageCount;
  /// (Output)
  /// The software version of the storage servers (cells) in the Exadata
  /// Infrastructure.
  final pulumi.Input<String>? storageServerVersion;
  /// The total storage allocated to the Exadata Infrastructure
  /// resource, in gigabytes (GB).
  final pulumi.Input<int>? totalStorageSizeGb;

  /// Creates a new [CloudExadataInfrastructureProperties].
  /// [activatedStorageCount] (Output)
  /// [additionalStorageCount] (Output)
  /// [availableStorageSizeGb] (Output)
  /// [computeCount] The number of compute servers for the Exadata Infrastructure.
  /// [cpuCount] (Output)
  /// [customerContacts] The list of customer contacts.
  /// [dataStorageSizeTb] (Output)
  /// [dbNodeStorageSizeGb] (Output)
  /// [dbServerVersion] (Output)
  /// [maintenanceWindow] Maintenance window as defined by Oracle.
  /// [maxCpuCount] (Output)
  /// [maxDataStorageTb] (Output)
  /// [maxDbNodeStorageSizeGb] (Output)
  /// [maxMemoryGb] (Output)
  /// [memorySizeGb] (Output)
  /// [monthlyDbServerVersion] (Output)
  /// [monthlyStorageServerVersion] (Output)
  /// [nextMaintenanceRunId] (Output)
  /// [nextMaintenanceRunTime] (Output)
  /// [nextSecurityMaintenanceRunTime] (Output)
  /// [ociUrl] (Output)
  /// [ocid] (Output)
  /// [shape] The shape of the Exadata Infrastructure. The shape determines the
  /// [state] (Output)
  /// [storageCount] The number of Cloud Exadata storage servers for the Exadata Infrastructure.
  /// [storageServerVersion] (Output)
  /// [totalStorageSizeGb] The total storage allocated to the Exadata Infrastructure
  CloudExadataInfrastructureProperties({
    this.activatedStorageCount,
    this.additionalStorageCount,
    this.availableStorageSizeGb,
    this.computeCount,
    this.cpuCount,
    this.customerContacts,
    this.dataStorageSizeTb,
    this.dbNodeStorageSizeGb,
    this.dbServerVersion,
    this.maintenanceWindow,
    this.maxCpuCount,
    this.maxDataStorageTb,
    this.maxDbNodeStorageSizeGb,
    this.maxMemoryGb,
    this.memorySizeGb,
    this.monthlyDbServerVersion,
    this.monthlyStorageServerVersion,
    this.nextMaintenanceRunId,
    this.nextMaintenanceRunTime,
    this.nextSecurityMaintenanceRunTime,
    this.ociUrl,
    this.ocid,
    required this.shape,
    this.state,
    this.storageCount,
    this.storageServerVersion,
    this.totalStorageSizeGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activatedStorageCount': ?activatedStorageCount,
      'additionalStorageCount': ?additionalStorageCount,
      'availableStorageSizeGb': ?availableStorageSizeGb,
      'computeCount': ?computeCount,
      'cpuCount': ?cpuCount,
      'customerContacts': ?pulumi.Input.mapOptionalInputValue<List<CloudExadataInfrastructurePropertiesCustomerContact>, List<Map<String, dynamic>>>(customerContacts, (value) => pulumi.Input.encodeList<CloudExadataInfrastructurePropertiesCustomerContact, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataStorageSizeTb': ?dataStorageSizeTb,
      'dbNodeStorageSizeGb': ?dbNodeStorageSizeGb,
      'dbServerVersion': ?dbServerVersion,
      'maintenanceWindow': ?pulumi.Input.mapOptionalInputValue<CloudExadataInfrastructurePropertiesMaintenanceWindow, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
      'maxCpuCount': ?maxCpuCount,
      'maxDataStorageTb': ?maxDataStorageTb,
      'maxDbNodeStorageSizeGb': ?maxDbNodeStorageSizeGb,
      'maxMemoryGb': ?maxMemoryGb,
      'memorySizeGb': ?memorySizeGb,
      'monthlyDbServerVersion': ?monthlyDbServerVersion,
      'monthlyStorageServerVersion': ?monthlyStorageServerVersion,
      'nextMaintenanceRunId': ?nextMaintenanceRunId,
      'nextMaintenanceRunTime': ?nextMaintenanceRunTime,
      'nextSecurityMaintenanceRunTime': ?nextSecurityMaintenanceRunTime,
      'ociUrl': ?ociUrl,
      'ocid': ?ocid,
      'shape': shape,
      'state': ?state,
      'storageCount': ?storageCount,
      'storageServerVersion': ?storageServerVersion,
      'totalStorageSizeGb': ?totalStorageSizeGb,
    };
  }

  factory CloudExadataInfrastructureProperties.fromMap(Map<String, dynamic> map) {
    return CloudExadataInfrastructureProperties(
      activatedStorageCount: (() { final guardedValue = map['activatedStorageCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      additionalStorageCount: (() { final guardedValue = map['additionalStorageCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      availableStorageSizeGb: (() { final guardedValue = map['availableStorageSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      computeCount: (() { final guardedValue = map['computeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cpuCount: (() { final guardedValue = map['cpuCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      customerContacts: (() { final guardedValue = map['customerContacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CloudExadataInfrastructurePropertiesCustomerContact>(guardedValue, (value) => CloudExadataInfrastructurePropertiesCustomerContact.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dataStorageSizeTb: (() { final guardedValue = map['dataStorageSizeTb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      dbNodeStorageSizeGb: (() { final guardedValue = map['dbNodeStorageSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dbServerVersion: (() { final guardedValue = map['dbServerVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceWindow: (() { final guardedValue = map['maintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudExadataInfrastructurePropertiesMaintenanceWindow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxCpuCount: (() { final guardedValue = map['maxCpuCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxDataStorageTb: (() { final guardedValue = map['maxDataStorageTb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      maxDbNodeStorageSizeGb: (() { final guardedValue = map['maxDbNodeStorageSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxMemoryGb: (() { final guardedValue = map['maxMemoryGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      memorySizeGb: (() { final guardedValue = map['memorySizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      monthlyDbServerVersion: (() { final guardedValue = map['monthlyDbServerVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monthlyStorageServerVersion: (() { final guardedValue = map['monthlyStorageServerVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextMaintenanceRunId: (() { final guardedValue = map['nextMaintenanceRunId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextMaintenanceRunTime: (() { final guardedValue = map['nextMaintenanceRunTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextSecurityMaintenanceRunTime: (() { final guardedValue = map['nextSecurityMaintenanceRunTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ociUrl: (() { final guardedValue = map['ociUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ocid: (() { final guardedValue = map['ocid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shape: pulumi.Input.fromValue(map['shape'] as String),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageCount: (() { final guardedValue = map['storageCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      storageServerVersion: (() { final guardedValue = map['storageServerVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      totalStorageSizeGb: (() { final guardedValue = map['totalStorageSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

