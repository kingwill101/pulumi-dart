// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_gateway_route_config_open_api.dart';
import 'spring_cloud_gateway_route_config_route.dart';

/// Input properties used for looking up and filtering SpringCloudGatewayRouteConfig resources.
class SpringCloudGatewayRouteConfigState {
  /// Specifies a list of filters which are used to modify the request before sending it to the target endpoint, or the received response in app level.
  final pulumi.Input<List<String>?>? filters;
  /// The name which should be used for this Spring Cloud Gateway Route Config. Changing this forces a new Spring Cloud Gateway Route Config to be created.
  final pulumi.Input<String?>? name;
  /// One or more `openApi` blocks as defined below.
  final pulumi.Input<SpringCloudGatewayRouteConfigOpenApi?>? openApi;
  /// Specifies a list of conditions to evaluate a route for each request in app level. Each predicate may be evaluated against request headers and parameter values. All of the predicates associated with a route must evaluate to true for the route to be matched to the request.
  final pulumi.Input<List<String>?>? predicates;
  /// Specifies the protocol of routed Spring Cloud App. Allowed values are `HTTP` and `HTTPS`.
  ///
  /// &gt; **Note:** You likely want to use `HTTPS` in a production environment, since `HTTP` offers no encryption.
  final pulumi.Input<String?>? protocol;
  /// One or more `route` blocks as defined below.
  final pulumi.Input<List<SpringCloudGatewayRouteConfigRoute>?>? routes;
  /// The ID of the Spring Cloud App.
  final pulumi.Input<String?>? springCloudAppId;
  /// The ID of the Spring Cloud Gateway. Changing this forces a new Spring Cloud Gateway Route Config to be created.
  final pulumi.Input<String?>? springCloudGatewayId;
  /// Should the sso validation be enabled in app level?
  final pulumi.Input<bool?>? ssoValidationEnabled;

  /// Creates a new [SpringCloudGatewayRouteConfigState].
  /// [filters] Specifies a list of filters which are used to modify the request before sending it to the target endpoint, or the received response in app level.
  /// [name] The name which should be used for this Spring Cloud Gateway Route Config. Changing this forces a new Spring Cloud Gateway Route Config to be created.
  /// [openApi] One or more `openApi` blocks as defined below.
  /// [predicates] Specifies a list of conditions to evaluate a route for each request in app level. Each predicate may be evaluated against request headers and parameter values. All of the predicates associated with a route must evaluate to true for the route to be matched to the request.
  /// [protocol] Specifies the protocol of routed Spring Cloud App. Allowed values are `HTTP` and `HTTPS`.
  /// [routes] One or more `route` blocks as defined below.
  /// [springCloudAppId] The ID of the Spring Cloud App.
  /// [springCloudGatewayId] The ID of the Spring Cloud Gateway. Changing this forces a new Spring Cloud Gateway Route Config to be created.
  /// [ssoValidationEnabled] Should the sso validation be enabled in app level?
  const SpringCloudGatewayRouteConfigState({
    this.filters,
    this.name,
    this.openApi,
    this.predicates,
    this.protocol,
    this.routes,
    this.springCloudAppId,
    this.springCloudGatewayId,
    this.ssoValidationEnabled,
  });

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
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      openApi: (() { final guardedValue = map['openApi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpringCloudGatewayRouteConfigOpenApi.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      predicates: (() { final guardedValue = map['predicates']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SpringCloudGatewayRouteConfigRoute>(guardedValue, (value) => SpringCloudGatewayRouteConfigRoute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      springCloudAppId: (() { final guardedValue = map['springCloudAppId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      springCloudGatewayId: (() { final guardedValue = map['springCloudGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ssoValidationEnabled: (() { final guardedValue = map['ssoValidationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
