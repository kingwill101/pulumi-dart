// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_product_attribute.dart';
import 'api_product_graphql_operation_group.dart';
import 'api_product_grpc_operation_group.dart';
import 'api_product_operation_group.dart';

/// {@template pulumi_apigee_api_product_api_product_args_doc}
/// The set of arguments for ApiProduct.
/// {@endtemplate}
/// {@macro pulumi_apigee_api_product_api_product_args_doc}
class ApiProductArgs {
  /// Comma-separated list of API resources to be bundled in the API product. By default, the resource paths are mapped from the proxy.pathsuffix variable.
  /// The proxy path suffix is defined as the URI fragment following the ProxyEndpoint base path. For example, if the apiResources element is defined to be /forecastrss and the base path defined for the API proxy is /weather, then only requests to /weather/forecastrss are permitted by the API product.
  final pulumi.Input<List<String>>? apiResources;
  /// Flag that specifies how API keys are approved to access the APIs defined by the API product.
  /// Valid values are `auto` or `manual`.
  /// Possible values are: `auto`, `manual`.
  final pulumi.Input<String>? approvalType;
  /// Array of attributes that may be used to extend the default API product profile with customer-specific metadata. You can specify a maximum of 18 attributes.
  /// Use this property to specify the access level of the API product as either public, private, or internal.
  /// Structure is documented below.
  final pulumi.Input<List<ApiProductAttribute>>? attributes;
  /// Description of the API product. Include key information about the API product that is not captured by other fields.
  final pulumi.Input<String>? description;
  /// Name displayed in the UI or developer portal to developers registering for API access.
  final pulumi.Input<String> displayName;
  /// Comma-separated list of environment names to which the API product is bound. Requests to environments that are not listed are rejected.
  /// By specifying one or more environments, you can bind the resources listed in the API product to a specific environment, preventing developers from accessing those resources through API proxies deployed in another environment.
  final pulumi.Input<List<String>>? environments;
  /// Configuration used to group Apigee proxies or remote services with graphQL operation name, graphQL operation type and quotas. This grouping allows us to precisely set quota for a particular combination of graphQL name and operation type for a particular proxy request. If graphQL name is not set, this would imply quota will be applied on all graphQL requests matching the operation type.
  /// Structure is documented below.
  final pulumi.Input<ApiProductGraphqlOperationGroup>? graphqlOperationGroup;
  /// Optional. Configuration used to group Apigee proxies with gRPC services and method names. This grouping allows us to set quota for a particular proxy with the gRPC service name and method. If a method name is not set, this implies quota and authorization are applied to all gRPC methods implemented by that proxy for that particular gRPC service.
  /// Structure is documented below.
  final pulumi.Input<ApiProductGrpcOperationGroup>? grpcOperationGroup;
  /// Internal name of the API product.
  final pulumi.Input<String>? name;
  /// Configuration used to group Apigee proxies or remote services with resources, method types, and quotas. The resource refers to the resource URI (excluding the base path). With this grouping, the API product creator is able to fine-tune and give precise control over which REST methods have access to specific resources and how many calls can be made (using the quota setting).
  /// Note: The apiResources setting cannot be specified for both the API product and operation group; otherwise the call will fail.
  /// Structure is documented below.
  final pulumi.Input<ApiProductOperationGroup>? operationGroup;
  /// The Apigee Organization associated with the Apigee API product,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String> orgId;
  /// Comma-separated list of API proxy names to which this API product is bound. By specifying API proxies, you can associate resources in the API product with specific API proxies, preventing developers from accessing those resources through other API proxies.
  /// Apigee rejects requests to API proxies that are not listed.
  final pulumi.Input<List<String>>? proxies;
  /// Number of request messages permitted per app by this API product for the specified quotaInterval and quotaTimeUnit.
  /// For example, a quota of 50, for a quotaInterval of 12 and a quotaTimeUnit of hours means 50 requests are allowed every 12 hours.
  final pulumi.Input<String>? quota;
  /// Scope of the quota decides how the quota counter gets applied and evaluate for quota violation. If the Scope is set as PROXY, then all the operations defined for the APIproduct that are associated with the same proxy will share the same quota counter set at the APIproduct level, making it a global counter at a proxy level. If the Scope is set as OPERATION, then each operations get the counter set at the API product dedicated, making it a local counter. Note that, the QuotaCounterScope applies only when an operation does not have dedicated quota set for itself.
  /// Possible values are: `QUOTA_COUNTER_SCOPE_UNSPECIFIED`, `PROXY`, `OPERATION`.
  final pulumi.Input<String>? quotaCounterScope;
  /// Time interval over which the number of request messages is calculated.
  final pulumi.Input<String>? quotaInterval;
  /// Time unit defined for the quotaInterval. Valid values include second, minute, hour, day, month or year.
  final pulumi.Input<String>? quotaTimeUnit;
  /// Comma-separated list of OAuth scopes that are validated at runtime. Apigee validates that the scopes in any access token presented match the scopes defined in the OAuth policy associated with the API product.
  final pulumi.Input<List<String>>? scopes;
  /// Optional. The resource ID of the parent Space. If not set, the parent resource will be the Organization.
  final pulumi.Input<String>? space;

  /// Creates a new [ApiProductArgs].
  /// [apiResources] Comma-separated list of API resources to be bundled in the API product. By default, the resource paths are mapped from the proxy.pathsuffix variable.
  /// [approvalType] Flag that specifies how API keys are approved to access the APIs defined by the API product.
  /// [attributes] Array of attributes that may be used to extend the default API product profile with customer-specific metadata. You can specify a maximum of 18 attributes.
  /// [description] Description of the API product. Include key information about the API product that is not captured by other fields.
  /// [displayName] Name displayed in the UI or developer portal to developers registering for API access.
  /// [environments] Comma-separated list of environment names to which the API product is bound. Requests to environments that are not listed are rejected.
  /// [graphqlOperationGroup] Configuration used to group Apigee proxies or remote services with graphQL operation name, graphQL operation type and quotas. This grouping allows us to precisely set quota for a particular combination of graphQL name and operation type for a particular proxy request. If graphQL name is not set, this would imply quota will be applied on all graphQL requests matching the operation type.
  /// [grpcOperationGroup] Optional. Configuration used to group Apigee proxies with gRPC services and method names. This grouping allows us to set quota for a particular proxy with the gRPC service name and method. If a method name is not set, this implies quota and authorization are applied to all gRPC methods implemented by that proxy for that particular gRPC service.
  /// [name] Internal name of the API product.
  /// [operationGroup] Configuration used to group Apigee proxies or remote services with resources, method types, and quotas. The resource refers to the resource URI (excluding the base path). With this grouping, the API product creator is able to fine-tune and give precise control over which REST methods have access to specific resources and how many calls can be made (using the quota setting).
  /// [orgId] The Apigee Organization associated with the Apigee API product,
  /// [proxies] Comma-separated list of API proxy names to which this API product is bound. By specifying API proxies, you can associate resources in the API product with specific API proxies, preventing developers from accessing those resources through other API proxies.
  /// [quota] Number of request messages permitted per app by this API product for the specified quotaInterval and quotaTimeUnit.
  /// [quotaCounterScope] Scope of the quota decides how the quota counter gets applied and evaluate for quota violation. If the Scope is set as PROXY, then all the operations defined for the APIproduct that are associated with the same proxy will share the same quota counter set at the APIproduct level, making it a global counter at a proxy level. If the Scope is set as OPERATION, then each operations get the counter set at the API product dedicated, making it a local counter. Note that, the QuotaCounterScope applies only when an operation does not have dedicated quota set for itself.
  /// [quotaInterval] Time interval over which the number of request messages is calculated.
  /// [quotaTimeUnit] Time unit defined for the quotaInterval. Valid values include second, minute, hour, day, month or year.
  /// [scopes] Comma-separated list of OAuth scopes that are validated at runtime. Apigee validates that the scopes in any access token presented match the scopes defined in the OAuth policy associated with the API product.
  /// [space] Optional. The resource ID of the parent Space. If not set, the parent resource will be the Organization.
  ApiProductArgs({
    this.apiResources,
    this.approvalType,
    this.attributes,
    this.description,
    required this.displayName,
    this.environments,
    this.graphqlOperationGroup,
    this.grpcOperationGroup,
    this.name,
    this.operationGroup,
    required this.orgId,
    this.proxies,
    this.quota,
    this.quotaCounterScope,
    this.quotaInterval,
    this.quotaTimeUnit,
    this.scopes,
    this.space,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiResources': ?apiResources,
      'approvalType': ?approvalType,
      'attributes': ?pulumi.Input.mapOptionalInputValue<List<ApiProductAttribute>, List<Map<String, dynamic>>>(attributes, (value) => pulumi.Input.encodeList<ApiProductAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'displayName': displayName,
      'environments': ?environments,
      'graphqlOperationGroup': ?pulumi.Input.mapOptionalInputValue<ApiProductGraphqlOperationGroup, Map<String, dynamic>>(graphqlOperationGroup, (value) => value.toMap()),
      'grpcOperationGroup': ?pulumi.Input.mapOptionalInputValue<ApiProductGrpcOperationGroup, Map<String, dynamic>>(grpcOperationGroup, (value) => value.toMap()),
      'name': ?name,
      'operationGroup': ?pulumi.Input.mapOptionalInputValue<ApiProductOperationGroup, Map<String, dynamic>>(operationGroup, (value) => value.toMap()),
      'orgId': orgId,
      'proxies': ?proxies,
      'quota': ?quota,
      'quotaCounterScope': ?quotaCounterScope,
      'quotaInterval': ?quotaInterval,
      'quotaTimeUnit': ?quotaTimeUnit,
      'scopes': ?scopes,
      'space': ?space,
    };
  }

  factory ApiProductArgs.fromMap(Map<String, dynamic> map) {
    return ApiProductArgs(
      apiResources: (() { final guardedValue = map['apiResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      approvalType: (() { final guardedValue = map['approvalType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApiProductAttribute>(guardedValue, (value) => ApiProductAttribute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      environments: (() { final guardedValue = map['environments']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      graphqlOperationGroup: (() { final guardedValue = map['graphqlOperationGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiProductGraphqlOperationGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      grpcOperationGroup: (() { final guardedValue = map['grpcOperationGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiProductGrpcOperationGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationGroup: (() { final guardedValue = map['operationGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiProductOperationGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      orgId: pulumi.Input.fromValue(map['orgId'] as String),
      proxies: (() { final guardedValue = map['proxies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      quota: (() { final guardedValue = map['quota']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quotaCounterScope: (() { final guardedValue = map['quotaCounterScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quotaInterval: (() { final guardedValue = map['quotaInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quotaTimeUnit: (() { final guardedValue = map['quotaTimeUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      space: (() { final guardedValue = map['space']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

