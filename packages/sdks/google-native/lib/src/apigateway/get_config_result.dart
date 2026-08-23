// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apigateway_api_config_file_response.dart';
import 'apigateway_api_config_grpc_service_definition_response.dart';
import 'apigateway_api_config_open_api_document_response.dart';

/// Result data returned by getConfig.
class GetConfigResult {
  /// Created time.
  final String createTime;
  /// Optional. Display name.
  final String displayName;
  /// Immutable. The Google Cloud IAM Service Account that Gateways serving this config should use to authenticate to other services. This may either be the Service Account's email (`{ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com`) or its full resource name (`projects/{PROJECT}/accounts/{UNIQUE_ID}`). This is most often used when the service is a GCP resource such as a Cloud Run Service or an IAP-secured service.
  final String gatewayServiceAccount;
  /// Optional. gRPC service definition files. If specified, openapi_documents must not be included.
  final List<ApigatewayApiConfigGrpcServiceDefinitionResponse> grpcServices;
  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final Map<String, String> labels;
  /// Optional. Service Configuration files. At least one must be included when using gRPC service definitions. See https://cloud.google.com/endpoints/docs/grpc/grpc-service-config#service_configuration_overview for the expected file contents. If multiple files are specified, the files are merged with the following rules: * All singular scalar fields are merged using "last one wins" semantics in the order of the files uploaded. * Repeated fields are concatenated. * Singular embedded messages are merged using these rules for nested fields.
  final List<ApigatewayApiConfigFileResponse> managedServiceConfigs;
  /// Resource name of the API Config. Format: projects/{project}/locations/global/apis/{api}/configs/{api_config}
  final String name;
  /// Optional. OpenAPI specification documents. If specified, grpc_services and managed_service_configs must not be included.
  final List<ApigatewayApiConfigOpenApiDocumentResponse> openapiDocuments;
  /// The ID of the associated Service Config ( https://cloud.google.com/service-infrastructure/docs/glossary#config).
  final String serviceConfigId;
  /// State of the API Config.
  final String state;
  /// Updated time.
  final String updateTime;

  /// Creates a new [GetConfigResult].
  /// [createTime] Created time.
  /// [displayName] Optional. Display name.
  /// [gatewayServiceAccount] Immutable. The Google Cloud IAM Service Account that Gateways serving this config should use to authenticate to other services. This may either be the Service Account's email (`{ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com`) or its full resource name (`projects/{PROJECT}/accounts/{UNIQUE_ID}`). This is most often used when the service is a GCP resource such as a Cloud Run Service or an IAP-secured service.
  /// [grpcServices] Optional. gRPC service definition files. If specified, openapi_documents must not be included.
  /// [labels] Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  /// [managedServiceConfigs] Optional. Service Configuration files. At least one must be included when using gRPC service definitions. See https://cloud.google.com/endpoints/docs/grpc/grpc-service-config#service_configuration_overview for the expected file contents. If multiple files are specified, the files are merged with the following rules: * All singular scalar fields are merged using "last one wins" semantics in the order of the files uploaded. * Repeated fields are concatenated. * Singular embedded messages are merged using these rules for nested fields.
  /// [name] Resource name of the API Config. Format: projects/{project}/locations/global/apis/{api}/configs/{api_config}
  /// [openapiDocuments] Optional. OpenAPI specification documents. If specified, grpc_services and managed_service_configs must not be included.
  /// [serviceConfigId] The ID of the associated Service Config ( https://cloud.google.com/service-infrastructure/docs/glossary#config).
  /// [state] State of the API Config.
  /// [updateTime] Updated time.
  const GetConfigResult({
    required this.createTime,
    required this.displayName,
    required this.gatewayServiceAccount,
    required this.grpcServices,
    required this.labels,
    required this.managedServiceConfigs,
    required this.name,
    required this.openapiDocuments,
    required this.serviceConfigId,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'displayName': displayName,
      'gatewayServiceAccount': gatewayServiceAccount,
      'grpcServices': pulumi.Input.encodeList<ApigatewayApiConfigGrpcServiceDefinitionResponse, Map<String, dynamic>>(grpcServices, (value) => value.toMap()),
      'labels': labels,
      'managedServiceConfigs': pulumi.Input.encodeList<ApigatewayApiConfigFileResponse, Map<String, dynamic>>(managedServiceConfigs, (value) => value.toMap()),
      'name': name,
      'openapiDocuments': pulumi.Input.encodeList<ApigatewayApiConfigOpenApiDocumentResponse, Map<String, dynamic>>(openapiDocuments, (value) => value.toMap()),
      'serviceConfigId': serviceConfigId,
      'state': state,
      'updateTime': updateTime,
    };
  }

  factory GetConfigResult.fromMap(Map<String, dynamic> map) {
    return GetConfigResult(
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      gatewayServiceAccount: map['gatewayServiceAccount'] as String,
      grpcServices: pulumi.Input.decodeList<ApigatewayApiConfigGrpcServiceDefinitionResponse>(map['grpcServices']!, (value) => ApigatewayApiConfigGrpcServiceDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())),
      labels: (map['labels'] as Map).cast<String, String>(),
      managedServiceConfigs: pulumi.Input.decodeList<ApigatewayApiConfigFileResponse>(map['managedServiceConfigs']!, (value) => ApigatewayApiConfigFileResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      openapiDocuments: pulumi.Input.decodeList<ApigatewayApiConfigOpenApiDocumentResponse>(map['openapiDocuments']!, (value) => ApigatewayApiConfigOpenApiDocumentResponse.fromMap((value as Map).cast<String, dynamic>())),
      serviceConfigId: map['serviceConfigId'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
