// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_exadata_infrastructure_defined_file_system_configuration.dart';
import 'get_exadata_infrastructure_estimated_patching_time.dart';
import 'get_exadata_infrastructure_maintenance_window.dart';

/// Result data returned by getExadataInfrastructure.
class GetExadataInfrastructureResult {
  /// The requested number of additional storage servers activated for the Cloud Exadata Infrastructure.
  final int? activatedStorageCount;
  /// The requested number of additional storage servers for the Cloud Exadata Infrastructure.
  final int? additionalStorageCount;
  /// The available storage can be allocated to the Cloud Exadata Infrastructure resource, in gigabytes (GB).
  final int? availableStorageSizeInGbs;
  /// The number of compute servers for the Cloud Exadata Infrastructure.
  final int? computeCount;
  /// The compute model of the Exadata Infrastructure.
  final String? computeModel;
  /// The total number of CPU cores allocated.
  final int? cpuCount;
  /// A `customerContacts` block as defined below.
  final List<String>? customerContacts;
  /// The data storage size in terabytes of the DATA disk group.
  final double? dataStorageSizeInTbs;
  /// The database server model type of the cloud Exadata infrastructure resource.
  final String? databaseServerType;
  /// The local node storage allocated in GBs.
  final int? dbNodeStorageSizeInGbs;
  /// The software version of the database servers (dom0) in the Cloud Exadata Infrastructure.
  final String? dbServerVersion;
  /// A `definedFileSystemConfiguration` block as defined below.
  final List<GetExadataInfrastructureDefinedFileSystemConfiguration>? definedFileSystemConfigurations;
  /// The user-friendly name for the Cloud Exadata Infrastructure resource. The name does not need to be unique.
  final String? displayName;
  /// A `estimatedPatchingTime` block as defined below.
  final List<GetExadataInfrastructureEstimatedPatchingTime>? estimatedPatchingTimes;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the last maintenance run.
  final String? lastMaintenanceRunId;
  /// Additional information about the current lifecycle state.
  final String? lifecycleDetails;
  /// Cloud Exadata Infrastructure lifecycle state.
  final String? lifecycleState;
  /// The Azure Region where the Cloud Exadata Infrastructure exists.
  final String? location;
  /// A `maintenanceWindow` block as defined below.
  final List<GetExadataInfrastructureMaintenanceWindow>? maintenanceWindows;
  /// The total number of CPU cores available.
  final int? maxCpuCount;
  /// The total available DATA disk group size.
  final double? maxDataStorageInTbs;
  /// The total local node storage available in GBs.
  final int? maxDbNodeStorageSizeInGbs;
  /// The total memory available in GBs.
  final int? maxMemoryInGbs;
  /// The memory allocated in GBs.
  final int? memorySizeInGbs;
  /// The monthly software version of the database servers (dom0) in the Cloud Exadata Infrastructure.
  final String? monthlyDbServerVersion;
  /// The monthly software version of the storage servers (cells) in the Cloud Exadata Infrastructure.
  final String? monthlyStorageServerVersion;
  final String? name;
  /// The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the next maintenance run.
  final String? nextMaintenanceRunId;
  /// The URL of the resource in the OCI console.
  final String? ociUrl;
  /// The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the Cloud Exadata Infrastructure.
  final String? ocid;
  final String? resourceGroupName;
  /// The model name of the Cloud Exadata Infrastructure resource.
  final String? shape;
  /// The number of storage servers for the Cloud Exadata Infrastructure.
  final int? storageCount;
  /// The storage server model type of the cloud Exadata infrastructure resource.
  final String? storageServerType;
  /// The software version of the storage servers (cells) in the Cloud Exadata Infrastructure.
  final String? storageServerVersion;
  /// A mapping of tags assigned to the Cloud Exadata Infrastructure.
  final Map<String, String>? tags;
  /// The date and time the Cloud Exadata Infrastructure resource was created.
  final String? timeCreated;
  /// The total storage allocated to the Cloud Exadata Infrastructure resource, in gigabytes (GB).
  final int? totalStorageSizeInGbs;
  /// The Cloud Exadata Infrastructure Azure zones.
  final List<String>? zones;

  /// Creates a new [GetExadataInfrastructureResult].
  /// [activatedStorageCount] The requested number of additional storage servers activated for the Cloud Exadata Infrastructure.
  /// [additionalStorageCount] The requested number of additional storage servers for the Cloud Exadata Infrastructure.
  /// [availableStorageSizeInGbs] The available storage can be allocated to the Cloud Exadata Infrastructure resource, in gigabytes (GB).
  /// [computeCount] The number of compute servers for the Cloud Exadata Infrastructure.
  /// [computeModel] The compute model of the Exadata Infrastructure.
  /// [cpuCount] The total number of CPU cores allocated.
  /// [customerContacts] A `customerContacts` block as defined below.
  /// [dataStorageSizeInTbs] The data storage size in terabytes of the DATA disk group.
  /// [databaseServerType] The database server model type of the cloud Exadata infrastructure resource.
  /// [dbNodeStorageSizeInGbs] The local node storage allocated in GBs.
  /// [dbServerVersion] The software version of the database servers (dom0) in the Cloud Exadata Infrastructure.
  /// [definedFileSystemConfigurations] A `definedFileSystemConfiguration` block as defined below.
  /// [displayName] The user-friendly name for the Cloud Exadata Infrastructure resource. The name does not need to be unique.
  /// [estimatedPatchingTimes] A `estimatedPatchingTime` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastMaintenanceRunId] The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the last maintenance run.
  /// [lifecycleDetails] Additional information about the current lifecycle state.
  /// [lifecycleState] Cloud Exadata Infrastructure lifecycle state.
  /// [location] The Azure Region where the Cloud Exadata Infrastructure exists.
  /// [maintenanceWindows] A `maintenanceWindow` block as defined below.
  /// [maxCpuCount] The total number of CPU cores available.
  /// [maxDataStorageInTbs] The total available DATA disk group size.
  /// [maxDbNodeStorageSizeInGbs] The total local node storage available in GBs.
  /// [maxMemoryInGbs] The total memory available in GBs.
  /// [memorySizeInGbs] The memory allocated in GBs.
  /// [monthlyDbServerVersion] The monthly software version of the database servers (dom0) in the Cloud Exadata Infrastructure.
  /// [monthlyStorageServerVersion] The monthly software version of the storage servers (cells) in the Cloud Exadata Infrastructure.
  /// [name] Optional.
  /// [nextMaintenanceRunId] The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the next maintenance run.
  /// [ociUrl] The URL of the resource in the OCI console.
  /// [ocid] The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the Cloud Exadata Infrastructure.
  /// [resourceGroupName] Optional.
  /// [shape] The model name of the Cloud Exadata Infrastructure resource.
  /// [storageCount] The number of storage servers for the Cloud Exadata Infrastructure.
  /// [storageServerType] The storage server model type of the cloud Exadata infrastructure resource.
  /// [storageServerVersion] The software version of the storage servers (cells) in the Cloud Exadata Infrastructure.
  /// [tags] A mapping of tags assigned to the Cloud Exadata Infrastructure.
  /// [timeCreated] The date and time the Cloud Exadata Infrastructure resource was created.
  /// [totalStorageSizeInGbs] The total storage allocated to the Cloud Exadata Infrastructure resource, in gigabytes (GB).
  /// [zones] The Cloud Exadata Infrastructure Azure zones.
  const GetExadataInfrastructureResult({
    this.activatedStorageCount,
    this.additionalStorageCount,
    this.availableStorageSizeInGbs,
    this.computeCount,
    this.computeModel,
    this.cpuCount,
    this.customerContacts,
    this.dataStorageSizeInTbs,
    this.databaseServerType,
    this.dbNodeStorageSizeInGbs,
    this.dbServerVersion,
    this.definedFileSystemConfigurations,
    this.displayName,
    this.estimatedPatchingTimes,
    this.id,
    this.lastMaintenanceRunId,
    this.lifecycleDetails,
    this.lifecycleState,
    this.location,
    this.maintenanceWindows,
    this.maxCpuCount,
    this.maxDataStorageInTbs,
    this.maxDbNodeStorageSizeInGbs,
    this.maxMemoryInGbs,
    this.memorySizeInGbs,
    this.monthlyDbServerVersion,
    this.monthlyStorageServerVersion,
    this.name,
    this.nextMaintenanceRunId,
    this.ociUrl,
    this.ocid,
    this.resourceGroupName,
    this.shape,
    this.storageCount,
    this.storageServerType,
    this.storageServerVersion,
    this.tags,
    this.timeCreated,
    this.totalStorageSizeInGbs,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activatedStorageCount': ?activatedStorageCount,
      'additionalStorageCount': ?additionalStorageCount,
      'availableStorageSizeInGbs': ?availableStorageSizeInGbs,
      'computeCount': ?computeCount,
      'computeModel': ?computeModel,
      'cpuCount': ?cpuCount,
      'customerContacts': ?customerContacts,
      'dataStorageSizeInTbs': ?dataStorageSizeInTbs,
      'databaseServerType': ?databaseServerType,
      'dbNodeStorageSizeInGbs': ?dbNodeStorageSizeInGbs,
      'dbServerVersion': ?dbServerVersion,
      'definedFileSystemConfigurations': ?(() { final guardedValue = definedFileSystemConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetExadataInfrastructureDefinedFileSystemConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'displayName': ?displayName,
      'estimatedPatchingTimes': ?(() { final guardedValue = estimatedPatchingTimes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetExadataInfrastructureEstimatedPatchingTime, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'lastMaintenanceRunId': ?lastMaintenanceRunId,
      'lifecycleDetails': ?lifecycleDetails,
      'lifecycleState': ?lifecycleState,
      'location': ?location,
      'maintenanceWindows': ?(() { final guardedValue = maintenanceWindows; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetExadataInfrastructureMaintenanceWindow, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'maxCpuCount': ?maxCpuCount,
      'maxDataStorageInTbs': ?maxDataStorageInTbs,
      'maxDbNodeStorageSizeInGbs': ?maxDbNodeStorageSizeInGbs,
      'maxMemoryInGbs': ?maxMemoryInGbs,
      'memorySizeInGbs': ?memorySizeInGbs,
      'monthlyDbServerVersion': ?monthlyDbServerVersion,
      'monthlyStorageServerVersion': ?monthlyStorageServerVersion,
      'name': ?name,
      'nextMaintenanceRunId': ?nextMaintenanceRunId,
      'ociUrl': ?ociUrl,
      'ocid': ?ocid,
      'resourceGroupName': ?resourceGroupName,
      'shape': ?shape,
      'storageCount': ?storageCount,
      'storageServerType': ?storageServerType,
      'storageServerVersion': ?storageServerVersion,
      'tags': ?tags,
      'timeCreated': ?timeCreated,
      'totalStorageSizeInGbs': ?totalStorageSizeInGbs,
      'zones': ?zones,
    };
  }

  factory GetExadataInfrastructureResult.fromMap(Map<String, dynamic> map) {
    return GetExadataInfrastructureResult(
      activatedStorageCount: (() { final guardedValue = map['activatedStorageCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      additionalStorageCount: (() { final guardedValue = map['additionalStorageCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      availableStorageSizeInGbs: (() { final guardedValue = map['availableStorageSizeInGbs']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      computeCount: (() { final guardedValue = map['computeCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      computeModel: (() { final guardedValue = map['computeModel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cpuCount: (() { final guardedValue = map['cpuCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      customerContacts: (() { final guardedValue = map['customerContacts']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      dataStorageSizeInTbs: (() { final guardedValue = map['dataStorageSizeInTbs']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      databaseServerType: (() { final guardedValue = map['databaseServerType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbNodeStorageSizeInGbs: (() { final guardedValue = map['dbNodeStorageSizeInGbs']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      dbServerVersion: (() { final guardedValue = map['dbServerVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      definedFileSystemConfigurations: (() { final guardedValue = map['definedFileSystemConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetExadataInfrastructureDefinedFileSystemConfiguration>(guardedValue, (value) => GetExadataInfrastructureDefinedFileSystemConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      estimatedPatchingTimes: (() { final guardedValue = map['estimatedPatchingTimes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetExadataInfrastructureEstimatedPatchingTime>(guardedValue, (value) => GetExadataInfrastructureEstimatedPatchingTime.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastMaintenanceRunId: (() { final guardedValue = map['lastMaintenanceRunId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lifecycleDetails: (() { final guardedValue = map['lifecycleDetails']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lifecycleState: (() { final guardedValue = map['lifecycleState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maintenanceWindows: (() { final guardedValue = map['maintenanceWindows']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetExadataInfrastructureMaintenanceWindow>(guardedValue, (value) => GetExadataInfrastructureMaintenanceWindow.fromMap((value as Map).cast<String, dynamic>())); })(),
      maxCpuCount: (() { final guardedValue = map['maxCpuCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      maxDataStorageInTbs: (() { final guardedValue = map['maxDataStorageInTbs']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      maxDbNodeStorageSizeInGbs: (() { final guardedValue = map['maxDbNodeStorageSizeInGbs']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      maxMemoryInGbs: (() { final guardedValue = map['maxMemoryInGbs']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      memorySizeInGbs: (() { final guardedValue = map['memorySizeInGbs']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      monthlyDbServerVersion: (() { final guardedValue = map['monthlyDbServerVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      monthlyStorageServerVersion: (() { final guardedValue = map['monthlyStorageServerVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nextMaintenanceRunId: (() { final guardedValue = map['nextMaintenanceRunId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ociUrl: (() { final guardedValue = map['ociUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ocid: (() { final guardedValue = map['ocid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shape: (() { final guardedValue = map['shape']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageCount: (() { final guardedValue = map['storageCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      storageServerType: (() { final guardedValue = map['storageServerType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageServerVersion: (() { final guardedValue = map['storageServerVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      timeCreated: (() { final guardedValue = map['timeCreated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      totalStorageSizeInGbs: (() { final guardedValue = map['totalStorageSizeInGbs']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
