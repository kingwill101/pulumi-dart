// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_config_gateway_config.dart';
import 'api_config_grpc_service.dart';
import 'api_config_managed_service_config.dart';
import 'api_config_openapi_document.dart';

/// Input properties used for looking up and filtering ApiConfig resources.
class ApiConfigState {
  /// The API to attach the config to.
  final pulumi.Input<String>? api;
  /// Identifier to assign to the API Config. Must be unique within scope of the parent resource(api).
  final pulumi.Input<String>? apiConfigId;
  /// Creates a unique name beginning with the
  /// specified prefix. If this and api_config_id are unspecified, a random value is chosen for the name.
  final pulumi.Input<String>? apiConfigIdPrefix;
  /// A user-visible name for the API.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
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
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Optional. Service Configuration files. At least one must be included when using gRPC service definitions. See https://cloud.google.com/endpoints/docs/grpc/grpc-service-config#service_configuration_overview for the expected file contents.
  /// If multiple files are specified, the files are merged with the following rules: * All singular scalar fields are merged using "last one wins" semantics in the order of the files uploaded. * Repeated fields are concatenated. * Singular embedded messages are merged using these rules for nested fields.
  /// Structure is documented below.
  final pulumi.Input<List<ApiConfigManagedServiceConfig>>? managedServiceConfigs;
  /// The resource name of the API Config.
  final pulumi.Input<String>? name;
  /// OpenAPI specification documents. If specified, grpcServices and managedServiceConfigs must not be included.
  /// Structure is documented below.
  final pulumi.Input<List<ApiConfigOpenapiDocument>>? openapiDocuments;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The ID of the associated Service Config (https://cloud.google.com/service-infrastructure/docs/glossary#config).
  final pulumi.Input<String>? serviceConfigId;

  /// Creates a new [ApiConfigState].
  /// [api] The API to attach the config to.
  /// [apiConfigId] Identifier to assign to the API Config. Must be unique within scope of the parent resource(api).
  /// [apiConfigIdPrefix] Creates a unique name beginning with the
  /// [displayName] A user-visible name for the API.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [gatewayConfig] Immutable. Gateway specific configuration.
  /// [grpcServices] gRPC service definition files. If specified, openapiDocuments must not be included.
  /// [labels] Resource labels to represent user-provided metadata.
  /// [managedServiceConfigs] Optional. Service Configuration files. At least one must be included when using gRPC service definitions. See https://cloud.google.com/endpoints/docs/grpc/grpc-service-config#service_configuration_overview for the expected file contents.
  /// [name] The resource name of the API Config.
  /// [openapiDocuments] OpenAPI specification documents. If specified, grpcServices and managedServiceConfigs must not be included.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [serviceConfigId] The ID of the associated Service Config (https://cloud.google.com/service-infrastructure/docs/glossary#config).
  ApiConfigState({
    pulumi.Output<String>? api,
    pulumi.Output<String>? apiConfigId,
    pulumi.Output<String>? apiConfigIdPrefix,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<ApiConfigGatewayConfig>? gatewayConfig,
    pulumi.Output<List<ApiConfigGrpcService>>? grpcServices,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<List<ApiConfigManagedServiceConfig>>? managedServiceConfigs,
    pulumi.Output<String>? name,
    pulumi.Output<List<ApiConfigOpenapiDocument>>? openapiDocuments,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? serviceConfigId,
  }) :
      api = pulumi.Input.asOptionalInput<String>(api),
      apiConfigId = pulumi.Input.asOptionalInput<String>(apiConfigId),
      apiConfigIdPrefix = pulumi.Input.asOptionalInput<String>(apiConfigIdPrefix),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      gatewayConfig = pulumi.Input.asOptionalInput<ApiConfigGatewayConfig>(gatewayConfig),
      grpcServices = pulumi.Input.asOptionalInput<List<ApiConfigGrpcService>>(grpcServices),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      managedServiceConfigs = pulumi.Input.asOptionalInput<List<ApiConfigManagedServiceConfig>>(managedServiceConfigs),
      name = pulumi.Input.asOptionalInput<String>(name),
      openapiDocuments = pulumi.Input.asOptionalInput<List<ApiConfigOpenapiDocument>>(openapiDocuments),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      serviceConfigId = pulumi.Input.asOptionalInput<String>(serviceConfigId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'api': ?api,
      'apiConfigId': ?apiConfigId,
      'apiConfigIdPrefix': ?apiConfigIdPrefix,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'gatewayConfig': ?pulumi.Input.mapOptionalInputValue<ApiConfigGatewayConfig, Map<String, dynamic>>(gatewayConfig, (value) => value.toMap()),
      'grpcServices': ?pulumi.Input.mapOptionalInputValue<List<ApiConfigGrpcService>, List<Map<String, dynamic>>>(grpcServices, (value) => pulumi.Input.encodeList<ApiConfigGrpcService, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
      'managedServiceConfigs': ?pulumi.Input.mapOptionalInputValue<List<ApiConfigManagedServiceConfig>, List<Map<String, dynamic>>>(managedServiceConfigs, (value) => pulumi.Input.encodeList<ApiConfigManagedServiceConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'openapiDocuments': ?pulumi.Input.mapOptionalInputValue<List<ApiConfigOpenapiDocument>, List<Map<String, dynamic>>>(openapiDocuments, (value) => pulumi.Input.encodeList<ApiConfigOpenapiDocument, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'serviceConfigId': ?serviceConfigId,
    };
  }

  factory ApiConfigState.fromMap(Map<String, dynamic> map) {
    return ApiConfigState(
      api: map['api'] == null ? null : pulumi.Output.create<String>(map['api'] as String),
      apiConfigId: map['apiConfigId'] == null ? null : pulumi.Output.create<String>(map['apiConfigId'] as String),
      apiConfigIdPrefix: map['apiConfigIdPrefix'] == null ? null : pulumi.Output.create<String>(map['apiConfigIdPrefix'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      gatewayConfig: map['gatewayConfig'] == null ? null : pulumi.Output.create<ApiConfigGatewayConfig>(ApiConfigGatewayConfig.fromMap((map['gatewayConfig'] as Map).cast<String, dynamic>())),
      grpcServices: map['grpcServices'] == null ? null : pulumi.Output.create<List<ApiConfigGrpcService>>(pulumi.Input.decodeList<ApiConfigGrpcService>(map['grpcServices'], (value) => ApiConfigGrpcService.fromMap((value as Map).cast<String, dynamic>()))),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      managedServiceConfigs: map['managedServiceConfigs'] == null ? null : pulumi.Output.create<List<ApiConfigManagedServiceConfig>>(pulumi.Input.decodeList<ApiConfigManagedServiceConfig>(map['managedServiceConfigs'], (value) => ApiConfigManagedServiceConfig.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      openapiDocuments: map['openapiDocuments'] == null ? null : pulumi.Output.create<List<ApiConfigOpenapiDocument>>(pulumi.Input.decodeList<ApiConfigOpenapiDocument>(map['openapiDocuments'], (value) => ApiConfigOpenapiDocument.fromMap((value as Map).cast<String, dynamic>()))),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      serviceConfigId: map['serviceConfigId'] == null ? null : pulumi.Output.create<String>(map['serviceConfigId'] as String),
    );
  }
}

