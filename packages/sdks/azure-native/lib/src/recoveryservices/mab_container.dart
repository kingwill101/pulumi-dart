// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mab_container_extended_info.dart';
import 'mabcontainer_health_details.dart';

/// Container with items backed up using MAB backup engine.
class MabContainer {
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
  final pulumi.Input<MabContainerExtendedInfo>? extendedInfo;
  /// Friendly name of the container.
  final pulumi.Input<String>? friendlyName;
  /// Status of health of the container.
  final pulumi.Input<String>? healthStatus;
  /// Health details on this mab container.
  final pulumi.Input<List<MABContainerHealthDetails>>? mabContainerHealthDetails;
  /// Type of the protectable object associated with this container
  final pulumi.Input<String>? protectableObjectType;
  /// Number of items backed up in this container.
  final pulumi.Input<double>? protectedItemCount;
  /// Status of registration of the container with the Recovery Services Vault.
  final pulumi.Input<String>? registrationStatus;

  /// Creates a new [MabContainer].
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
  const MabContainer({
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
      'extendedInfo': ?pulumi.Input.mapOptionalInputValue<MabContainerExtendedInfo, Map<String, dynamic>>(extendedInfo, (value) => value.toMap()),
      'friendlyName': ?friendlyName,
      'healthStatus': ?healthStatus,
      'mabContainerHealthDetails': ?pulumi.Input.mapOptionalInputValue<List<MABContainerHealthDetails>, List<Map<String, dynamic>>>(mabContainerHealthDetails, (value) => pulumi.Input.encodeList<MABContainerHealthDetails, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protectableObjectType': ?protectableObjectType,
      'protectedItemCount': ?protectedItemCount,
      'registrationStatus': ?registrationStatus,
    };
  }

  factory MabContainer.fromMap(Map<String, dynamic> map) {
    return MabContainer(
      agentVersion: (() { final guardedValue = map['agentVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupManagementType: (() { final guardedValue = map['backupManagementType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      canReRegister: (() { final guardedValue = map['canReRegister']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      containerHealthState: (() { final guardedValue = map['containerHealthState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerId: (() { final guardedValue = map['containerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      containerType: pulumi.Input.fromValue(map['containerType'] as String),
      extendedInfo: (() { final guardedValue = map['extendedInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MabContainerExtendedInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      healthStatus: (() { final guardedValue = map['healthStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mabContainerHealthDetails: (() { final guardedValue = map['mabContainerHealthDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MABContainerHealthDetails>(guardedValue, (value) => MABContainerHealthDetails.fromMap((value as Map).cast<String, dynamic>()))); })(),
      protectableObjectType: (() { final guardedValue = map['protectableObjectType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectedItemCount: (() { final guardedValue = map['protectedItemCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      registrationStatus: (() { final guardedValue = map['registrationStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
