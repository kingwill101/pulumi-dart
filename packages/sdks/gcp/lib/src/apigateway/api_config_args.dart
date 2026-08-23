// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_config_gateway_config.dart';
import 'api_config_grpc_service.dart';
import 'api_config_managed_service_config.dart';
import 'api_config_openapi_document.dart';

/// {@template pulumi_apigateway_api_config_api_config_args_doc}
/// The set of arguments for ApiConfig.
/// {@endtemplate}
/// {@macro pulumi_apigateway_api_config_api_config_args_doc}
class ApiConfigArgs {
  /// The API to attach the config to.
  final pulumi.Input<String> api;
  /// Identifier to assign to the API Config. Must be unique within scope of the parent resource(api).
  final pulumi.Input<String>? apiConfigId;
  /// Creates a unique name beginning with the
  /// specified prefix. If this and apiConfigId are unspecified, a random value is chosen for the name.
  final pulumi.Input<String>? apiConfigIdPrefix;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// A user-visible name for the API.
  final pulumi.Input<String>? displayName;
  /// Immutable. Gateway specific configuration.
  /// If not specified, backend authentication will be set to use OIDC authentication using the default compute service account
  /// Structure is documented below.
  final pulumi.Input<ApiConfigGatewayConfig>? gatewayConfig;
  /// gRPC service definition files. If specified, openapiDocuments must not be included.
  /// Structure is documented below.
  final pulumi.Input<List<ApiConfigGrpcService>>? grpcServices;
  /// Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Optional. Service Configuration files. At least one must be included when using gRPC service definitions. See https://cloud.google.com/endpoints/docs/grpc/grpc-service-config#service_configuration_overview for the expected file contents.
  /// If multiple files are specified, the files are merged with the following rules: * All singular scalar fields are merged using "last one wins" semantics in the order of the files uploaded. * Repeated fields are concatenated. * Singular embedded messages are merged using these rules for nested fields.
  /// Structure is documented below.
  final pulumi.Input<List<ApiConfigManagedServiceConfig>>? managedServiceConfigs;
  /// OpenAPI specification documents. If specified, grpcServices and managedServiceConfigs must not be included.
  /// Structure is documented below.
  final pulumi.Input<List<ApiConfigOpenapiDocument>>? openapiDocuments;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ApiConfigArgs].
  /// [api] The API to attach the config to.
  /// [apiConfigId] Identifier to assign to the API Config. Must be unique within scope of the parent resource(api).
  /// [apiConfigIdPrefix] Creates a unique name beginning with the
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] A user-visible name for the API.
  /// [gatewayConfig] Immutable. Gateway specific configuration.
  /// [grpcServices] gRPC service definition files. If specified, openapiDocuments must not be included.
  /// [labels] Resource labels to represent user-provided metadata.
  /// [managedServiceConfigs] Optional. Service Configuration files. At least one must be included when using gRPC service definitions. See https://cloud.google.com/endpoints/docs/grpc/grpc-service-config#service_configuration_overview for the expected file contents.
  /// [openapiDocuments] OpenAPI specification documents. If specified, grpcServices and managedServiceConfigs must not be included.
  /// [project] The ID of the project in which the resource belongs.
  const ApiConfigArgs({
    required this.api,
    this.apiConfigId,
    this.apiConfigIdPrefix,
    this.deletionPolicy,
    this.displayName,
    this.gatewayConfig,
    this.grpcServices,
    this.labels,
    this.managedServiceConfigs,
    this.openapiDocuments,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'api': api,
      'apiConfigId': ?apiConfigId,
      'apiConfigIdPrefix': ?apiConfigIdPrefix,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'gatewayConfig': ?pulumi.Input.mapOptionalInputValue<ApiConfigGatewayConfig, Map<String, dynamic>>(gatewayConfig, (value) => value.toMap()),
      'grpcServices': ?pulumi.Input.mapOptionalInputValue<List<ApiConfigGrpcService>, List<Map<String, dynamic>>>(grpcServices, (value) => pulumi.Input.encodeList<ApiConfigGrpcService, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
      'managedServiceConfigs': ?pulumi.Input.mapOptionalInputValue<List<ApiConfigManagedServiceConfig>, List<Map<String, dynamic>>>(managedServiceConfigs, (value) => pulumi.Input.encodeList<ApiConfigManagedServiceConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'openapiDocuments': ?pulumi.Input.mapOptionalInputValue<List<ApiConfigOpenapiDocument>, List<Map<String, dynamic>>>(openapiDocuments, (value) => pulumi.Input.encodeList<ApiConfigOpenapiDocument, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
    };
  }

  factory ApiConfigArgs.fromMap(Map<String, dynamic> map) {
    return ApiConfigArgs(
      api: pulumi.Input.fromValue(map['api'] as String),
      apiConfigId: (() { final guardedValue = map['apiConfigId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiConfigIdPrefix: (() { final guardedValue = map['apiConfigIdPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayConfig: (() { final guardedValue = map['gatewayConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiConfigGatewayConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      grpcServices: (() { final guardedValue = map['grpcServices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApiConfigGrpcService>(guardedValue, (value) => ApiConfigGrpcService.fromMap((value as Map).cast<String, dynamic>()))); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      managedServiceConfigs: (() { final guardedValue = map['managedServiceConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApiConfigManagedServiceConfig>(guardedValue, (value) => ApiConfigManagedServiceConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      openapiDocuments: (() { final guardedValue = map['openapiDocuments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApiConfigOpenapiDocument>(guardedValue, (value) => ApiConfigOpenapiDocument.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
