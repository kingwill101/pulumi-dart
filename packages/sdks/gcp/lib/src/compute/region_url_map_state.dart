// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_url_map_default_route_action.dart';
import 'region_url_map_default_url_redirect.dart';
import 'region_url_map_header_action.dart';
import 'region_url_map_host_rule.dart';
import 'region_url_map_path_matcher.dart';
import 'region_url_map_test.dart';

/// Input properties used for looking up and filtering RegionUrlMap resources.
class RegionUrlMapState {
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// defaultRouteAction takes effect when none of the hostRules match. The load balancer performs advanced routing actions, such as URL rewrites and header transformations, before forwarding the request to the selected backend. If defaultRouteAction specifies any weightedBackendServices, defaultService must not be set. Conversely if defaultService is set, defaultRouteAction cannot contain any weightedBackendServices.
  /// Only one of defaultRouteAction or defaultUrlRedirect must be set.
  /// URL maps for Classic external HTTP(S) load balancers only support the urlRewrite action within defaultRouteAction.
  /// defaultRouteAction has no effect when the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true.
  /// Structure is documented below.
  final pulumi.Input<RegionUrlMapDefaultRouteAction>? defaultRouteAction;
  /// The full or partial URL of the defaultService resource to which traffic is directed if
  /// none of the hostRules match. If defaultRouteAction is additionally specified, advanced
  /// routing actions like URL Rewrites, etc. take effect prior to sending the request to the
  /// backend. However, if defaultService is specified, defaultRouteAction cannot contain any
  /// weightedBackendServices. Conversely, if routeAction specifies any
  /// weightedBackendServices, service must not be specified.  Only one of defaultService,
  /// defaultUrlRedirect or defaultRouteAction.weightedBackendService must be set.
  final pulumi.Input<String>? defaultService;
  /// When none of the specified hostRules match, the request is redirected to a URL specified
  /// by defaultUrlRedirect. If defaultUrlRedirect is specified, defaultService or
  /// defaultRouteAction must not be set.
  /// Structure is documented below.
  final pulumi.Input<RegionUrlMapDefaultUrlRedirect>? defaultUrlRedirect;
  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  final pulumi.Input<String>? description;
  /// Fingerprint of this resource. This field is used internally during
  /// updates of this resource.
  final pulumi.Input<String>? fingerprint;
  /// Specifies changes to request and response headers that need to take effect for the selected backendService.
  /// headerAction specified here take effect before headerAction in the enclosing HttpRouteRule, PathMatcher and UrlMap.
  /// headerAction is not supported for load balancers that have their loadBalancingScheme set to EXTERNAL.
  /// Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  /// Structure is documented below.
  final pulumi.Input<RegionUrlMapHeaderAction>? headerAction;
  /// The list of HostRules to use against the URL.
  /// Structure is documented below.
  final pulumi.Input<List<RegionUrlMapHostRule>>? hostRules;
  /// The unique identifier for the resource.
  final pulumi.Input<int>? mapId;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The list of named PathMatchers to use against the URL.
  /// Structure is documented below.
  final pulumi.Input<List<RegionUrlMapPathMatcher>>? pathMatchers;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The Region in which the url map should reside.
  /// If it is not provided, the provider region is used.
  final pulumi.Input<String>? region;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// The list of expected URL mappings. Requests to update this UrlMap will
  /// succeed only if all of the test cases pass.
  /// Structure is documented below.
  final pulumi.Input<List<RegionUrlMapTest>>? tests;

  /// Creates a new [RegionUrlMapState].
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [defaultRouteAction] defaultRouteAction takes effect when none of the hostRules match. The load balancer performs advanced routing actions, such as URL rewrites and header transformations, before forwarding the request to the selected backend. If defaultRouteAction specifies any weightedBackendServices, defaultService must not be set. Conversely if defaultService is set, defaultRouteAction cannot contain any weightedBackendServices.
  /// [defaultService] The full or partial URL of the defaultService resource to which traffic is directed if
  /// [defaultUrlRedirect] When none of the specified hostRules match, the request is redirected to a URL specified
  /// [description] An optional description of this resource. Provide this property when
  /// [fingerprint] Fingerprint of this resource. This field is used internally during
  /// [headerAction] Specifies changes to request and response headers that need to take effect for the selected backendService.
  /// [hostRules] The list of HostRules to use against the URL.
  /// [mapId] The unique identifier for the resource.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [pathMatchers] The list of named PathMatchers to use against the URL.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The Region in which the url map should reside.
  /// [selfLink] The URI of the created resource.
  /// [tests] The list of expected URL mappings. Requests to update this UrlMap will
  RegionUrlMapState({
    this.creationTimestamp,
    this.defaultRouteAction,
    this.defaultService,
    this.defaultUrlRedirect,
    this.description,
    this.fingerprint,
    this.headerAction,
    this.hostRules,
    this.mapId,
    this.name,
    this.pathMatchers,
    this.project,
    this.region,
    this.selfLink,
    this.tests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': ?creationTimestamp,
      'defaultRouteAction': ?pulumi.Input.mapOptionalInputValue<RegionUrlMapDefaultRouteAction, Map<String, dynamic>>(defaultRouteAction, (value) => value.toMap()),
      'defaultService': ?defaultService,
      'defaultUrlRedirect': ?pulumi.Input.mapOptionalInputValue<RegionUrlMapDefaultUrlRedirect, Map<String, dynamic>>(defaultUrlRedirect, (value) => value.toMap()),
      'description': ?description,
      'fingerprint': ?fingerprint,
      'headerAction': ?pulumi.Input.mapOptionalInputValue<RegionUrlMapHeaderAction, Map<String, dynamic>>(headerAction, (value) => value.toMap()),
      'hostRules': ?pulumi.Input.mapOptionalInputValue<List<RegionUrlMapHostRule>, List<Map<String, dynamic>>>(hostRules, (value) => pulumi.Input.encodeList<RegionUrlMapHostRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mapId': ?mapId,
      'name': ?name,
      'pathMatchers': ?pulumi.Input.mapOptionalInputValue<List<RegionUrlMapPathMatcher>, List<Map<String, dynamic>>>(pathMatchers, (value) => pulumi.Input.encodeList<RegionUrlMapPathMatcher, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'region': ?region,
      'selfLink': ?selfLink,
      'tests': ?pulumi.Input.mapOptionalInputValue<List<RegionUrlMapTest>, List<Map<String, dynamic>>>(tests, (value) => pulumi.Input.encodeList<RegionUrlMapTest, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RegionUrlMapState.fromMap(Map<String, dynamic> map) {
    return RegionUrlMapState(
      creationTimestamp: map['creationTimestamp'] == null ? null : (map['creationTimestamp']! as String).input(),
      defaultRouteAction: map['defaultRouteAction'] == null ? null : (RegionUrlMapDefaultRouteAction.fromMap((map['defaultRouteAction']! as Map).cast<String, dynamic>())).input(),
      defaultService: map['defaultService'] == null ? null : (map['defaultService']! as String).input(),
      defaultUrlRedirect: map['defaultUrlRedirect'] == null ? null : (RegionUrlMapDefaultUrlRedirect.fromMap((map['defaultUrlRedirect']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      fingerprint: map['fingerprint'] == null ? null : (map['fingerprint']! as String).input(),
      headerAction: map['headerAction'] == null ? null : (RegionUrlMapHeaderAction.fromMap((map['headerAction']! as Map).cast<String, dynamic>())).input(),
      hostRules: map['hostRules'] == null ? null : (pulumi.Input.decodeList<RegionUrlMapHostRule>(map['hostRules']!, (value) => RegionUrlMapHostRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      mapId: map['mapId'] == null ? null : (map['mapId']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      pathMatchers: map['pathMatchers'] == null ? null : (pulumi.Input.decodeList<RegionUrlMapPathMatcher>(map['pathMatchers']!, (value) => RegionUrlMapPathMatcher.fromMap((value as Map).cast<String, dynamic>()))).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink']! as String).input(),
      tests: map['tests'] == null ? null : (pulumi.Input.decodeList<RegionUrlMapTest>(map['tests']!, (value) => RegionUrlMapTest.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

