// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'administrative_credentials_response.dart';

class StorageApplianceConfigurationDataResponse {
  /// The credentials of the administrative interface on this storage appliance. The password field is expected to be an Azure Key Vault key URL. Until the cluster is converted to utilize managed identity by setting the secret archive settings, the actual password value should be provided instead.
  final pulumi.Input<AdministrativeCredentialsResponse> adminCredentials;
  /// The slot that storage appliance is in the rack based on the BOM configuration.
  final pulumi.Input<double> rackSlot;
  /// The serial number of the appliance.
  final pulumi.Input<String> serialNumber;
  /// The user-provided name for the storage appliance that will be created from this specification.
  final pulumi.Input<String?>? storageApplianceName;

  /// Creates a new [StorageApplianceConfigurationDataResponse].
  /// [adminCredentials] The credentials of the administrative interface on this storage appliance. The password field is expected to be an Azure Key Vault key URL. Until the cluster is converted to utilize managed identity by setting the secret archive settings, the actual password value should be provided instead.
  /// [rackSlot] The slot that storage appliance is in the rack based on the BOM configuration.
  /// [serialNumber] The serial number of the appliance.
  /// [storageApplianceName] The user-provided name for the storage appliance that will be created from this specification.
  const StorageApplianceConfigurationDataResponse({
    required this.adminCredentials,
    required this.rackSlot,
    required this.serialNumber,
    this.storageApplianceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminCredentials': pulumi.Input.mapInputValue<AdministrativeCredentialsResponse, Map<String, dynamic>>(adminCredentials, (value) => value.toMap()),
      'rackSlot': rackSlot,
      'serialNumber': serialNumber,
      'storageApplianceName': ?storageApplianceName,
    };
  }

  factory StorageApplianceConfigurationDataResponse.fromMap(Map<String, dynamic> map) {
    return StorageApplianceConfigurationDataResponse(
      adminCredentials: pulumi.Input.fromValue(AdministrativeCredentialsResponse.fromMap((map['adminCredentials']! as Map).cast<String, dynamic>())),
      rackSlot: pulumi.Input.fromValue((map['rackSlot'] as num).toDouble()),
      serialNumber: pulumi.Input.fromValue(map['serialNumber'] as String),
      storageApplianceName: (() { final guardedValue = map['storageApplianceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
