// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cmdkey_setup.dart';
import 'integration_runtime_custom_setup_script_properties.dart';
import 'integration_runtime_data_proxy_properties.dart';
import 'integration_runtime_ssis_catalog_info.dart';

/// SSIS properties for managed integration runtime.
class IntegrationRuntimeSsisProperties {
  /// Catalog information for managed dedicated integration runtime.
  final pulumi.Input<IntegrationRuntimeSsisCatalogInfo>? catalogInfo;
  /// Custom setup script properties for a managed dedicated integration runtime.
  final pulumi.Input<IntegrationRuntimeCustomSetupScriptProperties>? customSetupScriptProperties;
  /// Data proxy properties for a managed dedicated integration runtime.
  final pulumi.Input<IntegrationRuntimeDataProxyProperties>? dataProxyProperties;
  /// The edition for the SSIS Integration Runtime
  final pulumi.Input<String>? edition;
  /// Custom setup without script properties for a SSIS integration runtime.
  final pulumi.Input<List<CmdkeySetup>>? expressCustomSetupProperties;
  /// License type for bringing your own license scenario.
  final pulumi.Input<String>? licenseType;

  /// Creates a new [IntegrationRuntimeSsisProperties].
  /// [catalogInfo] Catalog information for managed dedicated integration runtime.
  /// [customSetupScriptProperties] Custom setup script properties for a managed dedicated integration runtime.
  /// [dataProxyProperties] Data proxy properties for a managed dedicated integration runtime.
  /// [edition] The edition for the SSIS Integration Runtime
  /// [expressCustomSetupProperties] Custom setup without script properties for a SSIS integration runtime.
  /// [licenseType] License type for bringing your own license scenario.
  IntegrationRuntimeSsisProperties({
    this.catalogInfo,
    this.customSetupScriptProperties,
    this.dataProxyProperties,
    this.edition,
    this.expressCustomSetupProperties,
    this.licenseType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogInfo': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeSsisCatalogInfo, Map<String, dynamic>>(catalogInfo, (value) => value.toMap()),
      'customSetupScriptProperties': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeCustomSetupScriptProperties, Map<String, dynamic>>(customSetupScriptProperties, (value) => value.toMap()),
      'dataProxyProperties': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeDataProxyProperties, Map<String, dynamic>>(dataProxyProperties, (value) => value.toMap()),
      'edition': ?edition,
      'expressCustomSetupProperties': ?pulumi.Input.mapOptionalInputValue<List<CmdkeySetup>, List<Map<String, dynamic>>>(expressCustomSetupProperties, (value) => pulumi.Input.encodeList<CmdkeySetup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'licenseType': ?licenseType,
    };
  }

  factory IntegrationRuntimeSsisProperties.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeSsisProperties(
      catalogInfo: map['catalogInfo'] == null ? null : (IntegrationRuntimeSsisCatalogInfo.fromMap((map['catalogInfo'] as Map).cast<String, dynamic>())).input(),
      customSetupScriptProperties: map['customSetupScriptProperties'] == null ? null : (IntegrationRuntimeCustomSetupScriptProperties.fromMap((map['customSetupScriptProperties'] as Map).cast<String, dynamic>())).input(),
      dataProxyProperties: map['dataProxyProperties'] == null ? null : (IntegrationRuntimeDataProxyProperties.fromMap((map['dataProxyProperties'] as Map).cast<String, dynamic>())).input(),
      edition: map['edition'] == null ? null : (map['edition'] as String).input(),
      expressCustomSetupProperties: map['expressCustomSetupProperties'] == null ? null : (pulumi.Input.decodeList<CmdkeySetup>(map['expressCustomSetupProperties'], (value) => CmdkeySetup.fromMap((value as Map).cast<String, dynamic>()))).input(),
      licenseType: map['licenseType'] == null ? null : (map['licenseType'] as String).input(),
    );
  }
}

