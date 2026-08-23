// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'administrative_credentials.dart';

class StorageApplianceConfigurationData {
  /// The credentials of the administrative interface on this storage appliance. The password field is expected to be an Azure Key Vault key URL. Until the cluster is converted to utilize managed identity by setting the secret archive settings, the actual password value should be provided instead.
  final pulumi.Input<AdministrativeCredentials> adminCredentials;
  /// The slot that storage appliance is in the rack based on the BOM configuration.
  final pulumi.Input<double> rackSlot;
  /// The serial number of the appliance.
  final pulumi.Input<String> serialNumber;
  /// The user-provided name for the storage appliance that will be created from this specification.
  final pulumi.Input<String>? storageApplianceName;

  /// Creates a new [StorageApplianceConfigurationData].
  /// [adminCredentials] The credentials of the administrative interface on this storage appliance. The password field is expected to be an Azure Key Vault key URL. Until the cluster is converted to utilize managed identity by setting the secret archive settings, the actual password value should be provided instead.
  /// [rackSlot] The slot that storage appliance is in the rack based on the BOM configuration.
  /// [serialNumber] The serial number of the appliance.
  /// [storageApplianceName] The user-provided name for the storage appliance that will be created from this specification.
  const StorageApplianceConfigurationData({
    required this.adminCredentials,
    required this.rackSlot,
    required this.serialNumber,
    this.storageApplianceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminCredentials': pulumi.Input.mapInputValue<AdministrativeCredentials, Map<String, dynamic>>(adminCredentials, (value) => value.toMap()),
      'rackSlot': rackSlot,
      'serialNumber': serialNumber,
      'storageApplianceName': ?storageApplianceName,
    };
  }

  factory StorageApplianceConfigurationData.fromMap(Map<String, dynamic> map) {
    return StorageApplianceConfigurationData(
      adminCredentials: pulumi.Input.fromValue(AdministrativeCredentials.fromMap((map['adminCredentials']! as Map).cast<String, dynamic>())),
      rackSlot: pulumi.Input.fromValue(map['rackSlot'] as double),
      serialNumber: pulumi.Input.fromValue(map['serialNumber'] as String),
      storageApplianceName: (() { final guardedValue = map['storageApplianceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
