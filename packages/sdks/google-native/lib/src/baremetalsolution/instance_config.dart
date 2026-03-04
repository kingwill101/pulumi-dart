// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_baremetalsolution_v2_logical_interface.dart';
import 'instance_config_network_config.dart';
import 'network_address.dart';

/// Configuration parameters for a new instance.
class InstanceConfig {
  /// If true networks can be from different projects of the same vendor account.
  final pulumi.Input<bool>? accountNetworksEnabled;

  /// Client network address. Filled if InstanceConfig.multivlan_config is false.
  final pulumi.Input<NetworkAddress>? clientNetwork;

  /// Whether the instance should be provisioned with Hyperthreading enabled.
  final pulumi.Input<bool>? hyperthreading;

  /// A transient unique identifier to idenfity an instance within an ProvisioningConfig request.
  final pulumi.Input<String>? id;

  /// Instance type. [Available types](https://cloud.google.com/bare-metal/docs/bms-planning#server_configurations)
  final pulumi.Input<String>? instanceType;

  /// List of logical interfaces for the instance. The number of logical interfaces will be the same as number of hardware bond/nic on the chosen network template. Filled if InstanceConfig.multivlan_config is true.
  final pulumi.Input<List<GoogleCloudBaremetalsolutionV2LogicalInterface>>?
  logicalInterfaces;

  /// The name of the instance config.
  final pulumi.Input<String>? name;

  /// The type of network configuration on the instance.
  final pulumi.Input<InstanceConfigNetworkConfig>? networkConfig;

  /// Server network template name. Filled if InstanceConfig.multivlan_config is true.
  final pulumi.Input<String>? networkTemplate;

  /// OS image to initialize the instance. [Available images](https://cloud.google.com/bare-metal/docs/bms-planning#server_configurations)
  final pulumi.Input<String>? osImage;

  /// Private network address, if any. Filled if InstanceConfig.multivlan_config is false.
  final pulumi.Input<NetworkAddress>? privateNetwork;

  /// Optional. List of names of ssh keys used to provision the instance.
  final pulumi.Input<List<String>>? sshKeyNames;

  /// User note field, it can be used by customers to add additional information for the BMS Ops team .
  final pulumi.Input<String>? userNote;

  /// Creates a new [InstanceConfig].
  /// [accountNetworksEnabled] If true networks can be from different projects of the same vendor account.
  /// [clientNetwork] Client network address. Filled if InstanceConfig.multivlan_config is false.
  /// [hyperthreading] Whether the instance should be provisioned with Hyperthreading enabled.
  /// [id] A transient unique identifier to idenfity an instance within an ProvisioningConfig request.
  /// [instanceType] Instance type. [Available types](https://cloud.google.com/bare-metal/docs/bms-planning#server_configurations)
  /// [logicalInterfaces] List of logical interfaces for the instance. The number of logical interfaces will be the same as number of hardware bond/nic on the chosen network template. Filled if InstanceConfig.multivlan_config is true.
  /// [name] The name of the instance config.
  /// [networkConfig] The type of network configuration on the instance.
  /// [networkTemplate] Server network template name. Filled if InstanceConfig.multivlan_config is true.
  /// [osImage] OS image to initialize the instance. [Available images](https://cloud.google.com/bare-metal/docs/bms-planning#server_configurations)
  /// [privateNetwork] Private network address, if any. Filled if InstanceConfig.multivlan_config is false.
  /// [sshKeyNames] Optional. List of names of ssh keys used to provision the instance.
  /// [userNote] User note field, it can be used by customers to add additional information for the BMS Ops team .
  InstanceConfig({
    this.accountNetworksEnabled,
    this.clientNetwork,
    this.hyperthreading,
    this.id,
    this.instanceType,
    this.logicalInterfaces,
    this.name,
    this.networkConfig,
    this.networkTemplate,
    this.osImage,
    this.privateNetwork,
    this.sshKeyNames,
    this.userNote,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountNetworksEnabled': ?accountNetworksEnabled,
      'clientNetwork':
          ?pulumi.Input.mapOptionalInputValue<
            NetworkAddress,
            Map<String, dynamic>
          >(clientNetwork, (value) => value.toMap()),
      'hyperthreading': ?hyperthreading,
      'id': ?id,
      'instanceType': ?instanceType,
      'logicalInterfaces':
          ?pulumi.Input.mapOptionalInputValue<
            List<GoogleCloudBaremetalsolutionV2LogicalInterface>,
            List<Map<String, dynamic>>
          >(
            logicalInterfaces,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudBaremetalsolutionV2LogicalInterface,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': ?name,
      'networkConfig':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceConfigNetworkConfig,
            String
          >(networkConfig, (value) => value.wireValue),
      'networkTemplate': ?networkTemplate,
      'osImage': ?osImage,
      'privateNetwork':
          ?pulumi.Input.mapOptionalInputValue<
            NetworkAddress,
            Map<String, dynamic>
          >(privateNetwork, (value) => value.toMap()),
      'sshKeyNames': ?sshKeyNames,
      'userNote': ?userNote,
    };
  }

  factory InstanceConfig.fromMap(Map<String, dynamic> map) {
    return InstanceConfig(
      accountNetworksEnabled: (() {
        final guardedValue = map['accountNetworksEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      clientNetwork: (() {
        final guardedValue = map['clientNetwork'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NetworkAddress.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      hyperthreading: (() {
        final guardedValue = map['hyperthreading'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceType: (() {
        final guardedValue = map['instanceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      logicalInterfaces: (() {
        final guardedValue = map['logicalInterfaces'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi
              .Input.decodeList<GoogleCloudBaremetalsolutionV2LogicalInterface>(
            guardedValue,
            (value) => GoogleCloudBaremetalsolutionV2LogicalInterface.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkConfig: (() {
        final guardedValue = map['networkConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceConfigNetworkConfig.fromValue(guardedValue as String),
        );
      })(),
      networkTemplate: (() {
        final guardedValue = map['networkTemplate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      osImage: (() {
        final guardedValue = map['osImage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateNetwork: (() {
        final guardedValue = map['privateNetwork'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NetworkAddress.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      sshKeyNames: (() {
        final guardedValue = map['sshKeyNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      userNote: (() {
        final guardedValue = map['userNote'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
