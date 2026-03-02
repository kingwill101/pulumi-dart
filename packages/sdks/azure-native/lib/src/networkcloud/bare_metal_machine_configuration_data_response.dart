// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'administrative_credentials_response.dart';

class BareMetalMachineConfigurationDataResponse {
  /// The connection string for the baseboard management controller including IP address and protocol.
  final pulumi.Input<String> bmcConnectionString;
  /// The credentials of the baseboard management controller on this bare metal machine. The password field is expected to be an Azure Key Vault key URL. Until the cluster is converted to utilize managed identity by setting the secret archive settings, the actual password value should be provided instead.
  final pulumi.Input<AdministrativeCredentialsResponse> bmcCredentials;
  /// The MAC address of the BMC for this machine.
  final pulumi.Input<String> bmcMacAddress;
  /// The MAC address associated with the PXE NIC card.
  final pulumi.Input<String> bootMacAddress;
  /// The free-form additional information about the machine, e.g. an asset tag.
  final pulumi.Input<String>? machineDetails;
  /// The user-provided name for the bare metal machine created from this specification.
  /// If not provided, the machine name will be generated programmatically.
  final pulumi.Input<String>? machineName;
  /// The slot the physical machine is in the rack based on the BOM configuration.
  final pulumi.Input<double> rackSlot;
  /// The serial number of the machine. Hardware suppliers may use an alternate value. For example, service tag.
  final pulumi.Input<String> serialNumber;

  /// Creates a new [BareMetalMachineConfigurationDataResponse].
  /// [bmcConnectionString] The connection string for the baseboard management controller including IP address and protocol.
  /// [bmcCredentials] The credentials of the baseboard management controller on this bare metal machine. The password field is expected to be an Azure Key Vault key URL. Until the cluster is converted to utilize managed identity by setting the secret archive settings, the actual password value should be provided instead.
  /// [bmcMacAddress] The MAC address of the BMC for this machine.
  /// [bootMacAddress] The MAC address associated with the PXE NIC card.
  /// [machineDetails] The free-form additional information about the machine, e.g. an asset tag.
  /// [machineName] The user-provided name for the bare metal machine created from this specification.
  /// [rackSlot] The slot the physical machine is in the rack based on the BOM configuration.
  /// [serialNumber] The serial number of the machine. Hardware suppliers may use an alternate value. For example, service tag.
  BareMetalMachineConfigurationDataResponse({
    required this.bmcConnectionString,
    required this.bmcCredentials,
    required this.bmcMacAddress,
    required this.bootMacAddress,
    this.machineDetails,
    this.machineName,
    required this.rackSlot,
    required this.serialNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bmcConnectionString': bmcConnectionString,
      'bmcCredentials': pulumi.Input.mapInputValue<AdministrativeCredentialsResponse, Map<String, dynamic>>(bmcCredentials, (value) => value.toMap()),
      'bmcMacAddress': bmcMacAddress,
      'bootMacAddress': bootMacAddress,
      'machineDetails': ?machineDetails,
      'machineName': ?machineName,
      'rackSlot': rackSlot,
      'serialNumber': serialNumber,
    };
  }

  factory BareMetalMachineConfigurationDataResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalMachineConfigurationDataResponse(
      bmcConnectionString: (map['bmcConnectionString'] as String).input(),
      bmcCredentials: (AdministrativeCredentialsResponse.fromMap((map['bmcCredentials'] as Map).cast<String, dynamic>())).input(),
      bmcMacAddress: (map['bmcMacAddress'] as String).input(),
      bootMacAddress: (map['bootMacAddress'] as String).input(),
      machineDetails: map['machineDetails'] == null ? null : (map['machineDetails']! as String).input(),
      machineName: map['machineName'] == null ? null : (map['machineName']! as String).input(),
      rackSlot: (map['rackSlot'] as double).input(),
      serialNumber: (map['serialNumber'] as String).input(),
    );
  }
}

