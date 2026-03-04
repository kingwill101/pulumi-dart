import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_header_action_response_compute_v1.dart';
import 'http_redirect_action_response_compute_v1.dart';
import 'http_route_action_response_compute_v1.dart';
import 'url_map_compute_v1_args.dart';

/// Creates a UrlMap resource in the specified project using the data included in the request.
class UrlMapComputeV1 extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// defaultRouteAction takes effect when none of the hostRules match. The load balancer performs advanced routing actions, such as URL rewrites and header transformations, before forwarding the request to the selected backend. If defaultRouteAction specifies any weightedBackendServices, defaultService must not be set. Conversely if defaultService is set, defaultRouteAction cannot contain any weightedBackendServices. Only one of defaultRouteAction or defaultUrlRedirect must be set. URL maps for classic Application Load Balancers only support the urlRewrite action within defaultRouteAction. defaultRouteAction has no effect when the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true.
  late final pulumi.Output<HttpRouteActionResponseComputeV1> defaultRouteAction;

  /// The full or partial URL of the defaultService resource to which traffic is directed if none of the hostRules match. If defaultRouteAction is also specified, advanced routing actions, such as URL rewrites, take effect before sending the request to the backend. However, if defaultService is specified, defaultRouteAction cannot contain any weightedBackendServices. Conversely, if routeAction specifies any weightedBackendServices, service must not be specified. Only one of defaultService, defaultUrlRedirect , or defaultRouteAction.weightedBackendService must be set. defaultService has no effect when the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true.
  late final pulumi.Output<String> defaultService;

  /// When none of the specified hostRules match, the request is redirected to a URL specified by defaultUrlRedirect. If defaultUrlRedirect is specified, defaultService or defaultRouteAction must not be set. Not supported when the URL map is bound to a target gRPC proxy.
  late final pulumi.Output<HttpRedirectActionResponseComputeV1>
  defaultUrlRedirect;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String> description;

  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field is ignored when inserting a UrlMap. An up-to-date fingerprint must be provided in order to update the UrlMap, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve a UrlMap.
  late final pulumi.Output<String> fingerprint;

  /// Specifies changes to request and response headers that need to take effect for the selected backendService. The headerAction specified here take effect after headerAction specified under pathMatcher. headerAction is not supported for load balancers that have their loadBalancingScheme set to EXTERNAL. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  late final pulumi.Output<HttpHeaderActionResponseComputeV1> headerAction;

  /// The list of host rules to use against the URL.
  late final pulumi.Output<List<Map<String, dynamic>>> hostRules;

  /// Type of the resource. Always compute#urlMaps for url maps.
  late final pulumi.Output<String> kind;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// The list of named PathMatchers to use against the URL.
  late final pulumi.Output<List<Map<String, dynamic>>> pathMatchers;
  late final pulumi.Output<String> project;

  /// URL of the region where the regional URL map resides. This field is not applicable to global URL maps. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  late final pulumi.Output<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;

  /// The list of expected URL mapping tests. Request to update the UrlMap succeeds only if all test cases pass. You can specify a maximum of 100 tests per UrlMap. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  late final pulumi.Output<List<Map<String, dynamic>>> tests;

  /// Creates a new [UrlMapComputeV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UrlMapComputeV1]. {@macro pulumi_compute_v1_url_map_compute_v1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UrlMapComputeV1(
    String name, {
    UrlMapComputeV1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:compute/v1:UrlMap',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    creationTimestamp = registerOutput<String>('creationTimestamp');
    defaultRouteAction = registerOutput<HttpRouteActionResponseComputeV1>(
      'defaultRouteAction',
    );
    defaultService = registerOutput<String>('defaultService');
    defaultUrlRedirect = registerOutput<HttpRedirectActionResponseComputeV1>(
      'defaultUrlRedirect',
    );
    description = registerOutput<String>('description');
    fingerprint = registerOutput<String>('fingerprint');
    headerAction = registerOutput<HttpHeaderActionResponseComputeV1>(
      'headerAction',
    );
    hostRules = registerOutput<List<Map<String, dynamic>>>('hostRules');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    pathMatchers = registerOutput<List<Map<String, dynamic>>>('pathMatchers');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    requestId = registerOutput<String?>('requestId');
    selfLink = registerOutput<String>('selfLink');
    tests = registerOutput<List<Map<String, dynamic>>>('tests');
  }
}
