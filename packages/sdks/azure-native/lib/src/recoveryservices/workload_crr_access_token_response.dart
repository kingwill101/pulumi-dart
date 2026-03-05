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
      accessTokenString: (() { final guardedValue = map['accessTokenString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bMSActiveRegion: (() { final guardedValue = map['bMSActiveRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupManagementType: (() { final guardedValue = map['backupManagementType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerId: (() { final guardedValue = map['containerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerName: (() { final guardedValue = map['containerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerType: (() { final guardedValue = map['containerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      coordinatorServiceStampId: (() { final guardedValue = map['coordinatorServiceStampId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      coordinatorServiceStampUri: (() { final guardedValue = map['coordinatorServiceStampUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      datasourceContainerName: (() { final guardedValue = map['datasourceContainerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      datasourceId: (() { final guardedValue = map['datasourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      datasourceName: (() { final guardedValue = map['datasourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      datasourceType: (() { final guardedValue = map['datasourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectType: pulumi.Input.fromValue(map['objectType'] as String),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyName: (() { final guardedValue = map['policyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectableObjectContainerHostOsName: (() { final guardedValue = map['protectableObjectContainerHostOsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectableObjectFriendlyName: (() { final guardedValue = map['protectableObjectFriendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectableObjectParentLogicalContainerName: (() { final guardedValue = map['protectableObjectParentLogicalContainerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectableObjectProtectionState: (() { final guardedValue = map['protectableObjectProtectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectableObjectUniqueName: (() { final guardedValue = map['protectableObjectUniqueName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectableObjectWorkloadType: (() { final guardedValue = map['protectableObjectWorkloadType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectionContainerId: (() { final guardedValue = map['protectionContainerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      protectionServiceStampId: (() { final guardedValue = map['protectionServiceStampId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectionServiceStampUri: (() { final guardedValue = map['protectionServiceStampUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryPointId: (() { final guardedValue = map['recoveryPointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryPointTime: (() { final guardedValue = map['recoveryPointTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceName: (() { final guardedValue = map['resourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rpIsManagedVirtualMachine: (() { final guardedValue = map['rpIsManagedVirtualMachine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rpOriginalSAOption: (() { final guardedValue = map['rpOriginalSAOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rpTierInformation: (() { final guardedValue = map['rpTierInformation']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      rpVMSizeDescription: (() { final guardedValue = map['rpVMSizeDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenExtendedInformation: (() { final guardedValue = map['tokenExtendedInformation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

