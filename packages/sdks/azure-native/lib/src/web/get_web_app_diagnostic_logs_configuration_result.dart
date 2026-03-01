// ignore_for_file: unused_element, unnecessary_cast

import 'application_logs_config_response.dart';
import 'enabled_config_response.dart';
import 'http_logs_config_response.dart';

/// Result data returned by getWebAppDiagnosticLogsConfiguration.
class GetWebAppDiagnosticLogsConfigurationResult {
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

  /// Creates a new [GetWebAppDiagnosticLogsConfigurationResult].
  /// [applicationLogs] Application logs configuration.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [detailedErrorMessages] Detailed error messages configuration.
  /// [failedRequestsTracing] Failed requests tracing configuration.
  /// [httpLogs] HTTP logs configuration.
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [type] Resource type.
  GetWebAppDiagnosticLogsConfigurationResult({
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
      'applicationLogs': ?applicationLogs == null ? null : applicationLogs!.toMap(),
      'azureApiVersion': azureApiVersion,
      'detailedErrorMessages': ?detailedErrorMessages == null ? null : detailedErrorMessages!.toMap(),
      'failedRequestsTracing': ?failedRequestsTracing == null ? null : failedRequestsTracing!.toMap(),
      'httpLogs': ?httpLogs == null ? null : httpLogs!.toMap(),
      'id': id,
      'kind': ?kind,
      'name': name,
      'type': type,
    };
  }

  factory GetWebAppDiagnosticLogsConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppDiagnosticLogsConfigurationResult(
      applicationLogs: map['applicationLogs'] == null ? null : ApplicationLogsConfigResponse.fromMap((map['applicationLogs'] as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      detailedErrorMessages: map['detailedErrorMessages'] == null ? null : EnabledConfigResponse.fromMap((map['detailedErrorMessages'] as Map).cast<String, dynamic>()),
      failedRequestsTracing: map['failedRequestsTracing'] == null ? null : EnabledConfigResponse.fromMap((map['failedRequestsTracing'] as Map).cast<String, dynamic>()),
      httpLogs: map['httpLogs'] == null ? null : HttpLogsConfigResponse.fromMap((map['httpLogs'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

