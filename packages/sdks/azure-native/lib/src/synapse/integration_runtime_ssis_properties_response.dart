// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cmdkey_setup_response.dart';
import 'integration_runtime_custom_setup_script_properties_response.dart';
import 'integration_runtime_data_proxy_properties_response.dart';
import 'integration_runtime_ssis_catalog_info_response.dart';

/// SSIS properties for managed integration runtime.
class IntegrationRuntimeSsisPropertiesResponse {
  /// Catalog information for managed dedicated integration runtime.
  final pulumi.Input<IntegrationRuntimeSsisCatalogInfoResponse>? catalogInfo;
  /// Custom setup script properties for a managed dedicated integration runtime.
  final pulumi.Input<IntegrationRuntimeCustomSetupScriptPropertiesResponse>? customSetupScriptProperties;
  /// Data proxy properties for a managed dedicated integration runtime.
  final pulumi.Input<IntegrationRuntimeDataProxyPropertiesResponse>? dataProxyProperties;
  /// The edition for the SSIS Integration Runtime
  final pulumi.Input<String>? edition;
  /// Custom setup without script properties for a SSIS integration runtime.
  final pulumi.Input<List<CmdkeySetupResponse>>? expressCustomSetupProperties;
  /// License type for bringing your own license scenario.
  final pulumi.Input<String>? licenseType;

  /// Creates a new [IntegrationRuntimeSsisPropertiesResponse].
  /// [catalogInfo] Catalog information for managed dedicated integration runtime.
  /// [customSetupScriptProperties] Custom setup script properties for a managed dedicated integration runtime.
  /// [dataProxyProperties] Data proxy properties for a managed dedicated integration runtime.
  /// [edition] The edition for the SSIS Integration Runtime
  /// [expressCustomSetupProperties] Custom setup without script properties for a SSIS integration runtime.
  /// [licenseType] License type for bringing your own license scenario.
  const IntegrationRuntimeSsisPropertiesResponse({
    this.catalogInfo,
    this.customSetupScriptProperties,
    this.dataProxyProperties,
    this.edition,
    this.expressCustomSetupProperties,
    this.licenseType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogInfo': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeSsisCatalogInfoResponse, Map<String, dynamic>>(catalogInfo, (value) => value.toMap()),
      'customSetupScriptProperties': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeCustomSetupScriptPropertiesResponse, Map<String, dynamic>>(customSetupScriptProperties, (value) => value.toMap()),
      'dataProxyProperties': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeDataProxyPropertiesResponse, Map<String, dynamic>>(dataProxyProperties, (value) => value.toMap()),
      'edition': ?edition,
      'expressCustomSetupProperties': ?pulumi.Input.mapOptionalInputValue<List<CmdkeySetupResponse>, List<Map<String, dynamic>>>(expressCustomSetupProperties, (value) => pulumi.Input.encodeList<CmdkeySetupResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'licenseType': ?licenseType,
    };
  }

  factory IntegrationRuntimeSsisPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeSsisPropertiesResponse(
      catalogInfo: (() { final guardedValue = map['catalogInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeSsisCatalogInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customSetupScriptProperties: (() { final guardedValue = map['customSetupScriptProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeCustomSetupScriptPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataProxyProperties: (() { final guardedValue = map['dataProxyProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeDataProxyPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      edition: (() { final guardedValue = map['edition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expressCustomSetupProperties: (() { final guardedValue = map['expressCustomSetupProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CmdkeySetupResponse>(guardedValue, (value) => CmdkeySetupResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
