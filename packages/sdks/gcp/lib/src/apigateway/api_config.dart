import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_config_args.dart';
import 'api_config_gateway_config.dart';
import 'api_config_grpc_service.dart';
import 'api_config_managed_service_config.dart';
import 'api_config_openapi_document.dart';
import 'api_config_state.dart';

/// An API Configuration is an association of an API Controller Config and a Gateway Config
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// To get more information about ApiConfig, see:
///
/// * [API documentation](https://cloud.google.com/api-gateway/docs/reference/rest/v1beta/projects.locations.apis.configs)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/api-gateway/docs/creating-api-config)
///
/// ## Example Usage
///
/// ## Import
///
/// ApiConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/apis/{{api}}/configs/{{api_config_id}}`
/// * `{{project}}/{{api}}/{{api_config_id}}`
/// * `{{api}}/{{api_config_id}}`
///
///
/// When using the `pulumi import` command, ApiConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigateway/apiConfig:ApiConfig default projects/{{project}}/locations/global/apis/{{api}}/configs/{{api_config_id}}
/// $ pulumi import gcp:apigateway/apiConfig:ApiConfig default {{project}}/{{api}}/{{api_config_id}}
/// $ pulumi import gcp:apigateway/apiConfig:ApiConfig default {{api}}/{{api_config_id}}
/// ```
class ApiConfig extends pulumi.CustomResource {
  /// The API to attach the config to.
  late final pulumi.Output<String> api;
  /// Identifier to assign to the API Config. Must be unique within scope of the parent resource(api).
  late final pulumi.Output<String> apiConfigId;
  /// Creates a unique name beginning with the
  /// specified prefix. If this and apiConfigId are unspecified, a random value is chosen for the name.
  late final pulumi.Output<String> apiConfigIdPrefix;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A user-visible name for the API.
  late final pulumi.Output<String> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Immutable. Gateway specific configuration.
  /// If not specified, backend authentication will be set to use OIDC authentication using the default compute service account
  /// Structure is documented below.
  late final pulumi.Output<ApiConfigGatewayConfig?> gatewayConfig;
  /// gRPC service definition files. If specified, openapiDocuments must not be included.
  /// Structure is documented below.
  late final pulumi.Output<List<ApiConfigGrpcService>?> grpcServices;
  /// Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Optional. Service Configuration files. At least one must be included when using gRPC service definitions. See https://cloud.google.com/endpoints/docs/grpc/grpc-service-config#service_configuration_overview for the expected file contents.
  /// If multiple files are specified, the files are merged with the following rules: * All singular scalar fields are merged using "last one wins" semantics in the order of the files uploaded. * Repeated fields are concatenated. * Singular embedded messages are merged using these rules for nested fields.
  /// Structure is documented below.
  late final pulumi.Output<List<ApiConfigManagedServiceConfig>?> managedServiceConfigs;
  /// The resource name of the API Config.
  late final pulumi.Output<String> name;
  /// OpenAPI specification documents. If specified, grpcServices and managedServiceConfigs must not be included.
  /// Structure is documented below.
  late final pulumi.Output<List<ApiConfigOpenapiDocument>?> openapiDocuments;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The ID of the associated Service Config (https://cloud.google.com/service-infrastructure/docs/glossary#config).
  late final pulumi.Output<String> serviceConfigId;

  /// Creates a new [ApiConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiConfig]. {@macro pulumi_apigateway_api_config_api_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiConfig(
    String name, {
    ApiConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigateway/apiConfig:ApiConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    api = registerOutput<String>('api');
    apiConfigId = registerOutput<String>('apiConfigId');
    apiConfigIdPrefix = registerOutput<String>('apiConfigIdPrefix');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    gatewayConfig = registerOutput<ApiConfigGatewayConfig?>('gatewayConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiConfigGatewayConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    grpcServices = registerOutput<List<ApiConfigGrpcService>?>('grpcServices', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApiConfigGrpcService>(guardedValue, (value) => ApiConfigGrpcService.fromMap((value as Map).cast<String, dynamic>())); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    managedServiceConfigs = registerOutput<List<ApiConfigManagedServiceConfig>?>('managedServiceConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApiConfigManagedServiceConfig>(guardedValue, (value) => ApiConfigManagedServiceConfig.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    openapiDocuments = registerOutput<List<ApiConfigOpenapiDocument>?>('openapiDocuments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApiConfigOpenapiDocument>(guardedValue, (value) => ApiConfigOpenapiDocument.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    serviceConfigId = registerOutput<String>('serviceConfigId');
  }

  /// Gets an existing [ApiConfig] resource's state with the given [name] and [id].
  static ApiConfig get(
    String name,
    pulumi.Input<String> id, {
    ApiConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ApiConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ApiConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigateway/apiConfig:ApiConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    api = registerOutput<String>('api');
    apiConfigId = registerOutput<String>('apiConfigId');
    apiConfigIdPrefix = registerOutput<String>('apiConfigIdPrefix');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    gatewayConfig = registerOutput<ApiConfigGatewayConfig?>('gatewayConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiConfigGatewayConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    grpcServices = registerOutput<List<ApiConfigGrpcService>?>('grpcServices', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApiConfigGrpcService>(guardedValue, (value) => ApiConfigGrpcService.fromMap((value as Map).cast<String, dynamic>())); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    managedServiceConfigs = registerOutput<List<ApiConfigManagedServiceConfig>?>('managedServiceConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApiConfigManagedServiceConfig>(guardedValue, (value) => ApiConfigManagedServiceConfig.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    openapiDocuments = registerOutput<List<ApiConfigOpenapiDocument>?>('openapiDocuments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApiConfigOpenapiDocument>(guardedValue, (value) => ApiConfigOpenapiDocument.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    serviceConfigId = registerOutput<String>('serviceConfigId');
  }

  /// Creates a typed reference to an existing [ApiConfig] resource.
  ApiConfig.reference(String urn)
    : super(
        'gcp:apigateway/apiConfig:ApiConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    api = registerOutput<String>('api');
    apiConfigId = registerOutput<String>('apiConfigId');
    apiConfigIdPrefix = registerOutput<String>('apiConfigIdPrefix');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    gatewayConfig = registerOutput<ApiConfigGatewayConfig?>('gatewayConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiConfigGatewayConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    grpcServices = registerOutput<List<ApiConfigGrpcService>?>('grpcServices', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApiConfigGrpcService>(guardedValue, (value) => ApiConfigGrpcService.fromMap((value as Map).cast<String, dynamic>())); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    managedServiceConfigs = registerOutput<List<ApiConfigManagedServiceConfig>?>('managedServiceConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApiConfigManagedServiceConfig>(guardedValue, (value) => ApiConfigManagedServiceConfig.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    openapiDocuments = registerOutput<List<ApiConfigOpenapiDocument>?>('openapiDocuments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApiConfigOpenapiDocument>(guardedValue, (value) => ApiConfigOpenapiDocument.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    serviceConfigId = registerOutput<String>('serviceConfigId');
  }
}
