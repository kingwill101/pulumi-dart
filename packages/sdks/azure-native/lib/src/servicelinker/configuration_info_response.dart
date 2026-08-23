// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_store_response.dart';
import 'dapr_properties_response.dart';

/// The configuration information, used to generate configurations or save to applications
class ConfigurationInfoResponse {
  /// Optional, indicate whether to apply configurations on source application. If enable, generate configurations and applied to the source application. Default is enable. If optOut, no configuration change will be made on source.
  final pulumi.Input<String>? action;
  /// A dictionary of additional configurations to be added. Service will auto generate a set of basic configurations and this property is to full fill more customized configurations
  final pulumi.Input<Map<String, String>>? additionalConfigurations;
  /// A dictionary of additional properties to be added in the end of connection string.
  final pulumi.Input<Map<String, String>>? additionalConnectionStringProperties;
  /// An option to store configuration into different place
  final pulumi.Input<ConfigurationStoreResponse>? configurationStore;
  /// Optional. A dictionary of default key name and customized key name mapping. If not specified, default key name will be used for generate configurations
  final pulumi.Input<Map<String, String>>? customizedKeys;
  /// Indicates some additional properties for dapr client type
  final pulumi.Input<DaprPropertiesResponse>? daprProperties;
  /// Indicates whether to clean up previous operation when Linker is updating or deleting
  final pulumi.Input<String>? deleteOrUpdateBehavior;

  /// Creates a new [ConfigurationInfoResponse].
  /// [action] Optional, indicate whether to apply configurations on source application. If enable, generate configurations and applied to the source application. Default is enable. If optOut, no configuration change will be made on source.
  /// [additionalConfigurations] A dictionary of additional configurations to be added. Service will auto generate a set of basic configurations and this property is to full fill more customized configurations
  /// [additionalConnectionStringProperties] A dictionary of additional properties to be added in the end of connection string.
  /// [configurationStore] An option to store configuration into different place
  /// [customizedKeys] Optional. A dictionary of default key name and customized key name mapping. If not specified, default key name will be used for generate configurations
  /// [daprProperties] Indicates some additional properties for dapr client type
  /// [deleteOrUpdateBehavior] Indicates whether to clean up previous operation when Linker is updating or deleting
  const ConfigurationInfoResponse({
    this.action,
    this.additionalConfigurations,
    this.additionalConnectionStringProperties,
    this.configurationStore,
    this.customizedKeys,
    this.daprProperties,
    this.deleteOrUpdateBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'additionalConfigurations': ?additionalConfigurations,
      'additionalConnectionStringProperties': ?additionalConnectionStringProperties,
      'configurationStore': ?pulumi.Input.mapOptionalInputValue<ConfigurationStoreResponse, Map<String, dynamic>>(configurationStore, (value) => value.toMap()),
      'customizedKeys': ?customizedKeys,
      'daprProperties': ?pulumi.Input.mapOptionalInputValue<DaprPropertiesResponse, Map<String, dynamic>>(daprProperties, (value) => value.toMap()),
      'deleteOrUpdateBehavior': ?deleteOrUpdateBehavior,
    };
  }

  factory ConfigurationInfoResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationInfoResponse(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      additionalConfigurations: (() { final guardedValue = map['additionalConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      additionalConnectionStringProperties: (() { final guardedValue = map['additionalConnectionStringProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      configurationStore: (() { final guardedValue = map['configurationStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationStoreResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customizedKeys: (() { final guardedValue = map['customizedKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      daprProperties: (() { final guardedValue = map['daprProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DaprPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deleteOrUpdateBehavior: (() { final guardedValue = map['deleteOrUpdateBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
