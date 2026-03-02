// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'generic_container_extended_info.dart';

/// Base class for generic container of backup items
class GenericContainer {
  /// Type of backup management for the container.
  final pulumi.Input<String>? backupManagementType;
  /// Type of the container. The value of this property for: 1. Compute Azure VM is Microsoft.Compute/virtualMachines 2.
  /// Classic Compute Azure VM is Microsoft.ClassicCompute/virtualMachines 3. Windows machines (like MAB, DPM etc) is
  /// Windows 4. Azure SQL instance is AzureSqlContainer. 5. Storage containers is StorageContainer. 6. Azure workload
  /// Backup is VMAppContainer
  /// Expected value is 'GenericContainer'.
  final pulumi.Input<String> containerType;
  /// Extended information (not returned in List container API calls)
  final pulumi.Input<GenericContainerExtendedInfo>? extendedInformation;
  /// Name of the container's fabric
  final pulumi.Input<String>? fabricName;
  /// Friendly name of the container.
  final pulumi.Input<String>? friendlyName;
  /// Status of health of the container.
  final pulumi.Input<String>? healthStatus;
  /// Type of the protectable object associated with this container
  final pulumi.Input<String>? protectableObjectType;
  /// Status of registration of the container with the Recovery Services Vault.
  final pulumi.Input<String>? registrationStatus;

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
      'extendedInformation': ?pulumi.Input.mapOptionalInputValue<GenericContainerExtendedInfo, Map<String, dynamic>>(extendedInformation, (value) => value.toMap()),
      'fabricName': ?fabricName,
      'friendlyName': ?friendlyName,
      'healthStatus': ?healthStatus,
      'protectableObjectType': ?protectableObjectType,
      'registrationStatus': ?registrationStatus,
    };
  }

  factory GenericContainer.fromMap(Map<String, dynamic> map) {
    return GenericContainer(
      backupManagementType: map['backupManagementType'] == null ? null : (map['backupManagementType'] as String).input(),
      containerType: (map['containerType'] as String).input(),
      extendedInformation: map['extendedInformation'] == null ? null : (GenericContainerExtendedInfo.fromMap((map['extendedInformation'] as Map).cast<String, dynamic>())).input(),
      fabricName: map['fabricName'] == null ? null : (map['fabricName'] as String).input(),
      friendlyName: map['friendlyName'] == null ? null : (map['friendlyName'] as String).input(),
      healthStatus: map['healthStatus'] == null ? null : (map['healthStatus'] as String).input(),
      protectableObjectType: map['protectableObjectType'] == null ? null : (map['protectableObjectType'] as String).input(),
      registrationStatus: map['registrationStatus'] == null ? null : (map['registrationStatus'] as String).input(),
    );
  }
}

