// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HciDeploymentSettingScaleUnitHostNetworkIntentAdapterPropertyOverride {
  /// The jumbo frame size of the adapter. This parameter should only be modified based on your OEM guidance. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<String>? jumboPacket;
  /// The network direct of the adapter. This parameter should only be modified based on your OEM guidance. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<String>? networkDirect;
  /// The network direct technology of the adapter. This parameter should only be modified based on your OEM guidance. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<String>? networkDirectTechnology;

  /// Creates a new [HciDeploymentSettingScaleUnitHostNetworkIntentAdapterPropertyOverride].
  /// [jumboPacket] The jumbo frame size of the adapter. This parameter should only be modified based on your OEM guidance. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [networkDirect] The network direct of the adapter. This parameter should only be modified based on your OEM guidance. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [networkDirectTechnology] The network direct technology of the adapter. This parameter should only be modified based on your OEM guidance. Changing this forces a new Stack HCI Deployment Setting to be created.
  HciDeploymentSettingScaleUnitHostNetworkIntentAdapterPropertyOverride({
    this.jumboPacket,
    this.networkDirect,
    this.networkDirectTechnology,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jumboPacket': ?jumboPacket,
      'networkDirect': ?networkDirect,
      'networkDirectTechnology': ?networkDirectTechnology,
    };
  }

  factory HciDeploymentSettingScaleUnitHostNetworkIntentAdapterPropertyOverride.fromMap(Map<String, dynamic> map) {
    return HciDeploymentSettingScaleUnitHostNetworkIntentAdapterPropertyOverride(
      jumboPacket: map['jumboPacket'] == null ? null : (map['jumboPacket']! as String).input(),
      networkDirect: map['networkDirect'] == null ? null : (map['networkDirect']! as String).input(),
      networkDirectTechnology: map['networkDirectTechnology'] == null ? null : (map['networkDirectTechnology']! as String).input(),
    );
  }
}

