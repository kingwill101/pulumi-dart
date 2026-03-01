// ignore_for_file: unused_element, unnecessary_cast

import 'hci_deployment_setting_scale_unit_host_network_intent_adapter_property_override.dart';
import 'hci_deployment_setting_scale_unit_host_network_intent_qos_policy_override.dart';
import 'hci_deployment_setting_scale_unit_host_network_intent_virtual_switch_configuration_override.dart';

class HciDeploymentSettingScaleUnitHostNetworkIntent {
  /// A `adapter_property_override` block as defined above. Changing this forces a new Stack HCI Deployment Setting to be created.
  final HciDeploymentSettingScaleUnitHostNetworkIntentAdapterPropertyOverride? adapterPropertyOverride;
  /// Whether to override adapter properties. Possible values are `true` and `false`. defaults to `false`. Changing this forces a new Stack HCI Deployment Setting to be created.
  final bool? adapterPropertyOverrideEnabled;
  /// Specifies a list of ID of network interfaces used for the network intent. Changing this forces a new Stack HCI Deployment Setting to be created.
  final List<String> adapters;
  /// Specifies the name of the intent. Changing this forces a new Stack HCI Deployment Setting to be created.
  final String name;
  /// A `qos_policy_override` block as defined below. Changing this forces a new Stack HCI Deployment Setting to be created.
  final HciDeploymentSettingScaleUnitHostNetworkIntentQosPolicyOverride? qosPolicyOverride;
  /// Whether to override QoS policy. Possible values are `true` and `false`. defaults to `false`. Changing this forces a new Stack HCI Deployment Setting to be created.
  final bool? qosPolicyOverrideEnabled;
  /// Specifies a list of network traffic types. Possible values are `Compute`, `Storage`, `Management`. Changing this forces a new Stack HCI Deployment Setting to be created.
  final List<String> trafficTypes;
  /// A `virtual_switch_configuration_override` block as defined below. Changing this forces a new Stack HCI Deployment Setting to be created.
  final HciDeploymentSettingScaleUnitHostNetworkIntentVirtualSwitchConfigurationOverride? virtualSwitchConfigurationOverride;
  /// Whether to override virtual switch configuration. Possible values are `true` and `false`. defaults to `false`. Changing this forces a new Stack HCI Deployment Setting to be created.
  final bool? virtualSwitchConfigurationOverrideEnabled;

  /// Creates a new [HciDeploymentSettingScaleUnitHostNetworkIntent].
  /// [adapterPropertyOverride] A `adapter_property_override` block as defined above. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [adapterPropertyOverrideEnabled] Whether to override adapter properties. Possible values are `true` and `false`. defaults to `false`. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [adapters] Specifies a list of ID of network interfaces used for the network intent. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [name] Specifies the name of the intent. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [qosPolicyOverride] A `qos_policy_override` block as defined below. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [qosPolicyOverrideEnabled] Whether to override QoS policy. Possible values are `true` and `false`. defaults to `false`. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [trafficTypes] Specifies a list of network traffic types. Possible values are `Compute`, `Storage`, `Management`. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [virtualSwitchConfigurationOverride] A `virtual_switch_configuration_override` block as defined below. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [virtualSwitchConfigurationOverrideEnabled] Whether to override virtual switch configuration. Possible values are `true` and `false`. defaults to `false`. Changing this forces a new Stack HCI Deployment Setting to be created.
  HciDeploymentSettingScaleUnitHostNetworkIntent({
    this.adapterPropertyOverride,
    this.adapterPropertyOverrideEnabled,
    required this.adapters,
    required this.name,
    this.qosPolicyOverride,
    this.qosPolicyOverrideEnabled,
    required this.trafficTypes,
    this.virtualSwitchConfigurationOverride,
    this.virtualSwitchConfigurationOverrideEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adapterPropertyOverride': ?adapterPropertyOverride == null ? null : adapterPropertyOverride!.toMap(),
      'adapterPropertyOverrideEnabled': ?adapterPropertyOverrideEnabled,
      'adapters': adapters,
      'name': name,
      'qosPolicyOverride': ?qosPolicyOverride == null ? null : qosPolicyOverride!.toMap(),
      'qosPolicyOverrideEnabled': ?qosPolicyOverrideEnabled,
      'trafficTypes': trafficTypes,
      'virtualSwitchConfigurationOverride': ?virtualSwitchConfigurationOverride == null ? null : virtualSwitchConfigurationOverride!.toMap(),
      'virtualSwitchConfigurationOverrideEnabled': ?virtualSwitchConfigurationOverrideEnabled,
    };
  }

  factory HciDeploymentSettingScaleUnitHostNetworkIntent.fromMap(Map<String, dynamic> map) {
    return HciDeploymentSettingScaleUnitHostNetworkIntent(
      adapterPropertyOverride: map['adapterPropertyOverride'] == null ? null : HciDeploymentSettingScaleUnitHostNetworkIntentAdapterPropertyOverride.fromMap((map['adapterPropertyOverride'] as Map).cast<String, dynamic>()),
      adapterPropertyOverrideEnabled: map['adapterPropertyOverrideEnabled'] == null ? null : map['adapterPropertyOverrideEnabled'] as bool,
      adapters: (map['adapters'] as List).cast<String>(),
      name: map['name'] as String,
      qosPolicyOverride: map['qosPolicyOverride'] == null ? null : HciDeploymentSettingScaleUnitHostNetworkIntentQosPolicyOverride.fromMap((map['qosPolicyOverride'] as Map).cast<String, dynamic>()),
      qosPolicyOverrideEnabled: map['qosPolicyOverrideEnabled'] == null ? null : map['qosPolicyOverrideEnabled'] as bool,
      trafficTypes: (map['trafficTypes'] as List).cast<String>(),
      virtualSwitchConfigurationOverride: map['virtualSwitchConfigurationOverride'] == null ? null : HciDeploymentSettingScaleUnitHostNetworkIntentVirtualSwitchConfigurationOverride.fromMap((map['virtualSwitchConfigurationOverride'] as Map).cast<String, dynamic>()),
      virtualSwitchConfigurationOverrideEnabled: map['virtualSwitchConfigurationOverrideEnabled'] == null ? null : map['virtualSwitchConfigurationOverrideEnabled'] as bool,
    );
  }
}

