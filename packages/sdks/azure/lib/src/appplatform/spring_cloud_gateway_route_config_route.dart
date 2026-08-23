// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpringCloudGatewayRouteConfigRoute {
  /// Specifies the classification tags which will be applied to methods in the generated OpenAPI documentation.
  final pulumi.Input<List<String>>? classificationTags;
  /// Specifies the description which will be applied to methods in the generated OpenAPI documentation.
  final pulumi.Input<String>? description;
  /// Specifies a list of filters which are used to modify the request before sending it to the target endpoint, or the received response.
  final pulumi.Input<List<String>>? filters;
  /// Specifies the route processing order.
  final pulumi.Input<int> order;
  /// Specifies a list of conditions to evaluate a route for each request. Each predicate may be evaluated against request headers and parameter values. All of the predicates associated with a route must evaluate to true for the route to be matched to the request.
  final pulumi.Input<List<String>>? predicates;
  /// Should the sso validation be enabled?
  final pulumi.Input<bool>? ssoValidationEnabled;
  /// Specifies the title which will be applied to methods in the generated OpenAPI documentation.
  final pulumi.Input<String>? title;
  /// Should pass currently-authenticated user's identity token to application service?
  final pulumi.Input<bool>? tokenRelay;
  /// Specifies the full uri which will override `appName`.
  final pulumi.Input<String>? uri;

  /// Creates a new [SpringCloudGatewayRouteConfigRoute].
  /// [classificationTags] Specifies the classification tags which will be applied to methods in the generated OpenAPI documentation.
  /// [description] Specifies the description which will be applied to methods in the generated OpenAPI documentation.
  /// [filters] Specifies a list of filters which are used to modify the request before sending it to the target endpoint, or the received response.
  /// [order] Specifies the route processing order.
  /// [predicates] Specifies a list of conditions to evaluate a route for each request. Each predicate may be evaluated against request headers and parameter values. All of the predicates associated with a route must evaluate to true for the route to be matched to the request.
  /// [ssoValidationEnabled] Should the sso validation be enabled?
  /// [title] Specifies the title which will be applied to methods in the generated OpenAPI documentation.
  /// [tokenRelay] Should pass currently-authenticated user's identity token to application service?
  /// [uri] Specifies the full uri which will override `appName`.
  const SpringCloudGatewayRouteConfigRoute({
    this.classificationTags,
    this.description,
    this.filters,
    required this.order,
    this.predicates,
    this.ssoValidationEnabled,
    this.title,
    this.tokenRelay,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classificationTags': ?classificationTags,
      'description': ?description,
      'filters': ?filters,
      'order': order,
      'predicates': ?predicates,
      'ssoValidationEnabled': ?ssoValidationEnabled,
      'title': ?title,
      'tokenRelay': ?tokenRelay,
      'uri': ?uri,
    };
  }

  factory SpringCloudGatewayRouteConfigRoute.fromMap(Map<String, dynamic> map) {
    return SpringCloudGatewayRouteConfigRoute(
      classificationTags: (() { final guardedValue = map['classificationTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      order: pulumi.Input.fromValue(map['order'] as int),
      predicates: (() { final guardedValue = map['predicates']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ssoValidationEnabled: (() { final guardedValue = map['ssoValidationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenRelay: (() { final guardedValue = map['tokenRelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
