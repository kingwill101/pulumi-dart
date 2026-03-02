// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_baremetalsolution_v2_logical_interface_response.dart';
import 'network_address_response.dart';

/// Configuration parameters for a new instance.
class InstanceConfigResponse {
  /// If true networks can be from different projects of the same vendor account.
  final pulumi.Input<bool> accountNetworksEnabled;
  /// Client network address. Filled if InstanceConfig.multivlan_config is false.
  final pulumi.Input<NetworkAddressResponse> clientNetwork;
  /// Whether the instance should be provisioned with Hyperthreading enabled.
  final pulumi.Input<bool> hyperthreading;
  /// Instance type. [Available types](https://cloud.google.com/bare-metal/docs/bms-planning#server_configurations)
  final pulumi.Input<String> instanceType;
  /// List of logical interfaces for the instance. The number of logical interfaces will be the same as number of hardware bond/nic on the chosen network template. Filled if InstanceConfig.multivlan_config is true.
  final pulumi.Input<List<GoogleCloudBaremetalsolutionV2LogicalInterfaceResponse>> logicalInterfaces;
  /// The name of the instance config.
  final pulumi.Input<String> name;
  /// The type of network configuration on the instance.
  final pulumi.Input<String> networkConfig;
  /// Server network template name. Filled if InstanceConfig.multivlan_config is true.
  final pulumi.Input<String> networkTemplate;
  /// OS image to initialize the instance. [Available images](https://cloud.google.com/bare-metal/docs/bms-planning#server_configurations)
  final pulumi.Input<String> osImage;
  /// Private network address, if any. Filled if InstanceConfig.multivlan_config is false.
  final pulumi.Input<NetworkAddressResponse> privateNetwork;
  /// Optional. List of names of ssh keys used to provision the instance.
  final pulumi.Input<List<String>> sshKeyNames;
  /// User note field, it can be used by customers to add additional information for the BMS Ops team .
  final pulumi.Input<String> userNote;

  /// Creates a new [InstanceConfigResponse].
  /// [accountNetworksEnabled] If true networks can be from different projects of the same vendor account.
  /// [clientNetwork] Client network address. Filled if InstanceConfig.multivlan_config is false.
  /// [hyperthreading] Whether the instance should be provisioned with Hyperthreading enabled.
  /// [instanceType] Instance type. [Available types](https://cloud.google.com/bare-metal/docs/bms-planning#server_configurations)
  /// [logicalInterfaces] List of logical interfaces for the instance. The number of logical interfaces will be the same as number of hardware bond/nic on the chosen network template. Filled if InstanceConfig.multivlan_config is true.
  /// [name] The name of the instance config.
  /// [networkConfig] The type of network configuration on the instance.
  /// [networkTemplate] Server network template name. Filled if InstanceConfig.multivlan_config is true.
  /// [osImage] OS image to initialize the instance. [Available images](https://cloud.google.com/bare-metal/docs/bms-planning#server_configurations)
  /// [privateNetwork] Private network address, if any. Filled if InstanceConfig.multivlan_config is false.
  /// [sshKeyNames] Optional. List of names of ssh keys used to provision the instance.
  /// [userNote] User note field, it can be used by customers to add additional information for the BMS Ops team .
  InstanceConfigResponse({
    required this.accountNetworksEnabled,
    required this.clientNetwork,
    required this.hyperthreading,
    required this.instanceType,
    required this.logicalInterfaces,
    required this.name,
    required this.networkConfig,
    required this.networkTemplate,
    required this.osImage,
    required this.privateNetwork,
    required this.sshKeyNames,
    required this.userNote,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountNetworksEnabled': accountNetworksEnabled,
      'clientNetwork': pulumi.Input.mapInputValue<NetworkAddressResponse, Map<String, dynamic>>(clientNetwork, (value) => value.toMap()),
      'hyperthreading': hyperthreading,
      'instanceType': instanceType,
      'logicalInterfaces': pulumi.Input.mapInputValue<List<GoogleCloudBaremetalsolutionV2LogicalInterfaceResponse>, List<Map<String, dynamic>>>(logicalInterfaces, (value) => pulumi.Input.encodeList<GoogleCloudBaremetalsolutionV2LogicalInterfaceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'networkConfig': networkConfig,
      'networkTemplate': networkTemplate,
      'osImage': osImage,
      'privateNetwork': pulumi.Input.mapInputValue<NetworkAddressResponse, Map<String, dynamic>>(privateNetwork, (value) => value.toMap()),
      'sshKeyNames': sshKeyNames,
      'userNote': userNote,
    };
  }

  factory InstanceConfigResponse.fromMap(Map<String, dynamic> map) {
    return InstanceConfigResponse(
      accountNetworksEnabled: (map['accountNetworksEnabled'] as bool).input(),
      clientNetwork: (NetworkAddressResponse.fromMap((map['clientNetwork'] as Map).cast<String, dynamic>())).input(),
      hyperthreading: (map['hyperthreading'] as bool).input(),
      instanceType: (map['instanceType'] as String).input(),
      logicalInterfaces: (pulumi.Input.decodeList<GoogleCloudBaremetalsolutionV2LogicalInterfaceResponse>(map['logicalInterfaces'], (value) => GoogleCloudBaremetalsolutionV2LogicalInterfaceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      networkConfig: (map['networkConfig'] as String).input(),
      networkTemplate: (map['networkTemplate'] as String).input(),
      osImage: (map['osImage'] as String).input(),
      privateNetwork: (NetworkAddressResponse.fromMap((map['privateNetwork'] as Map).cast<String, dynamic>())).input(),
      sshKeyNames: ((map['sshKeyNames'] as List).cast<String>()).input(),
      userNote: (map['userNote'] as String).input(),
    );
  }
}

