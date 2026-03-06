// ignore_for_file: unused_element, unnecessary_cast

import 'application_logs_config_response.dart';
import 'enabled_config_response.dart';
import 'http_logs_config_response.dart';

/// Result data returned by getWebAppDiagnosticLogsConfigurationSlot.
class GetWebAppDiagnosticLogsConfigurationSlotResult {
  /// Application logs configuration.
  final ApplicationLogsConfigResponse? applicationLogs;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Detailed error messages configuration.
  final EnabledConfigResponse? detailedErrorMessages;
  /// Failed requests tracing configuration.
  final EnabledConfigResponse? failedRequestsTracing;
  /// HTTP logs configuration.
  final HttpLogsConfigResponse? httpLogs;
  /// Resource Id.
  final String id;
  /// Kind of resource.
  final String? kind;
  /// Resource Name.
  final String name;
  /// Resource type.
  final String type;

  /// Creates a new [GetWebAppDiagnosticLogsConfigurationSlotResult].
  /// [applicationLogs] Application logs configuration.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [detailedErrorMessages] Detailed error messages configuration.
  /// [failedRequestsTracing] Failed requests tracing configuration.
  /// [httpLogs] HTTP logs configuration.
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [type] Resource type.
  const GetWebAppDiagnosticLogsConfigurationSlotResult({
    this.applicationLogs,
    required this.azureApiVersion,
    this.detailedErrorMessages,
    this.failedRequestsTracing,
    this.httpLogs,
    required this.id,
    this.kind,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationLogs': ?applicationLogs?.toMap(),
      'azureApiVersion': azureApiVersion,
      'detailedErrorMessages': ?detailedErrorMessages?.toMap(),
      'failedRequestsTracing': ?failedRequestsTracing?.toMap(),
      'httpLogs': ?httpLogs?.toMap(),
      'id': id,
      'kind': ?kind,
      'name': name,
      'type': type,
    };
  }

  factory GetWebAppDiagnosticLogsConfigurationSlotResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppDiagnosticLogsConfigurationSlotResult(
      applicationLogs: (() { final guardedValue = map['applicationLogs']; if (guardedValue == null) return null; return ApplicationLogsConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      detailedErrorMessages: (() { final guardedValue = map['detailedErrorMessages']; if (guardedValue == null) return null; return EnabledConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      failedRequestsTracing: (() { final guardedValue = map['failedRequestsTracing']; if (guardedValue == null) return null; return EnabledConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      httpLogs: (() { final guardedValue = map['httpLogs']; if (guardedValue == null) return null; return HttpLogsConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

