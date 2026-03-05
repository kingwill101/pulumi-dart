// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_exadata_infrastructure_defined_file_system_configuration.dart';
import 'get_exadata_infrastructure_estimated_patching_time.dart';
import 'get_exadata_infrastructure_maintenance_window.dart';

/// Result data returned by getExadataInfrastructure.
class GetExadataInfrastructureResult {
  /// The requested number of additional storage servers activated for the Cloud Exadata Infrastructure.
  final int activatedStorageCount;
  /// The requested number of additional storage servers for the Cloud Exadata Infrastructure.
  final int additionalStorageCount;
  /// The available storage can be allocated to the Cloud Exadata Infrastructure resource, in gigabytes (GB).
  final int availableStorageSizeInGbs;
  /// The number of compute servers for the Cloud Exadata Infrastructure.
  final int computeCount;
  /// The compute model of the Exadata Infrastructure.
  final String computeModel;
  /// The total number of CPU cores allocated.
  final int cpuCount;
  /// A `customer_contacts` block as defined below.
  final List<String> customerContacts;
  /// The data storage size in terabytes of the DATA disk group.
  final double dataStorageSizeInTbs;
  /// The database server model type of the cloud Exadata infrastructure resource.
  final String databaseServerType;
  /// The local node storage allocated in GBs.
  final int dbNodeStorageSizeInGbs;
  /// The software version of the database servers (dom0) in the Cloud Exadata Infrastructure.
  final String dbServerVersion;
  /// A `defined_file_system_configuration` block as defined below.
  final List<GetExadataInfrastructureDefinedFileSystemConfiguration> definedFileSystemConfigurations;
  /// The user-friendly name for the Cloud Exadata Infrastructure resource. The name does not need to be unique.
  final String displayName;
  /// A `estimated_patching_time` block as defined below.
  final List<GetExadataInfrastructureEstimatedPatchingTime> estimatedPatchingTimes;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the last maintenance run.
  final String lastMaintenanceRunId;
  /// Additional information about the current lifecycle state.
  final String lifecycleDetails;
  /// Cloud Exadata Infrastructure lifecycle state.
  final String lifecycleState;
  /// The Azure Region where the Cloud Exadata Infrastructure exists.
  final String location;
  /// A `maintenance_window` block as defined below.
  final List<GetExadataInfrastructureMaintenanceWindow> maintenanceWindows;
  /// The total number of CPU cores available.
  final int maxCpuCount;
  /// The total available DATA disk group size.
  final double maxDataStorageInTbs;
  /// The total local node storage available in GBs.
  final int maxDbNodeStorageSizeInGbs;
  /// The total memory available in GBs.
  final int maxMemoryInGbs;
  /// The memory allocated in GBs.
  final int memorySizeInGbs;
  /// The monthly software version of the database servers (dom0) in the Cloud Exadata Infrastructure.
  final String monthlyDbServerVersion;
  /// The monthly software version of the storage servers (cells) in the Cloud Exadata Infrastructure.
  final String monthlyStorageServerVersion;
  final String name;
  /// The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the next maintenance run.
  final String nextMaintenanceRunId;
  /// The URL of the resource in the OCI console.
  final String ociUrl;
  /// The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the Cloud Exadata Infrastructure.
  final String ocid;
  final String resourceGroupName;
  /// The model name of the Cloud Exadata Infrastructure resource.
  final String shape;
  /// The number of storage servers for the Cloud Exadata Infrastructure.
  final int storageCount;
  /// The storage server model type of the cloud Exadata infrastructure resource.
  final String storageServerType;
  /// The software version of the storage servers (cells) in the Cloud Exadata Infrastructure.
  final String storageServerVersion;
  /// A mapping of tags assigned to the Cloud Exadata Infrastructure.
  final Map<String, String> tags;
  /// The date and time the Cloud Exadata Infrastructure resource was created.
  final String timeCreated;
  /// The total storage allocated to the Cloud Exadata Infrastructure resource, in gigabytes (GB).
  final int totalStorageSizeInGbs;
  /// The Cloud Exadata Infrastructure Azure zones.
  final List<String> zones;

  /// Creates a new [GetExadataInfrastructureResult].
  /// [activatedStorageCount] The requested number of additional storage servers activated for the Cloud Exadata Infrastructure.
  /// [additionalStorageCount] The requested number of additional storage servers for the Cloud Exadata Infrastructure.
  /// [availableStorageSizeInGbs] The available storage can be allocated to the Cloud Exadata Infrastructure resource, in gigabytes (GB).
  /// [computeCount] The number of compute servers for the Cloud Exadata Infrastructure.
  /// [computeModel] The compute model of the Exadata Infrastructure.
  /// [cpuCount] The total number of CPU cores allocated.
  /// [customerContacts] A `customer_contacts` block as defined below.
  /// [dataStorageSizeInTbs] The data storage size in terabytes of the DATA disk group.
  /// [databaseServerType] The database server model type of the cloud Exadata infrastructure resource.
  /// [dbNodeStorageSizeInGbs] The local node storage allocated in GBs.
  /// [dbServerVersion] The software version of the database servers (dom0) in the Cloud Exadata Infrastructure.
  /// [definedFileSystemConfigurations] A `defined_file_system_configuration` block as defined below.
  /// [displayName] The user-friendly name for the Cloud Exadata Infrastructure resource. The name does not need to be unique.
  /// [estimatedPatchingTimes] A `estimated_patching_time` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastMaintenanceRunId] The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the last maintenance run.
  /// [lifecycleDetails] Additional information about the current lifecycle state.
  /// [lifecycleState] Cloud Exadata Infrastructure lifecycle state.
  /// [location] The Azure Region where the Cloud Exadata Infrastructure exists.
  /// [maintenanceWindows] A `maintenance_window` block as defined below.
  /// [maxCpuCount] The total number of CPU cores available.
  /// [maxDataStorageInTbs] The total available DATA disk group size.
  /// [maxDbNodeStorageSizeInGbs] The total local node storage available in GBs.
  /// [maxMemoryInGbs] The total memory available in GBs.
  /// [memorySizeInGbs] The memory allocated in GBs.
  /// [monthlyDbServerVersion] The monthly software version of the database servers (dom0) in the Cloud Exadata Infrastructure.
  /// [monthlyStorageServerVersion] The monthly software version of the storage servers (cells) in the Cloud Exadata Infrastructure.
  /// [name] Required.
  /// [nextMaintenanceRunId] The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the next maintenance run.
  /// [ociUrl] The URL of the resource in the OCI console.
  /// [ocid] The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the Cloud Exadata Infrastructure.
  /// [resourceGroupName] Required.
  /// [shape] The model name of the Cloud Exadata Infrastructure resource.
  /// [storageCount] The number of storage servers for the Cloud Exadata Infrastructure.
  /// [storageServerType] The storage server model type of the cloud Exadata infrastructure resource.
  /// [storageServerVersion] The software version of the storage servers (cells) in the Cloud Exadata Infrastructure.
  /// [tags] A mapping of tags assigned to the Cloud Exadata Infrastructure.
  /// [timeCreated] The date and time the Cloud Exadata Infrastructure resource was created.
  /// [totalStorageSizeInGbs] The total storage allocated to the Cloud Exadata Infrastructure resource, in gigabytes (GB).
  /// [zones] The Cloud Exadata Infrastructure Azure zones.
  GetExadataInfrastructureResult({
    required this.activatedStorageCount,
    required this.additionalStorageCount,
    required this.availableStorageSizeInGbs,
    required this.computeCount,
    required this.computeModel,
    required this.cpuCount,
    required this.customerContacts,
    required this.dataStorageSizeInTbs,
    required this.databaseServerType,
    required this.dbNodeStorageSizeInGbs,
    required this.dbServerVersion,
    required this.definedFileSystemConfigurations,
    required this.displayName,
    required this.estimatedPatchingTimes,
    required this.id,
    required this.lastMaintenanceRunId,
    required this.lifecycleDetails,
    required this.lifecycleState,
    required this.location,
    required this.maintenanceWindows,
    required this.maxCpuCount,
    required this.maxDataStorageInTbs,
    required this.maxDbNodeStorageSizeInGbs,
    required this.maxMemoryInGbs,
    required this.memorySizeInGbs,
    required this.monthlyDbServerVersion,
    required this.monthlyStorageServerVersion,
    required this.name,
    required this.nextMaintenanceRunId,
    required this.ociUrl,
    required this.ocid,
    required this.resourceGroupName,
    required this.shape,
    required this.storageCount,
    required this.storageServerType,
    required this.storageServerVersion,
    required this.tags,
    required this.timeCreated,
    required this.totalStorageSizeInGbs,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activatedStorageCount': activatedStorageCount,
      'additionalStorageCount': additionalStorageCount,
      'availableStorageSizeInGbs': availableStorageSizeInGbs,
      'computeCount': computeCount,
      'computeModel': computeModel,
      'cpuCount': cpuCount,
      'customerContacts': customerContacts,
      'dataStorageSizeInTbs': dataStorageSizeInTbs,
      'databaseServerType': databaseServerType,
      'dbNodeStorageSizeInGbs': dbNodeStorageSizeInGbs,
      'dbServerVersion': dbServerVersion,
      'definedFileSystemConfigurations': pulumi.Input.encodeList<GetExadataInfrastructureDefinedFileSystemConfiguration, Map<String, dynamic>>(definedFileSystemConfigurations, (value) => value.toMap()),
      'displayName': displayName,
      'estimatedPatchingTimes': pulumi.Input.encodeList<GetExadataInfrastructureEstimatedPatchingTime, Map<String, dynamic>>(estimatedPatchingTimes, (value) => value.toMap()),
      'id': id,
      'lastMaintenanceRunId': lastMaintenanceRunId,
      'lifecycleDetails': lifecycleDetails,
      'lifecycleState': lifecycleState,
      'location': location,
      'maintenanceWindows': pulumi.Input.encodeList<GetExadataInfrastructureMaintenanceWindow, Map<String, dynamic>>(maintenanceWindows, (value) => value.toMap()),
      'maxCpuCount': maxCpuCount,
      'maxDataStorageInTbs': maxDataStorageInTbs,
      'maxDbNodeStorageSizeInGbs': maxDbNodeStorageSizeInGbs,
      'maxMemoryInGbs': maxMemoryInGbs,
      'memorySizeInGbs': memorySizeInGbs,
      'monthlyDbServerVersion': monthlyDbServerVersion,
      'monthlyStorageServerVersion': monthlyStorageServerVersion,
      'name': name,
      'nextMaintenanceRunId': nextMaintenanceRunId,
      'ociUrl': ociUrl,
      'ocid': ocid,
      'resourceGroupName': resourceGroupName,
      'shape': shape,
      'storageCount': storageCount,
      'storageServerType': storageServerType,
      'storageServerVersion': storageServerVersion,
      'tags': tags,
      'timeCreated': timeCreated,
      'totalStorageSizeInGbs': totalStorageSizeInGbs,
      'zones': zones,
    };
  }

  factory GetExadataInfrastructureResult.fromMap(Map<String, dynamic> map) {
    return GetExadataInfrastructureResult(
      activatedStorageCount: map['activatedStorageCount'] as int,
      additionalStorageCount: map['additionalStorageCount'] as int,
      availableStorageSizeInGbs: map['availableStorageSizeInGbs'] as int,
      computeCount: map['computeCount'] as int,
      computeModel: map['computeModel'] as String,
      cpuCount: map['cpuCount'] as int,
      customerContacts: (map['customerContacts'] as List).cast<String>(),
      dataStorageSizeInTbs: map['dataStorageSizeInTbs'] as double,
      databaseServerType: map['databaseServerType'] as String,
      dbNodeStorageSizeInGbs: map['dbNodeStorageSizeInGbs'] as int,
      dbServerVersion: map['dbServerVersion'] as String,
      definedFileSystemConfigurations: pulumi.Input.decodeList<GetExadataInfrastructureDefinedFileSystemConfiguration>(map['definedFileSystemConfigurations']!, (value) => GetExadataInfrastructureDefinedFileSystemConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      displayName: map['displayName'] as String,
      estimatedPatchingTimes: pulumi.Input.decodeList<GetExadataInfrastructureEstimatedPatchingTime>(map['estimatedPatchingTimes']!, (value) => GetExadataInfrastructureEstimatedPatchingTime.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      lastMaintenanceRunId: map['lastMaintenanceRunId'] as String,
      lifecycleDetails: map['lifecycleDetails'] as String,
      lifecycleState: map['lifecycleState'] as String,
      location: map['location'] as String,
      maintenanceWindows: pulumi.Input.decodeList<GetExadataInfrastructureMaintenanceWindow>(map['maintenanceWindows']!, (value) => GetExadataInfrastructureMaintenanceWindow.fromMap((value as Map).cast<String, dynamic>())),
      maxCpuCount: map['maxCpuCount'] as int,
      maxDataStorageInTbs: map['maxDataStorageInTbs'] as double,
      maxDbNodeStorageSizeInGbs: map['maxDbNodeStorageSizeInGbs'] as int,
      maxMemoryInGbs: map['maxMemoryInGbs'] as int,
      memorySizeInGbs: map['memorySizeInGbs'] as int,
      monthlyDbServerVersion: map['monthlyDbServerVersion'] as String,
      monthlyStorageServerVersion: map['monthlyStorageServerVersion'] as String,
      name: map['name'] as String,
      nextMaintenanceRunId: map['nextMaintenanceRunId'] as String,
      ociUrl: map['ociUrl'] as String,
      ocid: map['ocid'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      shape: map['shape'] as String,
      storageCount: map['storageCount'] as int,
      storageServerType: map['storageServerType'] as String,
      storageServerVersion: map['storageServerVersion'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      timeCreated: map['timeCreated'] as String,
      totalStorageSizeInGbs: map['totalStorageSizeInGbs'] as int,
      zones: (map['zones'] as List).cast<String>(),
    );
  }
}

