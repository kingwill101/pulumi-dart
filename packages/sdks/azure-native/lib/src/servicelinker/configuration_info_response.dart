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
  ConfigurationInfoResponse({
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
      action: map['action'] == null ? null : (map['action'] as String).input(),
      additionalConfigurations: map['additionalConfigurations'] == null ? null : ((map['additionalConfigurations'] as Map).cast<String, String>()).input(),
      additionalConnectionStringProperties: map['additionalConnectionStringProperties'] == null ? null : ((map['additionalConnectionStringProperties'] as Map).cast<String, String>()).input(),
      configurationStore: map['configurationStore'] == null ? null : (ConfigurationStoreResponse.fromMap((map['configurationStore'] as Map).cast<String, dynamic>())).input(),
      customizedKeys: map['customizedKeys'] == null ? null : ((map['customizedKeys'] as Map).cast<String, String>()).input(),
      daprProperties: map['daprProperties'] == null ? null : (DaprPropertiesResponse.fromMap((map['daprProperties'] as Map).cast<String, dynamic>())).input(),
      deleteOrUpdateBehavior: map['deleteOrUpdateBehavior'] == null ? null : (map['deleteOrUpdateBehavior'] as String).input(),
    );
  }
}

