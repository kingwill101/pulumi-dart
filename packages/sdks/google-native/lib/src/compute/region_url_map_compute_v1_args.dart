// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'host_rule_compute_v1.dart';
import 'http_header_action_compute_v1.dart';
import 'http_redirect_action_compute_v1.dart';
import 'http_route_action_compute_v1.dart';
import 'path_matcher_compute_v1.dart';
import 'url_map_test_compute_v1.dart';

/// {@template pulumi_compute_v1_region_url_map_compute_v1_args_doc}
/// The set of arguments for RegionUrlMap.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_region_url_map_compute_v1_args_doc}
class RegionUrlMapComputeV1Args {
  /// defaultRouteAction takes effect when none of the hostRules match. The load balancer performs advanced routing actions, such as URL rewrites and header transformations, before forwarding the request to the selected backend. If defaultRouteAction specifies any weightedBackendServices, defaultService must not be set. Conversely if defaultService is set, defaultRouteAction cannot contain any weightedBackendServices. Only one of defaultRouteAction or defaultUrlRedirect must be set. URL maps for classic Application Load Balancers only support the urlRewrite action within defaultRouteAction. defaultRouteAction has no effect when the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true.
  final pulumi.Input<HttpRouteActionComputeV1>? defaultRouteAction;
  /// The full or partial URL of the defaultService resource to which traffic is directed if none of the hostRules match. If defaultRouteAction is also specified, advanced routing actions, such as URL rewrites, take effect before sending the request to the backend. However, if defaultService is specified, defaultRouteAction cannot contain any weightedBackendServices. Conversely, if routeAction specifies any weightedBackendServices, service must not be specified. Only one of defaultService, defaultUrlRedirect , or defaultRouteAction.weightedBackendService must be set. defaultService has no effect when the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true.
  final pulumi.Input<String>? defaultService;
  /// When none of the specified hostRules match, the request is redirected to a URL specified by defaultUrlRedirect. If defaultUrlRedirect is specified, defaultService or defaultRouteAction must not be set. Not supported when the URL map is bound to a target gRPC proxy.
  final pulumi.Input<HttpRedirectActionComputeV1>? defaultUrlRedirect;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Specifies changes to request and response headers that need to take effect for the selected backendService. The headerAction specified here take effect after headerAction specified under pathMatcher. headerAction is not supported for load balancers that have their loadBalancingScheme set to EXTERNAL. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  final pulumi.Input<HttpHeaderActionComputeV1>? headerAction;
  /// The list of host rules to use against the URL.
  final pulumi.Input<List<HostRuleComputeV1>>? hostRules;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The list of named PathMatchers to use against the URL.
  final pulumi.Input<List<PathMatcherComputeV1>>? pathMatchers;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  /// begin_interface: MixerMutationRequestBuilder Request ID to support idempotency.
  final pulumi.Input<String>? requestId;
  /// The list of expected URL mapping tests. Request to update the UrlMap succeeds only if all test cases pass. You can specify a maximum of 100 tests per UrlMap. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  final pulumi.Input<List<UrlMapTestComputeV1>>? tests;

  /// Creates a new [RegionUrlMapComputeV1Args].
  /// [defaultRouteAction] defaultRouteAction takes effect when none of the hostRules match. The load balancer performs advanced routing actions, such as URL rewrites and header transformations, before forwarding the request to the selected backend. If defaultRouteAction specifies any weightedBackendServices, defaultService must not be set. Conversely if defaultService is set, defaultRouteAction cannot contain any weightedBackendServices. Only one of defaultRouteAction or defaultUrlRedirect must be set. URL maps for classic Application Load Balancers only support the urlRewrite action within defaultRouteAction. defaultRouteAction has no effect when the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true.
  /// [defaultService] The full or partial URL of the defaultService resource to which traffic is directed if none of the hostRules match. If defaultRouteAction is also specified, advanced routing actions, such as URL rewrites, take effect before sending the request to the backend. However, if defaultService is specified, defaultRouteAction cannot contain any weightedBackendServices. Conversely, if routeAction specifies any weightedBackendServices, service must not be specified. Only one of defaultService, defaultUrlRedirect , or defaultRouteAction.weightedBackendService must be set. defaultService has no effect when the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true.
  /// [defaultUrlRedirect] When none of the specified hostRules match, the request is redirected to a URL specified by defaultUrlRedirect. If defaultUrlRedirect is specified, defaultService or defaultRouteAction must not be set. Not supported when the URL map is bound to a target gRPC proxy.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [headerAction] Specifies changes to request and response headers that need to take effect for the selected backendService. The headerAction specified here take effect after headerAction specified under pathMatcher. headerAction is not supported for load balancers that have their loadBalancingScheme set to EXTERNAL. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  /// [hostRules] The list of host rules to use against the URL.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [pathMatchers] The list of named PathMatchers to use against the URL.
  /// [project] Optional.
  /// [region] Required.
  /// [requestId] begin_interface: MixerMutationRequestBuilder Request ID to support idempotency.
  /// [tests] The list of expected URL mapping tests. Request to update the UrlMap succeeds only if all test cases pass. You can specify a maximum of 100 tests per UrlMap. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  RegionUrlMapComputeV1Args({
    this.defaultRouteAction,
    this.defaultService,
    this.defaultUrlRedirect,
    this.description,
    this.headerAction,
    this.hostRules,
    this.name,
    this.pathMatchers,
    this.project,
    required this.region,
    this.requestId,
    this.tests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultRouteAction': ?pulumi.Input.mapOptionalInputValue<HttpRouteActionComputeV1, Map<String, dynamic>>(defaultRouteAction, (value) => value.toMap()),
      'defaultService': ?defaultService,
      'defaultUrlRedirect': ?pulumi.Input.mapOptionalInputValue<HttpRedirectActionComputeV1, Map<String, dynamic>>(defaultUrlRedirect, (value) => value.toMap()),
      'description': ?description,
      'headerAction': ?pulumi.Input.mapOptionalInputValue<HttpHeaderActionComputeV1, Map<String, dynamic>>(headerAction, (value) => value.toMap()),
      'hostRules': ?pulumi.Input.mapOptionalInputValue<List<HostRuleComputeV1>, List<Map<String, dynamic>>>(hostRules, (value) => pulumi.Input.encodeList<HostRuleComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'pathMatchers': ?pulumi.Input.mapOptionalInputValue<List<PathMatcherComputeV1>, List<Map<String, dynamic>>>(pathMatchers, (value) => pulumi.Input.encodeList<PathMatcherComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'region': region,
      'requestId': ?requestId,
      'tests': ?pulumi.Input.mapOptionalInputValue<List<UrlMapTestComputeV1>, List<Map<String, dynamic>>>(tests, (value) => pulumi.Input.encodeList<UrlMapTestComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RegionUrlMapComputeV1Args.fromMap(Map<String, dynamic> map) {
    return RegionUrlMapComputeV1Args(
      defaultRouteAction: map['defaultRouteAction'] == null ? null : (HttpRouteActionComputeV1.fromMap((map['defaultRouteAction']! as Map).cast<String, dynamic>())).input(),
      defaultService: map['defaultService'] == null ? null : (map['defaultService']! as String).input(),
      defaultUrlRedirect: map['defaultUrlRedirect'] == null ? null : (HttpRedirectActionComputeV1.fromMap((map['defaultUrlRedirect']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      headerAction: map['headerAction'] == null ? null : (HttpHeaderActionComputeV1.fromMap((map['headerAction']! as Map).cast<String, dynamic>())).input(),
      hostRules: map['hostRules'] == null ? null : (pulumi.Input.decodeList<HostRuleComputeV1>(map['hostRules']!, (value) => HostRuleComputeV1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      pathMatchers: map['pathMatchers'] == null ? null : (pulumi.Input.decodeList<PathMatcherComputeV1>(map['pathMatchers']!, (value) => PathMatcherComputeV1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: (map['region'] as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId']! as String).input(),
      tests: map['tests'] == null ? null : (pulumi.Input.decodeList<UrlMapTestComputeV1>(map['tests']!, (value) => UrlMapTestComputeV1.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

