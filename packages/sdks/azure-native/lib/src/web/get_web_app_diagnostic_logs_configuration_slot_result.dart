// ignore_for_file: unused_element, unnecessary_cast

import 'application_logs_config_response.dart';
import 'enabled_config_response.dart';
import 'http_logs_config_response.dart';
import 'system_data_response.dart';

/// Result data returned by getWebAppDiagnosticLogsConfigurationSlot.
class GetWebAppDiagnosticLogsConfigurationSlotResult {
  /// Application logs configuration.
  final ApplicationLogsConfigResponse? applicationLogs;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Detailed error messages configuration.
  final EnabledConfigResponse? detailedErrorMessages;
  /// Failed requests tracing configuration.
  final EnabledConfigResponse? failedRequestsTracing;
  /// HTTP logs configuration.
  final HttpLogsConfigResponse? httpLogs;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Kind of resource.
  final String? kind;
  /// The name of the resource
  final String? name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetWebAppDiagnosticLogsConfigurationSlotResult].
  /// [applicationLogs] Application logs configuration.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [detailedErrorMessages] Detailed error messages configuration.
  /// [failedRequestsTracing] Failed requests tracing configuration.
  /// [httpLogs] HTTP logs configuration.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] Kind of resource.
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetWebAppDiagnosticLogsConfigurationSlotResult({
    this.applicationLogs,
    this.azureApiVersion,
    this.detailedErrorMessages,
    this.failedRequestsTracing,
    this.httpLogs,
    this.id,
    this.kind,
    this.name,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationLogs': ?applicationLogs?.toMap(),
      'azureApiVersion': ?azureApiVersion,
      'detailedErrorMessages': ?detailedErrorMessages?.toMap(),
      'failedRequestsTracing': ?failedRequestsTracing?.toMap(),
      'httpLogs': ?httpLogs?.toMap(),
      'id': ?id,
      'kind': ?kind,
      'name': ?name,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetWebAppDiagnosticLogsConfigurationSlotResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppDiagnosticLogsConfigurationSlotResult(
      applicationLogs: (() { final guardedValue = map['applicationLogs']; if (guardedValue == null) return null; return ApplicationLogsConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      detailedErrorMessages: (() { final guardedValue = map['detailedErrorMessages']; if (guardedValue == null) return null; return EnabledConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      failedRequestsTracing: (() { final guardedValue = map['failedRequestsTracing']; if (guardedValue == null) return null; return EnabledConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      httpLogs: (() { final guardedValue = map['httpLogs']; if (guardedValue == null) return null; return HttpLogsConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
