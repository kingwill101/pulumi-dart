// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dpmcontainer_extended_info.dart';

/// DPM workload-specific protection container.
class DpmContainer {
  /// Type of backup management for the container.
  final pulumi.Input<dynamic>? backupManagementType;
  /// Specifies whether the container is re-registrable.
  final pulumi.Input<bool?>? canReRegister;
  /// ID of container.
  final pulumi.Input<String?>? containerId;
  /// Type of the container. The value of this property for: 1. Compute Azure VM is Microsoft.Compute/virtualMachines 2.
  /// Classic Compute Azure VM is Microsoft.ClassicCompute/virtualMachines 3. Windows machines (like MAB, DPM etc) is
  /// Windows 4. Azure SQL instance is AzureSqlContainer. 5. Storage containers is StorageContainer. 6. Azure workload
  /// Backup is VMAppContainer
  /// Expected value is 'DPMContainer'.
  final pulumi.Input<String> containerType;
  /// Backup engine Agent version
  final pulumi.Input<String?>? dpmAgentVersion;
  /// List of BackupEngines protecting the container
  final pulumi.Input<List<String>?>? dpmServers;
  /// Extended Info of the container.
  final pulumi.Input<DPMContainerExtendedInfo?>? extendedInfo;
  /// Friendly name of the container.
  final pulumi.Input<String?>? friendlyName;
  /// Status of health of the container.
  final pulumi.Input<String?>? healthStatus;
  /// Type of the protectable object associated with this container
  final pulumi.Input<String?>? protectableObjectType;
  /// Number of protected items in the BackupEngine
  final pulumi.Input<double?>? protectedItemCount;
  /// Protection status of the container.
  final pulumi.Input<String?>? protectionStatus;
  /// Status of registration of the container with the Recovery Services Vault.
  final pulumi.Input<String?>? registrationStatus;
  /// To check if upgrade available
  final pulumi.Input<bool?>? upgradeAvailable;

  /// Creates a new [DpmContainer].
  /// [backupManagementType] Type of backup management for the container.
  /// [canReRegister] Specifies whether the container is re-registrable.
  /// [containerId] ID of container.
  /// [containerType] Type of the container. The value of this property for: 1. Compute Azure VM is Microsoft.Compute/virtualMachines 2.
  /// [dpmAgentVersion] Backup engine Agent version
  /// [dpmServers] List of BackupEngines protecting the container
  /// [extendedInfo] Extended Info of the container.
  /// [friendlyName] Friendly name of the container.
  /// [healthStatus] Status of health of the container.
  /// [protectableObjectType] Type of the protectable object associated with this container
  /// [protectedItemCount] Number of protected items in the BackupEngine
  /// [protectionStatus] Protection status of the container.
  /// [registrationStatus] Status of registration of the container with the Recovery Services Vault.
  /// [upgradeAvailable] To check if upgrade available
  const DpmContainer({
    this.backupManagementType,
    this.canReRegister,
    this.containerId,
    required this.containerType,
    this.dpmAgentVersion,
    this.dpmServers,
    this.extendedInfo,
    this.friendlyName,
    this.healthStatus,
    this.protectableObjectType,
    this.protectedItemCount,
    this.protectionStatus,
    this.registrationStatus,
    this.upgradeAvailable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupManagementType': ?backupManagementType,
      'canReRegister': ?canReRegister,
      'containerId': ?containerId,
      'containerType': containerType,
      'dpmAgentVersion': ?dpmAgentVersion,
      'dpmServers': ?dpmServers,
      'extendedInfo': ?pulumi.Input.mapOptionalInputValue<DPMContainerExtendedInfo, Map<String, dynamic>>(extendedInfo, (value) => value.toMap()),
      'friendlyName': ?friendlyName,
      'healthStatus': ?healthStatus,
      'protectableObjectType': ?protectableObjectType,
      'protectedItemCount': ?protectedItemCount,
      'protectionStatus': ?protectionStatus,
      'registrationStatus': ?registrationStatus,
      'upgradeAvailable': ?upgradeAvailable,
    };
  }

  factory DpmContainer.fromMap(Map<String, dynamic> map) {
    return DpmContainer(
      backupManagementType: (() { final guardedValue = map['backupManagementType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      canReRegister: (() { final guardedValue = map['canReRegister']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      containerId: (() { final guardedValue = map['containerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerType: pulumi.Input.fromValue(map['containerType'] as String),
      dpmAgentVersion: (() { final guardedValue = map['dpmAgentVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dpmServers: (() { final guardedValue = map['dpmServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      extendedInfo: (() { final guardedValue = map['extendedInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DPMContainerExtendedInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      healthStatus: (() { final guardedValue = map['healthStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectableObjectType: (() { final guardedValue = map['protectableObjectType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectedItemCount: (() { final guardedValue = map['protectedItemCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      protectionStatus: (() { final guardedValue = map['protectionStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registrationStatus: (() { final guardedValue = map['registrationStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      upgradeAvailable: (() { final guardedValue = map['upgradeAvailable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
