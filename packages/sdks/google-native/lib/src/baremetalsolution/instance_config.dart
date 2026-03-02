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
  final pulumi.Input<List<GoogleCloudBaremetalsolutionV2LogicalInterface>>? logicalInterfaces;
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
      'clientNetwork': ?pulumi.Input.mapOptionalInputValue<NetworkAddress, Map<String, dynamic>>(clientNetwork, (value) => value.toMap()),
      'hyperthreading': ?hyperthreading,
      'id': ?id,
      'instanceType': ?instanceType,
      'logicalInterfaces': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudBaremetalsolutionV2LogicalInterface>, List<Map<String, dynamic>>>(logicalInterfaces, (value) => pulumi.Input.encodeList<GoogleCloudBaremetalsolutionV2LogicalInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<InstanceConfigNetworkConfig, String>(networkConfig, (value) => value.value),
      'networkTemplate': ?networkTemplate,
      'osImage': ?osImage,
      'privateNetwork': ?pulumi.Input.mapOptionalInputValue<NetworkAddress, Map<String, dynamic>>(privateNetwork, (value) => value.toMap()),
      'sshKeyNames': ?sshKeyNames,
      'userNote': ?userNote,
    };
  }

  factory InstanceConfig.fromMap(Map<String, dynamic> map) {
    return InstanceConfig(
      accountNetworksEnabled: map['accountNetworksEnabled'] == null ? null : (map['accountNetworksEnabled']! as bool).input(),
      clientNetwork: map['clientNetwork'] == null ? null : (NetworkAddress.fromMap((map['clientNetwork']! as Map).cast<String, dynamic>())).input(),
      hyperthreading: map['hyperthreading'] == null ? null : (map['hyperthreading']! as bool).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType']! as String).input(),
      logicalInterfaces: map['logicalInterfaces'] == null ? null : (pulumi.Input.decodeList<GoogleCloudBaremetalsolutionV2LogicalInterface>(map['logicalInterfaces']!, (value) => GoogleCloudBaremetalsolutionV2LogicalInterface.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networkConfig: map['networkConfig'] == null ? null : (InstanceConfigNetworkConfig.fromValue(map['networkConfig']! as String)).input(),
      networkTemplate: map['networkTemplate'] == null ? null : (map['networkTemplate']! as String).input(),
      osImage: map['osImage'] == null ? null : (map['osImage']! as String).input(),
      privateNetwork: map['privateNetwork'] == null ? null : (NetworkAddress.fromMap((map['privateNetwork']! as Map).cast<String, dynamic>())).input(),
      sshKeyNames: map['sshKeyNames'] == null ? null : ((map['sshKeyNames']! as List).cast<String>()).input(),
      userNote: map['userNote'] == null ? null : (map['userNote']! as String).input(),
    );
  }
}

