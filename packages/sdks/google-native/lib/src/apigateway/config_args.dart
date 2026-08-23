// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apigateway_api_config_file.dart';
import 'apigateway_api_config_grpc_service_definition.dart';
import 'apigateway_api_config_open_api_document.dart';

/// {@template pulumi_apigateway_v1_config_args_doc}
/// The set of arguments for Config.
/// {@endtemplate}
/// {@macro pulumi_apigateway_v1_config_args_doc}
class ConfigArgs {
  /// Required. Identifier to assign to the API Config. Must be unique within scope of the parent resource.
  final pulumi.Input<String> apiConfigId;
  final pulumi.Input<String> apiId;
  /// Optional. Display name.
  final pulumi.Input<String>? displayName;
  /// Immutable. The Google Cloud IAM Service Account that Gateways serving this config should use to authenticate to other services. This may either be the Service Account's email (`{ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com`) or its full resource name (`projects/{PROJECT}/accounts/{UNIQUE_ID}`). This is most often used when the service is a GCP resource such as a Cloud Run Service or an IAP-secured service.
  final pulumi.Input<String>? gatewayServiceAccount;
  /// Optional. gRPC service definition files. If specified, openapi_documents must not be included.
  final pulumi.Input<List<ApigatewayApiConfigGrpcServiceDefinition>>? grpcServices;
  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Optional. Service Configuration files. At least one must be included when using gRPC service definitions. See https://cloud.google.com/endpoints/docs/grpc/grpc-service-config#service_configuration_overview for the expected file contents. If multiple files are specified, the files are merged with the following rules: * All singular scalar fields are merged using "last one wins" semantics in the order of the files uploaded. * Repeated fields are concatenated. * Singular embedded messages are merged using these rules for nested fields.
  final pulumi.Input<List<ApigatewayApiConfigFile>>? managedServiceConfigs;
  /// Optional. OpenAPI specification documents. If specified, grpc_services and managed_service_configs must not be included.
  final pulumi.Input<List<ApigatewayApiConfigOpenApiDocument>>? openapiDocuments;
  final pulumi.Input<String>? project;

  /// Creates a new [ConfigArgs].
  /// [apiConfigId] Required. Identifier to assign to the API Config. Must be unique within scope of the parent resource.
  /// [apiId] Required.
  /// [displayName] Optional. Display name.
  /// [gatewayServiceAccount] Immutable. The Google Cloud IAM Service Account that Gateways serving this config should use to authenticate to other services. This may either be the Service Account's email (`{ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com`) or its full resource name (`projects/{PROJECT}/accounts/{UNIQUE_ID}`). This is most often used when the service is a GCP resource such as a Cloud Run Service or an IAP-secured service.
  /// [grpcServices] Optional. gRPC service definition files. If specified, openapi_documents must not be included.
  /// [labels] Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  /// [location] Optional.
  /// [managedServiceConfigs] Optional. Service Configuration files. At least one must be included when using gRPC service definitions. See https://cloud.google.com/endpoints/docs/grpc/grpc-service-config#service_configuration_overview for the expected file contents. If multiple files are specified, the files are merged with the following rules: * All singular scalar fields are merged using "last one wins" semantics in the order of the files uploaded. * Repeated fields are concatenated. * Singular embedded messages are merged using these rules for nested fields.
  /// [openapiDocuments] Optional. OpenAPI specification documents. If specified, grpc_services and managed_service_configs must not be included.
  /// [project] Optional.
  const ConfigArgs({
    required this.apiConfigId,
    required this.apiId,
    this.displayName,
    this.gatewayServiceAccount,
    this.grpcServices,
    this.labels,
    this.location,
    this.managedServiceConfigs,
    this.openapiDocuments,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiConfigId': apiConfigId,
      'apiId': apiId,
      'displayName': ?displayName,
      'gatewayServiceAccount': ?gatewayServiceAccount,
      'grpcServices': ?pulumi.Input.mapOptionalInputValue<List<ApigatewayApiConfigGrpcServiceDefinition>, List<Map<String, dynamic>>>(grpcServices, (value) => pulumi.Input.encodeList<ApigatewayApiConfigGrpcServiceDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
      'location': ?location,
      'managedServiceConfigs': ?pulumi.Input.mapOptionalInputValue<List<ApigatewayApiConfigFile>, List<Map<String, dynamic>>>(managedServiceConfigs, (value) => pulumi.Input.encodeList<ApigatewayApiConfigFile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'openapiDocuments': ?pulumi.Input.mapOptionalInputValue<List<ApigatewayApiConfigOpenApiDocument>, List<Map<String, dynamic>>>(openapiDocuments, (value) => pulumi.Input.encodeList<ApigatewayApiConfigOpenApiDocument, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
    };
  }

  factory ConfigArgs.fromMap(Map<String, dynamic> map) {
    return ConfigArgs(
      apiConfigId: pulumi.Input.fromValue(map['apiConfigId'] as String),
      apiId: pulumi.Input.fromValue(map['apiId'] as String),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayServiceAccount: (() { final guardedValue = map['gatewayServiceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      grpcServices: (() { final guardedValue = map['grpcServices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApigatewayApiConfigGrpcServiceDefinition>(guardedValue, (value) => ApigatewayApiConfigGrpcServiceDefinition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedServiceConfigs: (() { final guardedValue = map['managedServiceConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApigatewayApiConfigFile>(guardedValue, (value) => ApigatewayApiConfigFile.fromMap((value as Map).cast<String, dynamic>()))); })(),
      openapiDocuments: (() { final guardedValue = map['openapiDocuments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApigatewayApiConfigOpenApiDocument>(guardedValue, (value) => ApigatewayApiConfigOpenApiDocument.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
