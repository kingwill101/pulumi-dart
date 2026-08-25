// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_exadata_infrastructures_cloud_exadata_infrastructure_property_customer_contact.dart';
import 'get_cloud_exadata_infrastructures_cloud_exadata_infrastructure_property_maintenance_window.dart';

class GetCloudExadataInfrastructuresCloudExadataInfrastructureProperty {
  /// The requested number of additional storage servers activated for the
  /// Exadata Infrastructure.
  final pulumi.Input<int> activatedStorageCount;
  /// The requested number of additional storage servers for the Exadata
  /// Infrastructure.
  final pulumi.Input<int> additionalStorageCount;
  /// The available storage can be allocated to the Exadata Infrastructure
  /// resource, in gigabytes (GB).
  final pulumi.Input<int> availableStorageSizeGb;
  /// The number of compute servers for the Exadata Infrastructure.
  final pulumi.Input<int> computeCount;
  /// The number of enabled CPU cores.
  final pulumi.Input<int> cpuCount;
  /// The list of customer contacts.
  final pulumi.Input<List<GetCloudExadataInfrastructuresCloudExadataInfrastructurePropertyCustomerContact>> customerContacts;
  /// Size, in terabytes, of the DATA disk group.
  final pulumi.Input<double> dataStorageSizeTb;
  /// The local node storage allocated in GBs.
  final pulumi.Input<int> dbNodeStorageSizeGb;
  /// The software version of the database servers (dom0) in the Exadata
  /// Infrastructure.
  final pulumi.Input<String> dbServerVersion;
  /// Maintenance window as defined by Oracle.
  /// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/MaintenanceWindow
  final pulumi.Input<List<GetCloudExadataInfrastructuresCloudExadataInfrastructurePropertyMaintenanceWindow>> maintenanceWindows;
  /// The total number of CPU cores available.
  final pulumi.Input<int> maxCpuCount;
  /// The total available DATA disk group size.
  final pulumi.Input<double> maxDataStorageTb;
  /// The total local node storage available in GBs.
  final pulumi.Input<int> maxDbNodeStorageSizeGb;
  /// The total memory available in GBs.
  final pulumi.Input<int> maxMemoryGb;
  /// The memory allocated in GBs.
  final pulumi.Input<int> memorySizeGb;
  /// The monthly software version of the database servers (dom0)
  /// in the Exadata Infrastructure. Example: 20.1.15
  final pulumi.Input<String> monthlyDbServerVersion;
  /// The monthly software version of the storage servers (cells)
  /// in the Exadata Infrastructure. Example: 20.1.15
  final pulumi.Input<String> monthlyStorageServerVersion;
  /// The OCID of the next maintenance run.
  final pulumi.Input<String> nextMaintenanceRunId;
  /// The time when the next maintenance run will occur.
  final pulumi.Input<String> nextMaintenanceRunTime;
  /// The time when the next security maintenance run will occur.
  final pulumi.Input<String> nextSecurityMaintenanceRunTime;
  /// Deep link to the OCI console to view this resource.
  final pulumi.Input<String> ociUrl;
  /// OCID of created infra.
  /// https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm#Oracle
  final pulumi.Input<String> ocid;
  /// The shape of the Exadata Infrastructure. The shape determines the
  /// amount of CPU, storage, and memory resources allocated to the instance.
  final pulumi.Input<String> shape;
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
  final pulumi.Input<String> state;
  /// The number of Cloud Exadata storage servers for the Exadata Infrastructure.
  final pulumi.Input<int> storageCount;
  /// The software version of the storage servers (cells) in the Exadata
  /// Infrastructure.
  final pulumi.Input<String> storageServerVersion;
  /// The total storage allocated to the Exadata Infrastructure
  /// resource, in gigabytes (GB).
  final pulumi.Input<int> totalStorageSizeGb;

  /// Creates a new [GetCloudExadataInfrastructuresCloudExadataInfrastructureProperty].
  /// [activatedStorageCount] The requested number of additional storage servers activated for the
  /// [additionalStorageCount] The requested number of additional storage servers for the Exadata
  /// [availableStorageSizeGb] The available storage can be allocated to the Exadata Infrastructure
  /// [computeCount] The number of compute servers for the Exadata Infrastructure.
  /// [cpuCount] The number of enabled CPU cores.
  /// [customerContacts] The list of customer contacts.
  /// [dataStorageSizeTb] Size, in terabytes, of the DATA disk group.
  /// [dbNodeStorageSizeGb] The local node storage allocated in GBs.
  /// [dbServerVersion] The software version of the database servers (dom0) in the Exadata
  /// [maintenanceWindows] Maintenance window as defined by Oracle.
  /// [maxCpuCount] The total number of CPU cores available.
  /// [maxDataStorageTb] The total available DATA disk group size.
  /// [maxDbNodeStorageSizeGb] The total local node storage available in GBs.
  /// [maxMemoryGb] The total memory available in GBs.
  /// [memorySizeGb] The memory allocated in GBs.
  /// [monthlyDbServerVersion] The monthly software version of the database servers (dom0)
  /// [monthlyStorageServerVersion] The monthly software version of the storage servers (cells)
  /// [nextMaintenanceRunId] The OCID of the next maintenance run.
  /// [nextMaintenanceRunTime] The time when the next maintenance run will occur.
  /// [nextSecurityMaintenanceRunTime] The time when the next security maintenance run will occur.
  /// [ociUrl] Deep link to the OCI console to view this resource.
  /// [ocid] OCID of created infra.
  /// [shape] The shape of the Exadata Infrastructure. The shape determines the
  /// [state] The current lifecycle state of the Exadata Infrastructure.
  /// [storageCount] The number of Cloud Exadata storage servers for the Exadata Infrastructure.
  /// [storageServerVersion] The software version of the storage servers (cells) in the Exadata
  /// [totalStorageSizeGb] The total storage allocated to the Exadata Infrastructure
  const GetCloudExadataInfrastructuresCloudExadataInfrastructureProperty({
    required this.activatedStorageCount,
    required this.additionalStorageCount,
    required this.availableStorageSizeGb,
    required this.computeCount,
    required this.cpuCount,
    required this.customerContacts,
    required this.dataStorageSizeTb,
    required this.dbNodeStorageSizeGb,
    required this.dbServerVersion,
    required this.maintenanceWindows,
    required this.maxCpuCount,
    required this.maxDataStorageTb,
    required this.maxDbNodeStorageSizeGb,
    required this.maxMemoryGb,
    required this.memorySizeGb,
    required this.monthlyDbServerVersion,
    required this.monthlyStorageServerVersion,
    required this.nextMaintenanceRunId,
    required this.nextMaintenanceRunTime,
    required this.nextSecurityMaintenanceRunTime,
    required this.ociUrl,
    required this.ocid,
    required this.shape,
    required this.state,
    required this.storageCount,
    required this.storageServerVersion,
    required this.totalStorageSizeGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activatedStorageCount': activatedStorageCount,
      'additionalStorageCount': additionalStorageCount,
      'availableStorageSizeGb': availableStorageSizeGb,
      'computeCount': computeCount,
      'cpuCount': cpuCount,
      'customerContacts': pulumi.Input.mapInputValue<List<GetCloudExadataInfrastructuresCloudExadataInfrastructurePropertyCustomerContact>, List<Map<String, dynamic>>>(customerContacts, (value) => pulumi.Input.encodeList<GetCloudExadataInfrastructuresCloudExadataInfrastructurePropertyCustomerContact, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataStorageSizeTb': dataStorageSizeTb,
      'dbNodeStorageSizeGb': dbNodeStorageSizeGb,
      'dbServerVersion': dbServerVersion,
      'maintenanceWindows': pulumi.Input.mapInputValue<List<GetCloudExadataInfrastructuresCloudExadataInfrastructurePropertyMaintenanceWindow>, List<Map<String, dynamic>>>(maintenanceWindows, (value) => pulumi.Input.encodeList<GetCloudExadataInfrastructuresCloudExadataInfrastructurePropertyMaintenanceWindow, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxCpuCount': maxCpuCount,
      'maxDataStorageTb': maxDataStorageTb,
      'maxDbNodeStorageSizeGb': maxDbNodeStorageSizeGb,
      'maxMemoryGb': maxMemoryGb,
      'memorySizeGb': memorySizeGb,
      'monthlyDbServerVersion': monthlyDbServerVersion,
      'monthlyStorageServerVersion': monthlyStorageServerVersion,
      'nextMaintenanceRunId': nextMaintenanceRunId,
      'nextMaintenanceRunTime': nextMaintenanceRunTime,
      'nextSecurityMaintenanceRunTime': nextSecurityMaintenanceRunTime,
      'ociUrl': ociUrl,
      'ocid': ocid,
      'shape': shape,
      'state': state,
      'storageCount': storageCount,
      'storageServerVersion': storageServerVersion,
      'totalStorageSizeGb': totalStorageSizeGb,
    };
  }

  factory GetCloudExadataInfrastructuresCloudExadataInfrastructureProperty.fromMap(Map<String, dynamic> map) {
    return GetCloudExadataInfrastructuresCloudExadataInfrastructureProperty(
      activatedStorageCount: pulumi.Input.fromValue((map['activatedStorageCount'] as num).toInt()),
      additionalStorageCount: pulumi.Input.fromValue((map['additionalStorageCount'] as num).toInt()),
      availableStorageSizeGb: pulumi.Input.fromValue((map['availableStorageSizeGb'] as num).toInt()),
      computeCount: pulumi.Input.fromValue((map['computeCount'] as num).toInt()),
      cpuCount: pulumi.Input.fromValue((map['cpuCount'] as num).toInt()),
      customerContacts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCloudExadataInfrastructuresCloudExadataInfrastructurePropertyCustomerContact>(map['customerContacts']!, (value) => GetCloudExadataInfrastructuresCloudExadataInfrastructurePropertyCustomerContact.fromMap((value as Map).cast<String, dynamic>()))),
      dataStorageSizeTb: pulumi.Input.fromValue((map['dataStorageSizeTb'] as num).toDouble()),
      dbNodeStorageSizeGb: pulumi.Input.fromValue((map['dbNodeStorageSizeGb'] as num).toInt()),
      dbServerVersion: pulumi.Input.fromValue(map['dbServerVersion'] as String),
      maintenanceWindows: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCloudExadataInfrastructuresCloudExadataInfrastructurePropertyMaintenanceWindow>(map['maintenanceWindows']!, (value) => GetCloudExadataInfrastructuresCloudExadataInfrastructurePropertyMaintenanceWindow.fromMap((value as Map).cast<String, dynamic>()))),
      maxCpuCount: pulumi.Input.fromValue((map['maxCpuCount'] as num).toInt()),
      maxDataStorageTb: pulumi.Input.fromValue((map['maxDataStorageTb'] as num).toDouble()),
      maxDbNodeStorageSizeGb: pulumi.Input.fromValue((map['maxDbNodeStorageSizeGb'] as num).toInt()),
      maxMemoryGb: pulumi.Input.fromValue((map['maxMemoryGb'] as num).toInt()),
      memorySizeGb: pulumi.Input.fromValue((map['memorySizeGb'] as num).toInt()),
      monthlyDbServerVersion: pulumi.Input.fromValue(map['monthlyDbServerVersion'] as String),
      monthlyStorageServerVersion: pulumi.Input.fromValue(map['monthlyStorageServerVersion'] as String),
      nextMaintenanceRunId: pulumi.Input.fromValue(map['nextMaintenanceRunId'] as String),
      nextMaintenanceRunTime: pulumi.Input.fromValue(map['nextMaintenanceRunTime'] as String),
      nextSecurityMaintenanceRunTime: pulumi.Input.fromValue(map['nextSecurityMaintenanceRunTime'] as String),
      ociUrl: pulumi.Input.fromValue(map['ociUrl'] as String),
      ocid: pulumi.Input.fromValue(map['ocid'] as String),
      shape: pulumi.Input.fromValue(map['shape'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      storageCount: pulumi.Input.fromValue((map['storageCount'] as num).toInt()),
      storageServerVersion: pulumi.Input.fromValue(map['storageServerVersion'] as String),
      totalStorageSizeGb: pulumi.Input.fromValue((map['totalStorageSizeGb'] as num).toInt()),
    );
  }
}
