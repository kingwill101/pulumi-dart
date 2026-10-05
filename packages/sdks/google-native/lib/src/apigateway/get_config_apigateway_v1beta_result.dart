// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apigateway_api_config_file_response_apigateway_v1beta.dart';
import 'apigateway_api_config_grpc_service_definition_response_apigateway_v1beta.dart';
import 'apigateway_api_config_open_api_document_response_apigateway_v1beta.dart';
import 'apigateway_gateway_config_response.dart';

/// Result data returned by getConfig.
class GetConfigApigatewayV1betaResult {
  /// Created time.
  final String? createTime;
  /// Optional. Display name.
  final String? displayName;
  /// Immutable. Gateway specific configuration.
  final ApigatewayGatewayConfigResponse? gatewayConfig;
  /// Immutable. The Google Cloud IAM Service Account that Gateways serving this config should use to authenticate to other services. This may either be the Service Account's email (`{ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com`) or its full resource name (`projects/{PROJECT}/accounts/{UNIQUE_ID}`). This is most often used when the service is a GCP resource such as a Cloud Run Service or an IAP-secured service.
  final String? gatewayServiceAccount;
  /// Optional. gRPC service definition files. If specified, openapi_documents must not be included.
  final List<ApigatewayApiConfigGrpcServiceDefinitionResponseApigatewayV1beta>? grpcServices;
  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final Map<String, String>? labels;
  /// Optional. Service Configuration files. At least one must be included when using gRPC service definitions. See https://cloud.google.com/endpoints/docs/grpc/grpc-service-config#service_configuration_overview for the expected file contents. If multiple files are specified, the files are merged with the following rules: * All singular scalar fields are merged using "last one wins" semantics in the order of the files uploaded. * Repeated fields are concatenated. * Singular embedded messages are merged using these rules for nested fields.
  final List<ApigatewayApiConfigFileResponseApigatewayV1beta>? managedServiceConfigs;
  /// Resource name of the API Config. Format: projects/{project}/locations/global/apis/{api}/configs/{api_config}
  final String? name;
  /// Optional. OpenAPI specification documents. If specified, grpc_services and managed_service_configs must not be included.
  final List<ApigatewayApiConfigOpenApiDocumentResponseApigatewayV1beta>? openapiDocuments;
  /// The ID of the associated Service Config ( https://cloud.google.com/service-infrastructure/docs/glossary#config).
  final String? serviceConfigId;
  /// State of the API Config.
  final String? state;
  /// Updated time.
  final String? updateTime;

  /// Creates a new [GetConfigApigatewayV1betaResult].
  /// [createTime] Created time.
  /// [displayName] Optional. Display name.
  /// [gatewayConfig] Immutable. Gateway specific configuration.
  /// [gatewayServiceAccount] Immutable. The Google Cloud IAM Service Account that Gateways serving this config should use to authenticate to other services. This may either be the Service Account's email (`{ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com`) or its full resource name (`projects/{PROJECT}/accounts/{UNIQUE_ID}`). This is most often used when the service is a GCP resource such as a Cloud Run Service or an IAP-secured service.
  /// [grpcServices] Optional. gRPC service definition files. If specified, openapi_documents must not be included.
  /// [labels] Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  /// [managedServiceConfigs] Optional. Service Configuration files. At least one must be included when using gRPC service definitions. See https://cloud.google.com/endpoints/docs/grpc/grpc-service-config#service_configuration_overview for the expected file contents. If multiple files are specified, the files are merged with the following rules: * All singular scalar fields are merged using "last one wins" semantics in the order of the files uploaded. * Repeated fields are concatenated. * Singular embedded messages are merged using these rules for nested fields.
  /// [name] Resource name of the API Config. Format: projects/{project}/locations/global/apis/{api}/configs/{api_config}
  /// [openapiDocuments] Optional. OpenAPI specification documents. If specified, grpc_services and managed_service_configs must not be included.
  /// [serviceConfigId] The ID of the associated Service Config ( https://cloud.google.com/service-infrastructure/docs/glossary#config).
  /// [state] State of the API Config.
  /// [updateTime] Updated time.
  const GetConfigApigatewayV1betaResult({
    this.createTime,
    this.displayName,
    this.gatewayConfig,
    this.gatewayServiceAccount,
    this.grpcServices,
    this.labels,
    this.managedServiceConfigs,
    this.name,
    this.openapiDocuments,
    this.serviceConfigId,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'displayName': ?displayName,
      'gatewayConfig': ?gatewayConfig?.toMap(),
      'gatewayServiceAccount': ?gatewayServiceAccount,
      'grpcServices': ?(() { final guardedValue = grpcServices; if (guardedValue == null) return null; return pulumi.Input.encodeList<ApigatewayApiConfigGrpcServiceDefinitionResponseApigatewayV1beta, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'labels': ?labels,
      'managedServiceConfigs': ?(() { final guardedValue = managedServiceConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<ApigatewayApiConfigFileResponseApigatewayV1beta, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'openapiDocuments': ?(() { final guardedValue = openapiDocuments; if (guardedValue == null) return null; return pulumi.Input.encodeList<ApigatewayApiConfigOpenApiDocumentResponseApigatewayV1beta, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'serviceConfigId': ?serviceConfigId,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory GetConfigApigatewayV1betaResult.fromMap(Map<String, dynamic> map) {
    return GetConfigApigatewayV1betaResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gatewayConfig: (() { final guardedValue = map['gatewayConfig']; if (guardedValue == null) return null; return ApigatewayGatewayConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      gatewayServiceAccount: (() { final guardedValue = map['gatewayServiceAccount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      grpcServices: (() { final guardedValue = map['grpcServices']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApigatewayApiConfigGrpcServiceDefinitionResponseApigatewayV1beta>(guardedValue, (value) => ApigatewayApiConfigGrpcServiceDefinitionResponseApigatewayV1beta.fromMap((value as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      managedServiceConfigs: (() { final guardedValue = map['managedServiceConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApigatewayApiConfigFileResponseApigatewayV1beta>(guardedValue, (value) => ApigatewayApiConfigFileResponseApigatewayV1beta.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      openapiDocuments: (() { final guardedValue = map['openapiDocuments']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApigatewayApiConfigOpenApiDocumentResponseApigatewayV1beta>(guardedValue, (value) => ApigatewayApiConfigOpenApiDocumentResponseApigatewayV1beta.fromMap((value as Map).cast<String, dynamic>())); })(),
      serviceConfigId: (() { final guardedValue = map['serviceConfigId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
