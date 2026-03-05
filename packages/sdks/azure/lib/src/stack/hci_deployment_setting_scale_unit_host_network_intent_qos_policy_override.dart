// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HciDeploymentSettingScaleUnitHostNetworkIntentQosPolicyOverride {
  /// Specifies the percentage of the allocated storage traffic bandwidth. This parameter should only be modified based on your OEM guidance. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<String>? bandwidthPercentageSmb;
  /// Specifies the Cluster traffic priority. This parameter should only be modified based on your OEM guidance. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<String>? priorityValue8021ActionCluster;
  /// Specifies the Priority Flow Control where Data Center Bridging (DCB) is used. This parameter should only be modified based on your OEM guidance. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<String>? priorityValue8021ActionSmb;

  /// Creates a new [HciDeploymentSettingScaleUnitHostNetworkIntentQosPolicyOverride].
  /// [bandwidthPercentageSmb] Specifies the percentage of the allocated storage traffic bandwidth. This parameter should only be modified based on your OEM guidance. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [priorityValue8021ActionCluster] Specifies the Cluster traffic priority. This parameter should only be modified based on your OEM guidance. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [priorityValue8021ActionSmb] Specifies the Priority Flow Control where Data Center Bridging (DCB) is used. This parameter should only be modified based on your OEM guidance. Changing this forces a new Stack HCI Deployment Setting to be created.
  HciDeploymentSettingScaleUnitHostNetworkIntentQosPolicyOverride({
    this.bandwidthPercentageSmb,
    this.priorityValue8021ActionCluster,
    this.priorityValue8021ActionSmb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthPercentageSmb': ?bandwidthPercentageSmb,
      'priorityValue8021ActionCluster': ?priorityValue8021ActionCluster,
      'priorityValue8021ActionSmb': ?priorityValue8021ActionSmb,
    };
  }

  factory HciDeploymentSettingScaleUnitHostNetworkIntentQosPolicyOverride.fromMap(Map<String, dynamic> map) {
    return HciDeploymentSettingScaleUnitHostNetworkIntentQosPolicyOverride(
      bandwidthPercentageSmb: (() { final guardedValue = map['bandwidthPercentageSmb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priorityValue8021ActionCluster: (() { final guardedValue = map['priorityValue8021ActionCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priorityValue8021ActionSmb: (() { final guardedValue = map['priorityValue8021ActionSmb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

