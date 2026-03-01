import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_product_args.dart';
import 'google_cloud_apigee_v1_attribute_response.dart';
import 'google_cloud_apigee_v1_graph_qloperation_group_response.dart';
import 'google_cloud_apigee_v1_grpc_operation_group_response.dart';
import 'google_cloud_apigee_v1_operation_group_response.dart';

/// Creates an API product in an organization. You create API products after you have proxied backend services using API proxies. An API product is a collection of API resources combined with quota settings and metadata that you can use to deliver customized and productized API bundles to your developer community. This metadata can include: - Scope - Environments - API proxies - Extensible profile API products enable you repackage APIs on the fly, without having to do any additional coding or configuration. Apigee recommends that you start with a simple API product including only required elements. You then provision credentials to apps to enable them to start testing your APIs. After you have authentication and authorization working against a simple API product, you can iterate to create finer-grained API products, defining different sets of API resources for each API product. **WARNING:** - If you don't specify an API proxy in the request body, *any* app associated with the product can make calls to *any* API in your entire organization. - If you don't specify an environment in the request body, the product allows access to all environments. For more information, see What is an API product?
class ApiProduct extends pulumi.CustomResource {
  /// Comma-separated list of API resources to be bundled in the API product. By default, the resource paths are mapped from the `proxy.pathsuffix` variable. The proxy path suffix is defined as the URI fragment following the ProxyEndpoint base path. For example, if the `apiResources` element is defined to be `/forecastrss` and the base path defined for the API proxy is `/weather`, then only requests to `/weather/forecastrss` are permitted by the API product. You can select a specific path, or you can select all subpaths with the following wildcard: - `/**`: Indicates that all sub-URIs are included. - `/*` : Indicates that only URIs one level down are included. By default, / supports the same resources as /** as well as the base path defined by the API proxy. For example, if the base path of the API proxy is `/v1/weatherapikey`, then the API product supports requests to `/v1/weatherapikey` and to any sub-URIs, such as `/v1/weatherapikey/forecastrss`, `/v1/weatherapikey/region/CA`, and so on. For more information, see Managing API products.
  late final pulumi.Output<List<String>> apiResources;
  /// Flag that specifies how API keys are approved to access the APIs defined by the API product. If set to `manual`, the consumer key is generated and returned in "pending" state. In this case, the API keys won't work until they have been explicitly approved. If set to `auto`, the consumer key is generated and returned in "approved" state and can be used immediately. **Note:** Typically, `auto` is used to provide access to free or trial API products that provide limited quota or capabilities.
  late final pulumi.Output<String> approvalType;
  /// Array of attributes that may be used to extend the default API product profile with customer-specific metadata. You can specify a maximum of 18 attributes. Use this property to specify the access level of the API product as either `public`, `private`, or `internal`. Only products marked `public` are available to developers in the Apigee developer portal. For example, you can set a product to `internal` while it is in development and then change access to `public` when it is ready to release on the portal. API products marked as `private` do not appear on the portal, but can be accessed by external developers.
  late final pulumi.Output<List<GoogleCloudApigeeV1AttributeResponse>> attributes;
  /// Response only. Creation time of this environment as milliseconds since epoch.
  late final pulumi.Output<String> createdAt;
  /// Description of the API product. Include key information about the API product that is not captured by other fields.
  late final pulumi.Output<String> description;
  /// Name displayed in the UI or developer portal to developers registering for API access.
  late final pulumi.Output<String> displayName;
  /// Comma-separated list of environment names to which the API product is bound. Requests to environments that are not listed are rejected. By specifying one or more environments, you can bind the resources listed in the API product to a specific environment, preventing developers from accessing those resources through API proxies deployed in another environment. This setting is used, for example, to prevent resources associated with API proxies in `prod` from being accessed by API proxies deployed in `test`.
  late final pulumi.Output<List<String>> environments;
  /// Configuration used to group Apigee proxies or remote services with graphQL operation name, graphQL operation type and quotas. This grouping allows us to precisely set quota for a particular combination of graphQL name and operation type for a particular proxy request. If graphQL name is not set, this would imply quota will be applied on all graphQL requests matching the operation type.
  late final pulumi.Output<GoogleCloudApigeeV1GraphQLOperationGroupResponse> graphqlOperationGroup;
  /// Optional. Configuration used to group Apigee proxies with gRPC services and method names. This grouping allows us to set quota for a particular proxy with the gRPC service name and method. If a method name is not set, this implies quota and authorization are applied to all gRPC methods implemented by that proxy for that particular gRPC service.
  late final pulumi.Output<GoogleCloudApigeeV1GrpcOperationGroupResponse> grpcOperationGroup;
  /// Response only. Modified time of this environment as milliseconds since epoch.
  late final pulumi.Output<String> lastModifiedAt;
  /// Internal name of the API product. Characters you can use in the name are restricted to: `A-Z0-9._\-$ %`. **Note:** The internal name cannot be edited when updating the API product.
  late final pulumi.Output<String> name;
  /// Configuration used to group Apigee proxies or remote services with resources, method types, and quotas. The resource refers to the resource URI (excluding the base path). With this grouping, the API product creator is able to fine-tune and give precise control over which REST methods have access to specific resources and how many calls can be made (using the `quota` setting). **Note:** The `api_resources` setting cannot be specified for both the API product and operation group; otherwise the call will fail.
  late final pulumi.Output<GoogleCloudApigeeV1OperationGroupResponse> operationGroup;
  late final pulumi.Output<String> organizationId;
  /// Comma-separated list of API proxy names to which this API product is bound. By specifying API proxies, you can associate resources in the API product with specific API proxies, preventing developers from accessing those resources through other API proxies. Apigee rejects requests to API proxies that are not listed. **Note:** The API proxy names must already exist in the specified environment as they will be validated upon creation.
  late final pulumi.Output<List<String>> proxies;
  /// Number of request messages permitted per app by this API product for the specified `quotaInterval` and `quotaTimeUnit`. For example, a `quota` of 50, for a `quotaInterval` of 12 and a `quotaTimeUnit` of hours means 50 requests are allowed every 12 hours.
  late final pulumi.Output<String> quota;
  /// Scope of the quota decides how the quota counter gets applied and evaluate for quota violation. If the Scope is set as PROXY, then all the operations defined for the APIproduct that are associated with the same proxy will share the same quota counter set at the APIproduct level, making it a global counter at a proxy level. If the Scope is set as OPERATION, then each operations get the counter set at the API product dedicated, making it a local counter. Note that, the QuotaCounterScope applies only when an operation does not have dedicated quota set for itself.
  late final pulumi.Output<String> quotaCounterScope;
  /// Time interval over which the number of request messages is calculated.
  late final pulumi.Output<String> quotaInterval;
  /// Time unit defined for the `quotaInterval`. Valid values include `minute`, `hour`, `day`, or `month`.
  late final pulumi.Output<String> quotaTimeUnit;
  /// Comma-separated list of OAuth scopes that are validated at runtime. Apigee validates that the scopes in any access token presented match the scopes defined in the OAuth policy associated with the API product.
  late final pulumi.Output<List<String>> scopes;

  /// Creates a new [ApiProduct].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiProduct]. {@macro pulumi_apigee_v1_api_product_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiProduct(
    String name, {
    ApiProductArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:ApiProduct',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiResources = registerOutput<List<String>>('apiResources');
    this.approvalType = registerOutput<String>('approvalType');
    this.attributes = registerOutput<List<GoogleCloudApigeeV1AttributeResponse>>('attributes');
    this.createdAt = registerOutput<String>('createdAt');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.environments = registerOutput<List<String>>('environments');
    this.graphqlOperationGroup = registerOutput<GoogleCloudApigeeV1GraphQLOperationGroupResponse>('graphqlOperationGroup');
    this.grpcOperationGroup = registerOutput<GoogleCloudApigeeV1GrpcOperationGroupResponse>('grpcOperationGroup');
    this.lastModifiedAt = registerOutput<String>('lastModifiedAt');
    this.name = registerOutput<String>('name');
    this.operationGroup = registerOutput<GoogleCloudApigeeV1OperationGroupResponse>('operationGroup');
    this.organizationId = registerOutput<String>('organizationId');
    this.proxies = registerOutput<List<String>>('proxies');
    this.quota = registerOutput<String>('quota');
    this.quotaCounterScope = registerOutput<String>('quotaCounterScope');
    this.quotaInterval = registerOutput<String>('quotaInterval');
    this.quotaTimeUnit = registerOutput<String>('quotaTimeUnit');
    this.scopes = registerOutput<List<String>>('scopes');
  }
}
