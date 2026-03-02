// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mab_container_extended_info_response.dart';
import 'mabcontainer_health_details_response.dart';

/// Container with items backed up using MAB backup engine.
class MabContainerResponse {
  /// Agent version of this container.
  final pulumi.Input<String>? agentVersion;
  /// Type of backup management for the container.
  final pulumi.Input<String>? backupManagementType;
  /// Can the container be registered one more time.
  final pulumi.Input<bool>? canReRegister;
  /// Health state of mab container.
  final pulumi.Input<String>? containerHealthState;
  /// ContainerID represents the container.
  final pulumi.Input<double>? containerId;
  /// Type of the container. The value of this property for: 1. Compute Azure VM is Microsoft.Compute/virtualMachines 2.
  /// Classic Compute Azure VM is Microsoft.ClassicCompute/virtualMachines 3. Windows machines (like MAB, DPM etc) is
  /// Windows 4. Azure SQL instance is AzureSqlContainer. 5. Storage containers is StorageContainer. 6. Azure workload
  /// Backup is VMAppContainer
  /// Expected value is 'Windows'.
  final pulumi.Input<String> containerType;
  /// Additional information for this container
  final pulumi.Input<MabContainerExtendedInfoResponse>? extendedInfo;
  /// Friendly name of the container.
  final pulumi.Input<String>? friendlyName;
  /// Status of health of the container.
  final pulumi.Input<String>? healthStatus;
  /// Health details on this mab container.
  final pulumi.Input<List<MABContainerHealthDetailsResponse>>? mabContainerHealthDetails;
  /// Type of the protectable object associated with this container
  final pulumi.Input<String>? protectableObjectType;
  /// Number of items backed up in this container.
  final pulumi.Input<double>? protectedItemCount;
  /// Status of registration of the container with the Recovery Services Vault.
  final pulumi.Input<String>? registrationStatus;

  /// Creates a new [MabContainerResponse].
  /// [agentVersion] Agent version of this container.
  /// [backupManagementType] Type of backup management for the container.
  /// [canReRegister] Can the container be registered one more time.
  /// [containerHealthState] Health state of mab container.
  /// [containerId] ContainerID represents the container.
  /// [containerType] Type of the container. The value of this property for: 1. Compute Azure VM is Microsoft.Compute/virtualMachines 2.
  /// [extendedInfo] Additional information for this container
  /// [friendlyName] Friendly name of the container.
  /// [healthStatus] Status of health of the container.
  /// [mabContainerHealthDetails] Health details on this mab container.
  /// [protectableObjectType] Type of the protectable object associated with this container
  /// [protectedItemCount] Number of items backed up in this container.
  /// [registrationStatus] Status of registration of the container with the Recovery Services Vault.
  MabContainerResponse({
    this.agentVersion,
    this.backupManagementType,
    this.canReRegister,
    this.containerHealthState,
    this.containerId,
    required this.containerType,
    this.extendedInfo,
    this.friendlyName,
    this.healthStatus,
    this.mabContainerHealthDetails,
    this.protectableObjectType,
    this.protectedItemCount,
    this.registrationStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentVersion': ?agentVersion,
      'backupManagementType': ?backupManagementType,
      'canReRegister': ?canReRegister,
      'containerHealthState': ?containerHealthState,
      'containerId': ?containerId,
      'containerType': containerType,
      'extendedInfo': ?pulumi.Input.mapOptionalInputValue<MabContainerExtendedInfoResponse, Map<String, dynamic>>(extendedInfo, (value) => value.toMap()),
      'friendlyName': ?friendlyName,
      'healthStatus': ?healthStatus,
      'mabContainerHealthDetails': ?pulumi.Input.mapOptionalInputValue<List<MABContainerHealthDetailsResponse>, List<Map<String, dynamic>>>(mabContainerHealthDetails, (value) => pulumi.Input.encodeList<MABContainerHealthDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protectableObjectType': ?protectableObjectType,
      'protectedItemCount': ?protectedItemCount,
      'registrationStatus': ?registrationStatus,
    };
  }

  factory MabContainerResponse.fromMap(Map<String, dynamic> map) {
    return MabContainerResponse(
      agentVersion: map['agentVersion'] == null ? null : (map['agentVersion'] as String).input(),
      backupManagementType: map['backupManagementType'] == null ? null : (map['backupManagementType'] as String).input(),
      canReRegister: map['canReRegister'] == null ? null : (map['canReRegister'] as bool).input(),
      containerHealthState: map['containerHealthState'] == null ? null : (map['containerHealthState'] as String).input(),
      containerId: map['containerId'] == null ? null : (map['containerId'] as double).input(),
      containerType: (map['containerType'] as String).input(),
      extendedInfo: map['extendedInfo'] == null ? null : (MabContainerExtendedInfoResponse.fromMap((map['extendedInfo'] as Map).cast<String, dynamic>())).input(),
      friendlyName: map['friendlyName'] == null ? null : (map['friendlyName'] as String).input(),
      healthStatus: map['healthStatus'] == null ? null : (map['healthStatus'] as String).input(),
      mabContainerHealthDetails: map['mabContainerHealthDetails'] == null ? null : (pulumi.Input.decodeList<MABContainerHealthDetailsResponse>(map['mabContainerHealthDetails'], (value) => MABContainerHealthDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      protectableObjectType: map['protectableObjectType'] == null ? null : (map['protectableObjectType'] as String).input(),
      protectedItemCount: map['protectedItemCount'] == null ? null : (map['protectedItemCount'] as double).input(),
      registrationStatus: map['registrationStatus'] == null ? null : (map['registrationStatus'] as String).input(),
    );
  }
}

