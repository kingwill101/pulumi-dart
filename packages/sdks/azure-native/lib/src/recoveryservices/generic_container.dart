// ignore_for_file: unused_element, unnecessary_cast

import 'generic_container_extended_info.dart';

/// Base class for generic container of backup items
class GenericContainer {
  /// Type of backup management for the container.
  final String? backupManagementType;
  /// Type of the container. The value of this property for: 1. Compute Azure VM is Microsoft.Compute/virtualMachines 2.
  /// Classic Compute Azure VM is Microsoft.ClassicCompute/virtualMachines 3. Windows machines (like MAB, DPM etc) is
  /// Windows 4. Azure SQL instance is AzureSqlContainer. 5. Storage containers is StorageContainer. 6. Azure workload
  /// Backup is VMAppContainer
  /// Expected value is 'GenericContainer'.
  final String containerType;
  /// Extended information (not returned in List container API calls)
  final GenericContainerExtendedInfo? extendedInformation;
  /// Name of the container's fabric
  final String? fabricName;
  /// Friendly name of the container.
  final String? friendlyName;
  /// Status of health of the container.
  final String? healthStatus;
  /// Type of the protectable object associated with this container
  final String? protectableObjectType;
  /// Status of registration of the container with the Recovery Services Vault.
  final String? registrationStatus;

  /// Creates a new [GenericContainer].
  /// [backupManagementType] Type of backup management for the container.
  /// [containerType] Type of the container. The value of this property for: 1. Compute Azure VM is Microsoft.Compute/virtualMachines 2.
  /// [extendedInformation] Extended information (not returned in List container API calls)
  /// [fabricName] Name of the container's fabric
  /// [friendlyName] Friendly name of the container.
  /// [healthStatus] Status of health of the container.
  /// [protectableObjectType] Type of the protectable object associated with this container
  /// [registrationStatus] Status of registration of the container with the Recovery Services Vault.
  GenericContainer({
    this.backupManagementType,
    required this.containerType,
    this.extendedInformation,
    this.fabricName,
    this.friendlyName,
    this.healthStatus,
    this.protectableObjectType,
    this.registrationStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupManagementType': ?backupManagementType,
      'containerType': containerType,
      'extendedInformation': ?extendedInformation == null ? null : extendedInformation!.toMap(),
      'fabricName': ?fabricName,
      'friendlyName': ?friendlyName,
      'healthStatus': ?healthStatus,
      'protectableObjectType': ?protectableObjectType,
      'registrationStatus': ?registrationStatus,
    };
  }

  factory GenericContainer.fromMap(Map<String, dynamic> map) {
    return GenericContainer(
      backupManagementType: map['backupManagementType'] == null ? null : map['backupManagementType'] as String,
      containerType: map['containerType'] as String,
      extendedInformation: map['extendedInformation'] == null ? null : GenericContainerExtendedInfo.fromMap((map['extendedInformation'] as Map).cast<String, dynamic>()),
      fabricName: map['fabricName'] == null ? null : map['fabricName'] as String,
      friendlyName: map['friendlyName'] == null ? null : map['friendlyName'] as String,
      healthStatus: map['healthStatus'] == null ? null : map['healthStatus'] as String,
      protectableObjectType: map['protectableObjectType'] == null ? null : map['protectableObjectType'] as String,
      registrationStatus: map['registrationStatus'] == null ? null : map['registrationStatus'] as String,
    );
  }
}

