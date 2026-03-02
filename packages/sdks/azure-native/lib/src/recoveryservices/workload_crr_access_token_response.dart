// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkloadCrrAccessTokenResponse {
  /// Access token used for authentication
  final pulumi.Input<String>? accessTokenString;
  /// Active region name of BMS Stamp
  final pulumi.Input<String>? bMSActiveRegion;
  /// Backup Management Type
  final pulumi.Input<String>? backupManagementType;
  /// Container Id
  final pulumi.Input<String>? containerId;
  /// Container Unique name
  final pulumi.Input<String>? containerName;
  /// Container Type
  final pulumi.Input<String>? containerType;
  /// CoordinatorServiceStampId to be used by BCM in restore call
  final pulumi.Input<String>? coordinatorServiceStampId;
  /// CoordinatorServiceStampUri to be used by BCM in restore call
  final pulumi.Input<String>? coordinatorServiceStampUri;
  /// Datasource Container Unique Name
  final pulumi.Input<String>? datasourceContainerName;
  /// Datasource Id
  final pulumi.Input<String>? datasourceId;
  /// Datasource Friendly Name
  final pulumi.Input<String>? datasourceName;
  /// Datasource Type
  final pulumi.Input<String>? datasourceType;
  /// Type of the specific object - used for deserializing
  /// Expected value is 'WorkloadCrrAccessToken'.
  final pulumi.Input<String> objectType;
  /// Policy Id
  final pulumi.Input<String>? policyId;
  /// Policy Name
  final pulumi.Input<String>? policyName;
  final pulumi.Input<String>? protectableObjectContainerHostOsName;
  final pulumi.Input<String>? protectableObjectFriendlyName;
  final pulumi.Input<String>? protectableObjectParentLogicalContainerName;
  final pulumi.Input<String>? protectableObjectProtectionState;
  final pulumi.Input<String>? protectableObjectUniqueName;
  final pulumi.Input<String>? protectableObjectWorkloadType;
  /// Protected item container id
  final pulumi.Input<double>? protectionContainerId;
  /// ProtectionServiceStampId to be used by BCM in restore call
  final pulumi.Input<String>? protectionServiceStampId;
  /// ProtectionServiceStampUri to be used by BCM in restore call
  final pulumi.Input<String>? protectionServiceStampUri;
  /// Recovery Point Id
  final pulumi.Input<String>? recoveryPointId;
  /// Recovery Point Time
  final pulumi.Input<String>? recoveryPointTime;
  /// Resource Group name of the source vault
  final pulumi.Input<String>? resourceGroupName;
  /// Resource Id of the source vault
  final pulumi.Input<String>? resourceId;
  /// Resource Name of the source vault
  final pulumi.Input<String>? resourceName;
  /// Recovery point information: Managed virtual machine
  final pulumi.Input<bool>? rpIsManagedVirtualMachine;
  /// Recovery point information: Original SA option
  final pulumi.Input<bool>? rpOriginalSAOption;
  /// Recovery point Tier Information
  final pulumi.Input<Map<String, String>>? rpTierInformation;
  /// Recovery point information: VM size description
  final pulumi.Input<String>? rpVMSizeDescription;
  /// Subscription Id of the source vault
  final pulumi.Input<String>? subscriptionId;
  /// Extended Information about the token like FileSpec etc.
  final pulumi.Input<String>? tokenExtendedInformation;

  /// Creates a new [WorkloadCrrAccessTokenResponse].
  /// [accessTokenString] Access token used for authentication
  /// [bMSActiveRegion] Active region name of BMS Stamp
  /// [backupManagementType] Backup Management Type
  /// [containerId] Container Id
  /// [containerName] Container Unique name
  /// [containerType] Container Type
  /// [coordinatorServiceStampId] CoordinatorServiceStampId to be used by BCM in restore call
  /// [coordinatorServiceStampUri] CoordinatorServiceStampUri to be used by BCM in restore call
  /// [datasourceContainerName] Datasource Container Unique Name
  /// [datasourceId] Datasource Id
  /// [datasourceName] Datasource Friendly Name
  /// [datasourceType] Datasource Type
  /// [objectType] Type of the specific object - used for deserializing
  /// [policyId] Policy Id
  /// [policyName] Policy Name
  /// [protectableObjectContainerHostOsName] Optional.
  /// [protectableObjectFriendlyName] Optional.
  /// [protectableObjectParentLogicalContainerName] Optional.
  /// [protectableObjectProtectionState] Optional.
  /// [protectableObjectUniqueName] Optional.
  /// [protectableObjectWorkloadType] Optional.
  /// [protectionContainerId] Protected item container id
  /// [protectionServiceStampId] ProtectionServiceStampId to be used by BCM in restore call
  /// [protectionServiceStampUri] ProtectionServiceStampUri to be used by BCM in restore call
  /// [recoveryPointId] Recovery Point Id
  /// [recoveryPointTime] Recovery Point Time
  /// [resourceGroupName] Resource Group name of the source vault
  /// [resourceId] Resource Id of the source vault
  /// [resourceName] Resource Name of the source vault
  /// [rpIsManagedVirtualMachine] Recovery point information: Managed virtual machine
  /// [rpOriginalSAOption] Recovery point information: Original SA option
  /// [rpTierInformation] Recovery point Tier Information
  /// [rpVMSizeDescription] Recovery point information: VM size description
  /// [subscriptionId] Subscription Id of the source vault
  /// [tokenExtendedInformation] Extended Information about the token like FileSpec etc.
  WorkloadCrrAccessTokenResponse({
    this.accessTokenString,
    this.bMSActiveRegion,
    this.backupManagementType,
    this.containerId,
    this.containerName,
    this.containerType,
    this.coordinatorServiceStampId,
    this.coordinatorServiceStampUri,
    this.datasourceContainerName,
    this.datasourceId,
    this.datasourceName,
    this.datasourceType,
    required this.objectType,
    this.policyId,
    this.policyName,
    this.protectableObjectContainerHostOsName,
    this.protectableObjectFriendlyName,
    this.protectableObjectParentLogicalContainerName,
    this.protectableObjectProtectionState,
    this.protectableObjectUniqueName,
    this.protectableObjectWorkloadType,
    this.protectionContainerId,
    this.protectionServiceStampId,
    this.protectionServiceStampUri,
    this.recoveryPointId,
    this.recoveryPointTime,
    this.resourceGroupName,
    this.resourceId,
    this.resourceName,
    this.rpIsManagedVirtualMachine,
    this.rpOriginalSAOption,
    this.rpTierInformation,
    this.rpVMSizeDescription,
    this.subscriptionId,
    this.tokenExtendedInformation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTokenString': ?accessTokenString,
      'bMSActiveRegion': ?bMSActiveRegion,
      'backupManagementType': ?backupManagementType,
      'containerId': ?containerId,
      'containerName': ?containerName,
      'containerType': ?containerType,
      'coordinatorServiceStampId': ?coordinatorServiceStampId,
      'coordinatorServiceStampUri': ?coordinatorServiceStampUri,
      'datasourceContainerName': ?datasourceContainerName,
      'datasourceId': ?datasourceId,
      'datasourceName': ?datasourceName,
      'datasourceType': ?datasourceType,
      'objectType': objectType,
      'policyId': ?policyId,
      'policyName': ?policyName,
      'protectableObjectContainerHostOsName': ?protectableObjectContainerHostOsName,
      'protectableObjectFriendlyName': ?protectableObjectFriendlyName,
      'protectableObjectParentLogicalContainerName': ?protectableObjectParentLogicalContainerName,
      'protectableObjectProtectionState': ?protectableObjectProtectionState,
      'protectableObjectUniqueName': ?protectableObjectUniqueName,
      'protectableObjectWorkloadType': ?protectableObjectWorkloadType,
      'protectionContainerId': ?protectionContainerId,
      'protectionServiceStampId': ?protectionServiceStampId,
      'protectionServiceStampUri': ?protectionServiceStampUri,
      'recoveryPointId': ?recoveryPointId,
      'recoveryPointTime': ?recoveryPointTime,
      'resourceGroupName': ?resourceGroupName,
      'resourceId': ?resourceId,
      'resourceName': ?resourceName,
      'rpIsManagedVirtualMachine': ?rpIsManagedVirtualMachine,
      'rpOriginalSAOption': ?rpOriginalSAOption,
      'rpTierInformation': ?rpTierInformation,
      'rpVMSizeDescription': ?rpVMSizeDescription,
      'subscriptionId': ?subscriptionId,
      'tokenExtendedInformation': ?tokenExtendedInformation,
    };
  }

  factory WorkloadCrrAccessTokenResponse.fromMap(Map<String, dynamic> map) {
    return WorkloadCrrAccessTokenResponse(
      accessTokenString: map['accessTokenString'] == null ? null : (map['accessTokenString'] as String).input(),
      bMSActiveRegion: map['bMSActiveRegion'] == null ? null : (map['bMSActiveRegion'] as String).input(),
      backupManagementType: map['backupManagementType'] == null ? null : (map['backupManagementType'] as String).input(),
      containerId: map['containerId'] == null ? null : (map['containerId'] as String).input(),
      containerName: map['containerName'] == null ? null : (map['containerName'] as String).input(),
      containerType: map['containerType'] == null ? null : (map['containerType'] as String).input(),
      coordinatorServiceStampId: map['coordinatorServiceStampId'] == null ? null : (map['coordinatorServiceStampId'] as String).input(),
      coordinatorServiceStampUri: map['coordinatorServiceStampUri'] == null ? null : (map['coordinatorServiceStampUri'] as String).input(),
      datasourceContainerName: map['datasourceContainerName'] == null ? null : (map['datasourceContainerName'] as String).input(),
      datasourceId: map['datasourceId'] == null ? null : (map['datasourceId'] as String).input(),
      datasourceName: map['datasourceName'] == null ? null : (map['datasourceName'] as String).input(),
      datasourceType: map['datasourceType'] == null ? null : (map['datasourceType'] as String).input(),
      objectType: (map['objectType'] as String).input(),
      policyId: map['policyId'] == null ? null : (map['policyId'] as String).input(),
      policyName: map['policyName'] == null ? null : (map['policyName'] as String).input(),
      protectableObjectContainerHostOsName: map['protectableObjectContainerHostOsName'] == null ? null : (map['protectableObjectContainerHostOsName'] as String).input(),
      protectableObjectFriendlyName: map['protectableObjectFriendlyName'] == null ? null : (map['protectableObjectFriendlyName'] as String).input(),
      protectableObjectParentLogicalContainerName: map['protectableObjectParentLogicalContainerName'] == null ? null : (map['protectableObjectParentLogicalContainerName'] as String).input(),
      protectableObjectProtectionState: map['protectableObjectProtectionState'] == null ? null : (map['protectableObjectProtectionState'] as String).input(),
      protectableObjectUniqueName: map['protectableObjectUniqueName'] == null ? null : (map['protectableObjectUniqueName'] as String).input(),
      protectableObjectWorkloadType: map['protectableObjectWorkloadType'] == null ? null : (map['protectableObjectWorkloadType'] as String).input(),
      protectionContainerId: map['protectionContainerId'] == null ? null : (map['protectionContainerId'] as double).input(),
      protectionServiceStampId: map['protectionServiceStampId'] == null ? null : (map['protectionServiceStampId'] as String).input(),
      protectionServiceStampUri: map['protectionServiceStampUri'] == null ? null : (map['protectionServiceStampUri'] as String).input(),
      recoveryPointId: map['recoveryPointId'] == null ? null : (map['recoveryPointId'] as String).input(),
      recoveryPointTime: map['recoveryPointTime'] == null ? null : (map['recoveryPointTime'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
      resourceName: map['resourceName'] == null ? null : (map['resourceName'] as String).input(),
      rpIsManagedVirtualMachine: map['rpIsManagedVirtualMachine'] == null ? null : (map['rpIsManagedVirtualMachine'] as bool).input(),
      rpOriginalSAOption: map['rpOriginalSAOption'] == null ? null : (map['rpOriginalSAOption'] as bool).input(),
      rpTierInformation: map['rpTierInformation'] == null ? null : ((map['rpTierInformation'] as Map).cast<String, String>()).input(),
      rpVMSizeDescription: map['rpVMSizeDescription'] == null ? null : (map['rpVMSizeDescription'] as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId'] as String).input(),
      tokenExtendedInformation: map['tokenExtendedInformation'] == null ? null : (map['tokenExtendedInformation'] as String).input(),
    );
  }
}

