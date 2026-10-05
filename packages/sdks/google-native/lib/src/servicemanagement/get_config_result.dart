// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_response.dart';
import 'authentication_response.dart';
import 'backend_response.dart';
import 'billing_response.dart';
import 'context_response.dart';
import 'control_response.dart';
import 'custom_error_response.dart';
import 'documentation_response.dart';
import 'endpoint_response.dart';
import 'enum_response.dart';
import 'http_response.dart';
import 'log_descriptor_response.dart';
import 'logging_response.dart';
import 'metric_descriptor_response.dart';
import 'monitored_resource_descriptor_response.dart';
import 'monitoring_response.dart';
import 'publishing_response.dart';
import 'quota_response.dart';
import 'source_info_response.dart';
import 'system_parameters_response.dart';
import 'type_response.dart';
import 'usage_response.dart';

/// Result data returned by getConfig.
class GetConfigResult {
  /// A list of API interfaces exported by this service. Only the `name` field of the google.protobuf.Api needs to be provided by the configuration author, as the remaining fields will be derived from the IDL during the normalization process. It is an error to specify an API interface here which cannot be resolved against the associated IDL files.
  final List<ApiResponse>? apis;
  /// Auth configuration.
  final AuthenticationResponse? authentication;
  /// API backend configuration.
  final BackendResponse? backend;
  /// Billing configuration.
  final BillingResponse? billing;
  /// Obsolete. Do not use. This field has no semantic meaning. The service config compiler always sets this field to `3`.
  final int? configVersion;
  /// Context configuration.
  final ContextResponse? context;
  /// Configuration for the service control plane.
  final ControlResponse? control;
  /// Custom error configuration.
  final CustomErrorResponse? customError;
  /// Additional API documentation.
  final DocumentationResponse? documentation;
  /// Configuration for network endpoints. If this is empty, then an endpoint with the same name as the service is automatically generated to service all defined APIs.
  final List<EndpointResponse>? endpoints;
  /// A list of all enum types included in this API service. Enums referenced directly or indirectly by the `apis` are automatically included. Enums which are not referenced but shall be included should be listed here by name by the configuration author. Example: enums: - name: google.someapi.v1.SomeEnum
  final List<EnumResponse>? enums;
  /// HTTP configuration.
  final HttpResponse? http;
  /// Logging configuration.
  final LoggingResponse? logging;
  /// Defines the logs used by this service.
  final List<LogDescriptorResponse>? logs;
  /// Defines the metrics used by this service.
  final List<MetricDescriptorResponse>? metrics;
  /// Defines the monitored resources used by this service. This is required by the Service.monitoring and Service.logging configurations.
  final List<MonitoredResourceDescriptorResponse>? monitoredResources;
  /// Monitoring configuration.
  final MonitoringResponse? monitoring;
  /// The service name, which is a DNS-like logical identifier for the service, such as `calendar.googleapis.com`. The service name typically goes through DNS verification to make sure the owner of the service also owns the DNS name.
  final String? name;
  /// The Google project that owns this service.
  final String? producerProjectId;
  /// Settings for [Google Cloud Client libraries](https://cloud.google.com/apis/docs/cloud-client-libraries) generated from APIs defined as protocol buffers.
  final PublishingResponse? publishing;
  /// Quota configuration.
  final QuotaResponse? quota;
  /// The source information for this configuration if available.
  final SourceInfoResponse? sourceInfo;
  /// System parameter configuration.
  final SystemParametersResponse? systemParameters;
  /// A list of all proto message types included in this API service. It serves similar purpose as [google.api.Service.types], except that these types are not needed by user-defined APIs. Therefore, they will not show up in the generated discovery doc. This field should only be used to define system APIs in ESF.
  final List<TypeResponse>? systemTypes;
  /// The product title for this service, it is the name displayed in Google Cloud Console.
  final String? title;
  /// A list of all proto message types included in this API service. Types referenced directly or indirectly by the `apis` are automatically included. Messages which are not referenced but shall be included, such as types used by the `google.protobuf.Any` type, should be listed here by name by the configuration author. Example: types: - name: google.protobuf.Int32
  final List<TypeResponse>? types;
  /// Configuration controlling usage of this service.
  final UsageResponse? usage;

  /// Creates a new [GetConfigResult].
  /// [apis] A list of API interfaces exported by this service. Only the `name` field of the google.protobuf.Api needs to be provided by the configuration author, as the remaining fields will be derived from the IDL during the normalization process. It is an error to specify an API interface here which cannot be resolved against the associated IDL files.
  /// [authentication] Auth configuration.
  /// [backend] API backend configuration.
  /// [billing] Billing configuration.
  /// [configVersion] Obsolete. Do not use. This field has no semantic meaning. The service config compiler always sets this field to `3`.
  /// [context] Context configuration.
  /// [control] Configuration for the service control plane.
  /// [customError] Custom error configuration.
  /// [documentation] Additional API documentation.
  /// [endpoints] Configuration for network endpoints. If this is empty, then an endpoint with the same name as the service is automatically generated to service all defined APIs.
  /// [enums] A list of all enum types included in this API service. Enums referenced directly or indirectly by the `apis` are automatically included. Enums which are not referenced but shall be included should be listed here by name by the configuration author. Example: enums: - name: google.someapi.v1.SomeEnum
  /// [http] HTTP configuration.
  /// [logging] Logging configuration.
  /// [logs] Defines the logs used by this service.
  /// [metrics] Defines the metrics used by this service.
  /// [monitoredResources] Defines the monitored resources used by this service. This is required by the Service.monitoring and Service.logging configurations.
  /// [monitoring] Monitoring configuration.
  /// [name] The service name, which is a DNS-like logical identifier for the service, such as `calendar.googleapis.com`. The service name typically goes through DNS verification to make sure the owner of the service also owns the DNS name.
  /// [producerProjectId] The Google project that owns this service.
  /// [publishing] Settings for [Google Cloud Client libraries](https://cloud.google.com/apis/docs/cloud-client-libraries) generated from APIs defined as protocol buffers.
  /// [quota] Quota configuration.
  /// [sourceInfo] The source information for this configuration if available.
  /// [systemParameters] System parameter configuration.
  /// [systemTypes] A list of all proto message types included in this API service. It serves similar purpose as [google.api.Service.types], except that these types are not needed by user-defined APIs. Therefore, they will not show up in the generated discovery doc. This field should only be used to define system APIs in ESF.
  /// [title] The product title for this service, it is the name displayed in Google Cloud Console.
  /// [types] A list of all proto message types included in this API service. Types referenced directly or indirectly by the `apis` are automatically included. Messages which are not referenced but shall be included, such as types used by the `google.protobuf.Any` type, should be listed here by name by the configuration author. Example: types: - name: google.protobuf.Int32
  /// [usage] Configuration controlling usage of this service.
  const GetConfigResult({
    this.apis,
    this.authentication,
    this.backend,
    this.billing,
    this.configVersion,
    this.context,
    this.control,
    this.customError,
    this.documentation,
    this.endpoints,
    this.enums,
    this.http,
    this.logging,
    this.logs,
    this.metrics,
    this.monitoredResources,
    this.monitoring,
    this.name,
    this.producerProjectId,
    this.publishing,
    this.quota,
    this.sourceInfo,
    this.systemParameters,
    this.systemTypes,
    this.title,
    this.types,
    this.usage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apis': ?(() { final guardedValue = apis; if (guardedValue == null) return null; return pulumi.Input.encodeList<ApiResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'authentication': ?authentication?.toMap(),
      'backend': ?backend?.toMap(),
      'billing': ?billing?.toMap(),
      'configVersion': ?configVersion,
      'context': ?context?.toMap(),
      'control': ?control?.toMap(),
      'customError': ?customError?.toMap(),
      'documentation': ?documentation?.toMap(),
      'endpoints': ?(() { final guardedValue = endpoints; if (guardedValue == null) return null; return pulumi.Input.encodeList<EndpointResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'enums': ?(() { final guardedValue = enums; if (guardedValue == null) return null; return pulumi.Input.encodeList<EnumResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'http': ?http?.toMap(),
      'logging': ?logging?.toMap(),
      'logs': ?(() { final guardedValue = logs; if (guardedValue == null) return null; return pulumi.Input.encodeList<LogDescriptorResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'metrics': ?(() { final guardedValue = metrics; if (guardedValue == null) return null; return pulumi.Input.encodeList<MetricDescriptorResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'monitoredResources': ?(() { final guardedValue = monitoredResources; if (guardedValue == null) return null; return pulumi.Input.encodeList<MonitoredResourceDescriptorResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'monitoring': ?monitoring?.toMap(),
      'name': ?name,
      'producerProjectId': ?producerProjectId,
      'publishing': ?publishing?.toMap(),
      'quota': ?quota?.toMap(),
      'sourceInfo': ?sourceInfo?.toMap(),
      'systemParameters': ?systemParameters?.toMap(),
      'systemTypes': ?(() { final guardedValue = systemTypes; if (guardedValue == null) return null; return pulumi.Input.encodeList<TypeResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'title': ?title,
      'types': ?(() { final guardedValue = types; if (guardedValue == null) return null; return pulumi.Input.encodeList<TypeResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'usage': ?usage?.toMap(),
    };
  }

  factory GetConfigResult.fromMap(Map<String, dynamic> map) {
    return GetConfigResult(
      apis: (() { final guardedValue = map['apis']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApiResponse>(guardedValue, (value) => ApiResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return AuthenticationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      backend: (() { final guardedValue = map['backend']; if (guardedValue == null) return null; return BackendResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      billing: (() { final guardedValue = map['billing']; if (guardedValue == null) return null; return BillingResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      configVersion: (() { final guardedValue = map['configVersion']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      context: (() { final guardedValue = map['context']; if (guardedValue == null) return null; return ContextResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      control: (() { final guardedValue = map['control']; if (guardedValue == null) return null; return ControlResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      customError: (() { final guardedValue = map['customError']; if (guardedValue == null) return null; return CustomErrorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      documentation: (() { final guardedValue = map['documentation']; if (guardedValue == null) return null; return DocumentationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<EndpointResponse>(guardedValue, (value) => EndpointResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      enums: (() { final guardedValue = map['enums']; if (guardedValue == null) return null; return pulumi.Input.decodeList<EnumResponse>(guardedValue, (value) => EnumResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      http: (() { final guardedValue = map['http']; if (guardedValue == null) return null; return HttpResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      logging: (() { final guardedValue = map['logging']; if (guardedValue == null) return null; return LoggingResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      logs: (() { final guardedValue = map['logs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<LogDescriptorResponse>(guardedValue, (value) => LogDescriptorResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      metrics: (() { final guardedValue = map['metrics']; if (guardedValue == null) return null; return pulumi.Input.decodeList<MetricDescriptorResponse>(guardedValue, (value) => MetricDescriptorResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      monitoredResources: (() { final guardedValue = map['monitoredResources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<MonitoredResourceDescriptorResponse>(guardedValue, (value) => MonitoredResourceDescriptorResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      monitoring: (() { final guardedValue = map['monitoring']; if (guardedValue == null) return null; return MonitoringResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      producerProjectId: (() { final guardedValue = map['producerProjectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publishing: (() { final guardedValue = map['publishing']; if (guardedValue == null) return null; return PublishingResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      quota: (() { final guardedValue = map['quota']; if (guardedValue == null) return null; return QuotaResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sourceInfo: (() { final guardedValue = map['sourceInfo']; if (guardedValue == null) return null; return SourceInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemParameters: (() { final guardedValue = map['systemParameters']; if (guardedValue == null) return null; return SystemParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemTypes: (() { final guardedValue = map['systemTypes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TypeResponse>(guardedValue, (value) => TypeResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return guardedValue as String; })(),
      types: (() { final guardedValue = map['types']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TypeResponse>(guardedValue, (value) => TypeResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      usage: (() { final guardedValue = map['usage']; if (guardedValue == null) return null; return UsageResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
