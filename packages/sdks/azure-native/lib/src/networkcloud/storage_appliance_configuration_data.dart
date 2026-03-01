// ignore_for_file: unused_element, unnecessary_cast

import 'administrative_credentials.dart';

class StorageApplianceConfigurationData {
  /// The credentials of the administrative interface on this storage appliance. The password field is expected to be an Azure Key Vault key URL. Until the cluster is converted to utilize managed identity by setting the secret archive settings, the actual password value should be provided instead.
  final AdministrativeCredentials adminCredentials;
  /// The slot that storage appliance is in the rack based on the BOM configuration.
  final double rackSlot;
  /// The serial number of the appliance.
  final String serialNumber;
  /// The user-provided name for the storage appliance that will be created from this specification.
  final String? storageApplianceName;

  /// Creates a new [StorageApplianceConfigurationData].
  /// [adminCredentials] The credentials of the administrative interface on this storage appliance. The password field is expected to be an Azure Key Vault key URL. Until the cluster is converted to utilize managed identity by setting the secret archive settings, the actual password value should be provided instead.
  /// [rackSlot] The slot that storage appliance is in the rack based on the BOM configuration.
  /// [serialNumber] The serial number of the appliance.
  /// [storageApplianceName] The user-provided name for the storage appliance that will be created from this specification.
  StorageApplianceConfigurationData({
    required this.adminCredentials,
    required this.rackSlot,
    required this.serialNumber,
    this.storageApplianceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminCredentials': adminCredentials.toMap(),
      'rackSlot': rackSlot,
      'serialNumber': serialNumber,
      'storageApplianceName': ?storageApplianceName,
    };
  }

  factory StorageApplianceConfigurationData.fromMap(Map<String, dynamic> map) {
    return StorageApplianceConfigurationData(
      adminCredentials: AdministrativeCredentials.fromMap((map['adminCredentials'] as Map).cast<String, dynamic>()),
      rackSlot: map['rackSlot'] as double,
      serialNumber: map['serialNumber'] as String,
      storageApplianceName: map['storageApplianceName'] == null ? null : map['storageApplianceName'] as String,
    );
  }
}

