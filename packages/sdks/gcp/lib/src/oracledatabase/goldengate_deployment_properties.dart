// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'goldengate_deployment_properties_backup_schedule.dart';
import 'goldengate_deployment_properties_deployment_diagnostic_data.dart';
import 'goldengate_deployment_properties_ingress_ip.dart';
import 'goldengate_deployment_properties_lock.dart';
import 'goldengate_deployment_properties_maintenance_config.dart';
import 'goldengate_deployment_properties_maintenance_window.dart';
import 'goldengate_deployment_properties_ogg_data.dart';
import 'goldengate_deployment_properties_placement.dart';

class GoldengateDeploymentProperties {
  /// The backup schedule of the GoldengateDeployment.
  /// Structure is documented below.
  final pulumi.Input<GoldengateDeploymentPropertiesBackupSchedule>? backupSchedule;
  /// (Output)
  /// The category of the GoldengateDeployment.
  /// Possible values:
  /// DATA_REPLICATION
  /// DATA_TRANSFORMS
  final pulumi.Input<String>? category;
  /// The Minimum number of OCPUs to be made available for this Deployment.
  final pulumi.Input<int>? cpuCoreCount;
  /// (Output)
  /// The deployment backup id of the GoldengateDeployment.
  final pulumi.Input<String>? deploymentBackupId;
  /// The deployment diagnostic data.
  /// Structure is documented below.
  final pulumi.Input<GoldengateDeploymentPropertiesDeploymentDiagnosticData>? deploymentDiagnosticData;
  /// (Output)
  /// The deployment role of the GoldengateDeployment.
  /// Possible values:
  /// PRIMARY
  /// STANDBY
  final pulumi.Input<String>? deploymentRole;
  /// A valid Goldengate Deployment type. For a list of supported types, use
  /// the `ListGoldengateDeploymentTypes` operation.
  final pulumi.Input<String> deploymentType;
  /// (Output)
  /// The deployment url of the GoldengateDeployment.
  final pulumi.Input<String>? deploymentUrl;
  /// The description of the GoldengateDeployment.
  final pulumi.Input<String>? description;
  /// The environment type of the GoldengateDeployment.
  final pulumi.Input<String>? environmentType;
  /// (Output)
  /// The Fully Qualified Domain Name of the GoldengateDeployment.
  final pulumi.Input<String>? fqdn;
  /// (Output)
  /// Whether the GoldengateDeployment is healthy.
  final pulumi.Input<bool>? healthy;
  /// (Output)
  /// The ingress ips of the GoldengateDeployment.
  /// Structure is documented below.
  final pulumi.Input<List<GoldengateDeploymentPropertiesIngressIp>>? ingressIps;
  /// Indicates if auto scaling is enabled for the Deployment's CPU core count.
  final pulumi.Input<bool>? isAutoScalingEnabled;
  /// (Output)
  /// Whether the GoldengateDeployment is of the latest version.
  final pulumi.Input<bool>? isLatestVersion;
  /// (Output)
  /// Whether the GoldengateDeployment is public.
  final pulumi.Input<bool>? isPublic;
  /// (Output)
  /// Whether storage utilization limit is exceeded of the GoldengateDeployment.
  final pulumi.Input<bool>? isStorageUtilizationLimitExceeded;
  /// (Output)
  /// The time last backup scheduled of the GoldengateDeployment.
  final pulumi.Input<String>? lastBackupScheduleTime;
  /// The Oracle license model that applies to a Deployment.
  /// Possible values:
  /// LICENSE_INCLUDED
  /// BRING_YOUR_OWN_LICENSE
  final pulumi.Input<String>? licenseModel;
  /// (Output)
  /// The lifecycle details of the GoldengateDeployment.
  final pulumi.Input<String>? lifecycleDetails;
  /// (Output)
  /// State of the GoldengateDeployment.
  /// Possible values:
  /// CREATING
  /// UPDATING
  /// ACTIVE
  /// INACTIVE
  /// DELETING
  /// DELETED
  /// FAILED
  /// NEEDS_ATTENTION
  /// IN_PROGRESS
  /// CANCELLING
  /// CANCELLED
  /// SUCCEEDED
  /// WAITING
  final pulumi.Input<String>? lifecycleState;
  /// (Output)
  /// The lifecycle sub-state of the GoldengateDeployment.
  /// Possible values:
  /// RECOVERING
  /// STARTING
  /// STOPPING
  /// MOVING
  /// UPGRADING
  /// RESTORING
  /// BACKING_UP
  /// ROLLING_BACK
  final pulumi.Input<String>? lifecycleSubState;
  /// (Output)
  /// The load balancer id of the GoldengateDeployment.
  final pulumi.Input<String>? loadBalancerId;
  /// (Output)
  /// The load balancer subnet id of the GoldengateDeployment.
  final pulumi.Input<String>? loadBalancerSubnetId;
  /// (Output)
  /// The locks of the GoldengateDeployment.
  /// Structure is documented below.
  final pulumi.Input<List<GoldengateDeploymentPropertiesLock>>? locks;
  /// The maintenance configuration of the GoldengateDeployment.
  /// Structure is documented below.
  final pulumi.Input<GoldengateDeploymentPropertiesMaintenanceConfig>? maintenanceConfig;
  /// The maintenance window of the GoldengateDeployment.
  /// Structure is documented below.
  final pulumi.Input<GoldengateDeploymentPropertiesMaintenanceWindow>? maintenanceWindow;
  /// (Output)
  /// The time next backup scheduled of the GoldengateDeployment.
  final pulumi.Input<String>? nextBackupScheduleTime;
  /// (Output)
  /// The next maintenance action type of the GoldengateDeployment.
  /// Possible values:
  /// UPGRADE
  final pulumi.Input<String>? nextMaintenanceActionType;
  /// (Output)
  /// The next maintenance description of the GoldengateDeployment.
  final pulumi.Input<String>? nextMaintenanceDescription;
  /// (Output)
  /// The time of next maintenance of the GoldengateDeployment.
  final pulumi.Input<String>? nextMaintenanceTime;
  /// (Output)
  /// The nsg ids of the GoldengateDeployment.
  final pulumi.Input<List<String>>? nsgIds;
  /// (Output)
  /// OCID of the GoldengateDeployment.
  final pulumi.Input<String>? ocid;
  /// The Ogg data of the GoldengateDeployment.
  /// Structure is documented below.
  final pulumi.Input<GoldengateDeploymentPropertiesOggData> oggData;
  /// (Output)
  /// The time ogg version supported until of the GoldengateDeployment.
  final pulumi.Input<String>? oggVersionSupportEndTime;
  /// (Output)
  /// The placements of the GoldengateDeployment.
  /// Structure is documented below.
  final pulumi.Input<List<GoldengateDeploymentPropertiesPlacement>>? placements;
  /// (Output)
  /// The private ip address of the GoldengateDeployment.
  final pulumi.Input<String>? privateIpAddress;
  /// (Output)
  /// The public ip address of the GoldengateDeployment.
  final pulumi.Input<String>? publicIpAddress;
  /// (Output)
  /// The time when the role of the GoldengateDeployment was changed.
  final pulumi.Input<String>? roleChangeTime;
  /// (Output)
  /// The storage utilization in bytes of the GoldengateDeployment.
  final pulumi.Input<String>? storageUtilizationBytes;
  /// (Output)
  /// The time the GoldengateDeployment was updated.
  final pulumi.Input<String>? updateTime;
  /// (Output)
  /// The time upgrade required of the GoldengateDeployment.
  final pulumi.Input<String>? upgradeRequiredTime;

  /// Creates a new [GoldengateDeploymentProperties].
  /// [backupSchedule] The backup schedule of the GoldengateDeployment.
  /// [category] (Output)
  /// [cpuCoreCount] The Minimum number of OCPUs to be made available for this Deployment.
  /// [deploymentBackupId] (Output)
  /// [deploymentDiagnosticData] The deployment diagnostic data.
  /// [deploymentRole] (Output)
  /// [deploymentType] A valid Goldengate Deployment type. For a list of supported types, use
  /// [deploymentUrl] (Output)
  /// [description] The description of the GoldengateDeployment.
  /// [environmentType] The environment type of the GoldengateDeployment.
  /// [fqdn] (Output)
  /// [healthy] (Output)
  /// [ingressIps] (Output)
  /// [isAutoScalingEnabled] Indicates if auto scaling is enabled for the Deployment's CPU core count.
  /// [isLatestVersion] (Output)
  /// [isPublic] (Output)
  /// [isStorageUtilizationLimitExceeded] (Output)
  /// [lastBackupScheduleTime] (Output)
  /// [licenseModel] The Oracle license model that applies to a Deployment.
  /// [lifecycleDetails] (Output)
  /// [lifecycleState] (Output)
  /// [lifecycleSubState] (Output)
  /// [loadBalancerId] (Output)
  /// [loadBalancerSubnetId] (Output)
  /// [locks] (Output)
  /// [maintenanceConfig] The maintenance configuration of the GoldengateDeployment.
  /// [maintenanceWindow] The maintenance window of the GoldengateDeployment.
  /// [nextBackupScheduleTime] (Output)
  /// [nextMaintenanceActionType] (Output)
  /// [nextMaintenanceDescription] (Output)
  /// [nextMaintenanceTime] (Output)
  /// [nsgIds] (Output)
  /// [ocid] (Output)
  /// [oggData] The Ogg data of the GoldengateDeployment.
  /// [oggVersionSupportEndTime] (Output)
  /// [placements] (Output)
  /// [privateIpAddress] (Output)
  /// [publicIpAddress] (Output)
  /// [roleChangeTime] (Output)
  /// [storageUtilizationBytes] (Output)
  /// [updateTime] (Output)
  /// [upgradeRequiredTime] (Output)
  const GoldengateDeploymentProperties({
    this.backupSchedule,
    this.category,
    this.cpuCoreCount,
    this.deploymentBackupId,
    this.deploymentDiagnosticData,
    this.deploymentRole,
    required this.deploymentType,
    this.deploymentUrl,
    this.description,
    this.environmentType,
    this.fqdn,
    this.healthy,
    this.ingressIps,
    this.isAutoScalingEnabled,
    this.isLatestVersion,
    this.isPublic,
    this.isStorageUtilizationLimitExceeded,
    this.lastBackupScheduleTime,
    this.licenseModel,
    this.lifecycleDetails,
    this.lifecycleState,
    this.lifecycleSubState,
    this.loadBalancerId,
    this.loadBalancerSubnetId,
    this.locks,
    this.maintenanceConfig,
    this.maintenanceWindow,
    this.nextBackupScheduleTime,
    this.nextMaintenanceActionType,
    this.nextMaintenanceDescription,
    this.nextMaintenanceTime,
    this.nsgIds,
    this.ocid,
    required this.oggData,
    this.oggVersionSupportEndTime,
    this.placements,
    this.privateIpAddress,
    this.publicIpAddress,
    this.roleChangeTime,
    this.storageUtilizationBytes,
    this.updateTime,
    this.upgradeRequiredTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupSchedule': ?pulumi.Input.mapOptionalInputValue<GoldengateDeploymentPropertiesBackupSchedule, Map<String, dynamic>>(backupSchedule, (value) => value.toMap()),
      'category': ?category,
      'cpuCoreCount': ?cpuCoreCount,
      'deploymentBackupId': ?deploymentBackupId,
      'deploymentDiagnosticData': ?pulumi.Input.mapOptionalInputValue<GoldengateDeploymentPropertiesDeploymentDiagnosticData, Map<String, dynamic>>(deploymentDiagnosticData, (value) => value.toMap()),
      'deploymentRole': ?deploymentRole,
      'deploymentType': deploymentType,
      'deploymentUrl': ?deploymentUrl,
      'description': ?description,
      'environmentType': ?environmentType,
      'fqdn': ?fqdn,
      'healthy': ?healthy,
      'ingressIps': ?pulumi.Input.mapOptionalInputValue<List<GoldengateDeploymentPropertiesIngressIp>, List<Map<String, dynamic>>>(ingressIps, (value) => pulumi.Input.encodeList<GoldengateDeploymentPropertiesIngressIp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isAutoScalingEnabled': ?isAutoScalingEnabled,
      'isLatestVersion': ?isLatestVersion,
      'isPublic': ?isPublic,
      'isStorageUtilizationLimitExceeded': ?isStorageUtilizationLimitExceeded,
      'lastBackupScheduleTime': ?lastBackupScheduleTime,
      'licenseModel': ?licenseModel,
      'lifecycleDetails': ?lifecycleDetails,
      'lifecycleState': ?lifecycleState,
      'lifecycleSubState': ?lifecycleSubState,
      'loadBalancerId': ?loadBalancerId,
      'loadBalancerSubnetId': ?loadBalancerSubnetId,
      'locks': ?pulumi.Input.mapOptionalInputValue<List<GoldengateDeploymentPropertiesLock>, List<Map<String, dynamic>>>(locks, (value) => pulumi.Input.encodeList<GoldengateDeploymentPropertiesLock, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maintenanceConfig': ?pulumi.Input.mapOptionalInputValue<GoldengateDeploymentPropertiesMaintenanceConfig, Map<String, dynamic>>(maintenanceConfig, (value) => value.toMap()),
      'maintenanceWindow': ?pulumi.Input.mapOptionalInputValue<GoldengateDeploymentPropertiesMaintenanceWindow, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
      'nextBackupScheduleTime': ?nextBackupScheduleTime,
      'nextMaintenanceActionType': ?nextMaintenanceActionType,
      'nextMaintenanceDescription': ?nextMaintenanceDescription,
      'nextMaintenanceTime': ?nextMaintenanceTime,
      'nsgIds': ?nsgIds,
      'ocid': ?ocid,
      'oggData': pulumi.Input.mapInputValue<GoldengateDeploymentPropertiesOggData, Map<String, dynamic>>(oggData, (value) => value.toMap()),
      'oggVersionSupportEndTime': ?oggVersionSupportEndTime,
      'placements': ?pulumi.Input.mapOptionalInputValue<List<GoldengateDeploymentPropertiesPlacement>, List<Map<String, dynamic>>>(placements, (value) => pulumi.Input.encodeList<GoldengateDeploymentPropertiesPlacement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateIpAddress': ?privateIpAddress,
      'publicIpAddress': ?publicIpAddress,
      'roleChangeTime': ?roleChangeTime,
      'storageUtilizationBytes': ?storageUtilizationBytes,
      'updateTime': ?updateTime,
      'upgradeRequiredTime': ?upgradeRequiredTime,
    };
  }

  factory GoldengateDeploymentProperties.fromMap(Map<String, dynamic> map) {
    return GoldengateDeploymentProperties(
      backupSchedule: (() { final guardedValue = map['backupSchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateDeploymentPropertiesBackupSchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpuCoreCount: (() { final guardedValue = map['cpuCoreCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      deploymentBackupId: (() { final guardedValue = map['deploymentBackupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentDiagnosticData: (() { final guardedValue = map['deploymentDiagnosticData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateDeploymentPropertiesDeploymentDiagnosticData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deploymentRole: (() { final guardedValue = map['deploymentRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentType: pulumi.Input.fromValue(map['deploymentType'] as String),
      deploymentUrl: (() { final guardedValue = map['deploymentUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentType: (() { final guardedValue = map['environmentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      healthy: (() { final guardedValue = map['healthy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ingressIps: (() { final guardedValue = map['ingressIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoldengateDeploymentPropertiesIngressIp>(guardedValue, (value) => GoldengateDeploymentPropertiesIngressIp.fromMap((value as Map).cast<String, dynamic>()))); })(),
      isAutoScalingEnabled: (() { final guardedValue = map['isAutoScalingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isLatestVersion: (() { final guardedValue = map['isLatestVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isPublic: (() { final guardedValue = map['isPublic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isStorageUtilizationLimitExceeded: (() { final guardedValue = map['isStorageUtilizationLimitExceeded']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastBackupScheduleTime: (() { final guardedValue = map['lastBackupScheduleTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      licenseModel: (() { final guardedValue = map['licenseModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lifecycleDetails: (() { final guardedValue = map['lifecycleDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lifecycleState: (() { final guardedValue = map['lifecycleState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lifecycleSubState: (() { final guardedValue = map['lifecycleSubState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancerId: (() { final guardedValue = map['loadBalancerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancerSubnetId: (() { final guardedValue = map['loadBalancerSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locks: (() { final guardedValue = map['locks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoldengateDeploymentPropertiesLock>(guardedValue, (value) => GoldengateDeploymentPropertiesLock.fromMap((value as Map).cast<String, dynamic>()))); })(),
      maintenanceConfig: (() { final guardedValue = map['maintenanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateDeploymentPropertiesMaintenanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maintenanceWindow: (() { final guardedValue = map['maintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateDeploymentPropertiesMaintenanceWindow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nextBackupScheduleTime: (() { final guardedValue = map['nextBackupScheduleTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextMaintenanceActionType: (() { final guardedValue = map['nextMaintenanceActionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextMaintenanceDescription: (() { final guardedValue = map['nextMaintenanceDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextMaintenanceTime: (() { final guardedValue = map['nextMaintenanceTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nsgIds: (() { final guardedValue = map['nsgIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ocid: (() { final guardedValue = map['ocid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oggData: pulumi.Input.fromValue(GoldengateDeploymentPropertiesOggData.fromMap((map['oggData']! as Map).cast<String, dynamic>())),
      oggVersionSupportEndTime: (() { final guardedValue = map['oggVersionSupportEndTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      placements: (() { final guardedValue = map['placements']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoldengateDeploymentPropertiesPlacement>(guardedValue, (value) => GoldengateDeploymentPropertiesPlacement.fromMap((value as Map).cast<String, dynamic>()))); })(),
      privateIpAddress: (() { final guardedValue = map['privateIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIpAddress: (() { final guardedValue = map['publicIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleChangeTime: (() { final guardedValue = map['roleChangeTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageUtilizationBytes: (() { final guardedValue = map['storageUtilizationBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      upgradeRequiredTime: (() { final guardedValue = map['upgradeRequiredTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
