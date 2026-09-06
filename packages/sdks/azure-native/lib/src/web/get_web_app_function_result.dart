// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getWebAppFunction.
class GetWebAppFunctionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Config information.
  final dynamic config;
  /// Config URI.
  final String? configHref;
  /// File list.
  final Map<String, String>? files;
  /// Function App ID.
  final String? functionAppId;
  /// Function URI.
  final String? href;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The invocation URL
  final String? invokeUrlTemplate;
  /// Gets or sets a value indicating whether the function is disabled
  final bool? isDisabled;
  /// Kind of resource.
  final String? kind;
  /// The function language
  final String? language;
  /// The name of the resource
  final String? name;
  /// Script URI.
  final String? scriptHref;
  /// Script root path URI.
  final String? scriptRootPathHref;
  /// Secrets file URI.
  final String? secretsFileHref;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Test data used when testing via the Azure Portal.
  final String? testData;
  /// Test data URI.
  final String? testDataHref;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetWebAppFunctionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [config] Config information.
  /// [configHref] Config URI.
  /// [files] File list.
  /// [functionAppId] Function App ID.
  /// [href] Function URI.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [invokeUrlTemplate] The invocation URL
  /// [isDisabled] Gets or sets a value indicating whether the function is disabled
  /// [kind] Kind of resource.
  /// [language] The function language
  /// [name] The name of the resource
  /// [scriptHref] Script URI.
  /// [scriptRootPathHref] Script root path URI.
  /// [secretsFileHref] Secrets file URI.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [testData] Test data used when testing via the Azure Portal.
  /// [testDataHref] Test data URI.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetWebAppFunctionResult({
    this.azureApiVersion,
    this.config,
    this.configHref,
    this.files,
    this.functionAppId,
    this.href,
    this.id,
    this.invokeUrlTemplate,
    this.isDisabled,
    this.kind,
    this.language,
    this.name,
    this.scriptHref,
    this.scriptRootPathHref,
    this.secretsFileHref,
    this.systemData,
    this.testData,
    this.testDataHref,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'config': ?config,
      'configHref': ?configHref,
      'files': ?files,
      'functionAppId': ?functionAppId,
      'href': ?href,
      'id': ?id,
      'invokeUrlTemplate': ?invokeUrlTemplate,
      'isDisabled': ?isDisabled,
      'kind': ?kind,
      'language': ?language,
      'name': ?name,
      'scriptHref': ?scriptHref,
      'scriptRootPathHref': ?scriptRootPathHref,
      'secretsFileHref': ?secretsFileHref,
      'systemData': ?systemData?.toMap(),
      'testData': ?testData,
      'testDataHref': ?testDataHref,
      'type': ?type,
    };
  }

  factory GetWebAppFunctionResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppFunctionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return guardedValue; })(),
      configHref: (() { final guardedValue = map['configHref']; if (guardedValue == null) return null; return guardedValue as String; })(),
      files: (() { final guardedValue = map['files']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      functionAppId: (() { final guardedValue = map['functionAppId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      href: (() { final guardedValue = map['href']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      invokeUrlTemplate: (() { final guardedValue = map['invokeUrlTemplate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isDisabled: (() { final guardedValue = map['isDisabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      language: (() { final guardedValue = map['language']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scriptHref: (() { final guardedValue = map['scriptHref']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scriptRootPathHref: (() { final guardedValue = map['scriptRootPathHref']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secretsFileHref: (() { final guardedValue = map['secretsFileHref']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      testData: (() { final guardedValue = map['testData']; if (guardedValue == null) return null; return guardedValue as String; })(),
      testDataHref: (() { final guardedValue = map['testDataHref']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
