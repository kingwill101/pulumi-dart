// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_gateway_route_config_open_api.dart';
import 'spring_cloud_gateway_route_config_route.dart';

/// Input properties used for looking up and filtering SpringCloudGatewayRouteConfig resources.
class SpringCloudGatewayRouteConfigState {
  /// Specifies a list of filters which are used to modify the request before sending it to the target endpoint, or the received response in app level.
  final pulumi.Input<List<String>>? filters;
  /// The name which should be used for this Spring Cloud Gateway Route Config. Changing this forces a new Spring Cloud Gateway Route Config to be created.
  final pulumi.Input<String>? name;
  /// One or more `open_api` blocks as defined below.
  final pulumi.Input<SpringCloudGatewayRouteConfigOpenApi>? openApi;
  /// Specifies a list of conditions to evaluate a route for each request in app level. Each predicate may be evaluated against request headers and parameter values. All of the predicates associated with a route must evaluate to true for the route to be matched to the request.
  final pulumi.Input<List<String>>? predicates;
  /// Specifies the protocol of routed Spring Cloud App. Allowed values are `HTTP` and `HTTPS`.
  ///
  /// > **Note:** You likely want to use `HTTPS` in a production environment, since `HTTP` offers no encryption.
  final pulumi.Input<String>? protocol;
  /// One or more `route` blocks as defined below.
  final pulumi.Input<List<SpringCloudGatewayRouteConfigRoute>>? routes;
  /// The ID of the Spring Cloud App.
  final pulumi.Input<String>? springCloudAppId;
  /// The ID of the Spring Cloud Gateway. Changing this forces a new Spring Cloud Gateway Route Config to be created.
  final pulumi.Input<String>? springCloudGatewayId;
  /// Should the sso validation be enabled in app level?
  final pulumi.Input<bool>? ssoValidationEnabled;

  /// Creates a new [SpringCloudGatewayRouteConfigState].
  /// [filters] Specifies a list of filters which are used to modify the request before sending it to the target endpoint, or the received response in app level.
  /// [name] The name which should be used for this Spring Cloud Gateway Route Config. Changing this forces a new Spring Cloud Gateway Route Config to be created.
  /// [openApi] One or more `open_api` blocks as defined below.
  /// [predicates] Specifies a list of conditions to evaluate a route for each request in app level. Each predicate may be evaluated against request headers and parameter values. All of the predicates associated with a route must evaluate to true for the route to be matched to the request.
  /// [protocol] Specifies the protocol of routed Spring Cloud App. Allowed values are `HTTP` and `HTTPS`.
  /// [routes] One or more `route` blocks as defined below.
  /// [springCloudAppId] The ID of the Spring Cloud App.
  /// [springCloudGatewayId] The ID of the Spring Cloud Gateway. Changing this forces a new Spring Cloud Gateway Route Config to be created.
  /// [ssoValidationEnabled] Should the sso validation be enabled in app level?
  SpringCloudGatewayRouteConfigState({
    pulumi.Output<List<String>>? filters,
    pulumi.Output<String>? name,
    pulumi.Output<SpringCloudGatewayRouteConfigOpenApi>? openApi,
    pulumi.Output<List<String>>? predicates,
    pulumi.Output<String>? protocol,
    pulumi.Output<List<SpringCloudGatewayRouteConfigRoute>>? routes,
    pulumi.Output<String>? springCloudAppId,
    pulumi.Output<String>? springCloudGatewayId,
    pulumi.Output<bool>? ssoValidationEnabled,
  }) :
      filters = pulumi.Input.asOptionalInput<List<String>>(filters),
      name = pulumi.Input.asOptionalInput<String>(name),
      openApi = pulumi.Input.asOptionalInput<SpringCloudGatewayRouteConfigOpenApi>(openApi),
      predicates = pulumi.Input.asOptionalInput<List<String>>(predicates),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      routes = pulumi.Input.asOptionalInput<List<SpringCloudGatewayRouteConfigRoute>>(routes),
      springCloudAppId = pulumi.Input.asOptionalInput<String>(springCloudAppId),
      springCloudGatewayId = pulumi.Input.asOptionalInput<String>(springCloudGatewayId),
      ssoValidationEnabled = pulumi.Input.asOptionalInput<bool>(ssoValidationEnabled);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters,
      'name': ?name,
      'openApi': ?pulumi.Input.mapOptionalInputValue<SpringCloudGatewayRouteConfigOpenApi, Map<String, dynamic>>(openApi, (value) => value.toMap()),
      'predicates': ?predicates,
      'protocol': ?protocol,
      'routes': ?pulumi.Input.mapOptionalInputValue<List<SpringCloudGatewayRouteConfigRoute>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<SpringCloudGatewayRouteConfigRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'springCloudAppId': ?springCloudAppId,
      'springCloudGatewayId': ?springCloudGatewayId,
      'ssoValidationEnabled': ?ssoValidationEnabled,
    };
  }

  factory SpringCloudGatewayRouteConfigState.fromMap(Map<String, dynamic> map) {
    return SpringCloudGatewayRouteConfigState(
      filters: map['filters'] == null ? null : pulumi.Output.create<List<String>>((map['filters'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      openApi: map['openApi'] == null ? null : pulumi.Output.create<SpringCloudGatewayRouteConfigOpenApi>(SpringCloudGatewayRouteConfigOpenApi.fromMap((map['openApi'] as Map).cast<String, dynamic>())),
      predicates: map['predicates'] == null ? null : pulumi.Output.create<List<String>>((map['predicates'] as List).cast<String>()),
      protocol: map['protocol'] == null ? null : pulumi.Output.create<String>(map['protocol'] as String),
      routes: map['routes'] == null ? null : pulumi.Output.create<List<SpringCloudGatewayRouteConfigRoute>>(pulumi.Input.decodeList<SpringCloudGatewayRouteConfigRoute>(map['routes'], (value) => SpringCloudGatewayRouteConfigRoute.fromMap((value as Map).cast<String, dynamic>()))),
      springCloudAppId: map['springCloudAppId'] == null ? null : pulumi.Output.create<String>(map['springCloudAppId'] as String),
      springCloudGatewayId: map['springCloudGatewayId'] == null ? null : pulumi.Output.create<String>(map['springCloudGatewayId'] as String),
      ssoValidationEnabled: map['ssoValidationEnabled'] == null ? null : pulumi.Output.create<bool>(map['ssoValidationEnabled'] as bool),
    );
  }
}

