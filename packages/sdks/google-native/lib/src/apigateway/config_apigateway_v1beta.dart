import 'package:pulumi/pulumi.dart' as pulumi;
import 'apigateway_gateway_config_response.dart';
import 'config_apigateway_v1beta_args.dart';

/// Creates a new ApiConfig in a given project and location.
/// Auto-naming is currently not supported for this resource.
class ConfigApigatewayV1beta extends pulumi.CustomResource {
  /// Required. Identifier to assign to the API Config. Must be unique within scope of the parent resource.
  late final pulumi.Output<String> apiConfigId;
  late final pulumi.Output<String> apiId;

  /// Created time.
  late final pulumi.Output<String> createTime;

  /// Optional. Display name.
  late final pulumi.Output<String> displayName;

  /// Immutable. Gateway specific configuration.
  late final pulumi.Output<ApigatewayGatewayConfigResponse> gatewayConfig;

  /// Immutable. The Google Cloud IAM Service Account that Gateways serving this config should use to authenticate to other services. This may either be the Service Account's email (`{ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com`) or its full resource name (`projects/{PROJECT}/accounts/{UNIQUE_ID}`). This is most often used when the service is a GCP resource such as a Cloud Run Service or an IAP-secured service.
  late final pulumi.Output<String> gatewayServiceAccount;

  /// Optional. gRPC service definition files. If specified, openapi_documents must not be included.
  late final pulumi.Output<List<Map<String, dynamic>>> grpcServices;

  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Optional. Service Configuration files. At least one must be included when using gRPC service definitions. See https://cloud.google.com/endpoints/docs/grpc/grpc-service-config#service_configuration_overview for the expected file contents. If multiple files are specified, the files are merged with the following rules: * All singular scalar fields are merged using "last one wins" semantics in the order of the files uploaded. * Repeated fields are concatenated. * Singular embedded messages are merged using these rules for nested fields.
  late final pulumi.Output<List<Map<String, dynamic>>> managedServiceConfigs;

  /// Resource name of the API Config. Format: projects/{project}/locations/global/apis/{api}/configs/{api_config}
  late final pulumi.Output<String> name;

  /// Optional. OpenAPI specification documents. If specified, grpc_services and managed_service_configs must not be included.
  late final pulumi.Output<List<Map<String, dynamic>>> openapiDocuments;
  late final pulumi.Output<String> project;

  /// The ID of the associated Service Config ( https://cloud.google.com/service-infrastructure/docs/glossary#config).
  late final pulumi.Output<String> serviceConfigId;

  /// State of the API Config.
  late final pulumi.Output<String> state;

  /// Updated time.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ConfigApigatewayV1beta].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConfigApigatewayV1beta]. {@macro pulumi_apigateway_v1beta_config_apigateway_v1beta_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConfigApigatewayV1beta(
    String name, {
    ConfigApigatewayV1betaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:apigateway/v1beta:Config',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiConfigId = registerOutput<String>('apiConfigId');
    apiId = registerOutput<String>('apiId');
    createTime = registerOutput<String>('createTime');
    displayName = registerOutput<String>('displayName');
    gatewayConfig = registerOutput<ApigatewayGatewayConfigResponse>(
      'gatewayConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ApigatewayGatewayConfigResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    gatewayServiceAccount = registerOutput<String>('gatewayServiceAccount');
    grpcServices = registerOutput<List<Map<String, dynamic>>>('grpcServices');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    managedServiceConfigs = registerOutput<List<Map<String, dynamic>>>(
      'managedServiceConfigs',
    );
    this.name = registerOutput<String>('name');
    openapiDocuments = registerOutput<List<Map<String, dynamic>>>(
      'openapiDocuments',
    );
    project = registerOutput<String>('project');
    serviceConfigId = registerOutput<String>('serviceConfigId');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }
}
