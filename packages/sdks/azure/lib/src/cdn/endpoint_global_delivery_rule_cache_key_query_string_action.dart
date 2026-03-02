// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointGlobalDeliveryRuleCacheKeyQueryStringAction {
  /// The behavior of the cache key for query strings. Valid values are `Exclude`, `ExcludeAll`, `Include` and `IncludeAll`.
  final pulumi.Input<String> behavior;
  /// Comma separated list of parameter values.
  final pulumi.Input<String>? parameters;

  /// Creates a new [EndpointGlobalDeliveryRuleCacheKeyQueryStringAction].
  /// [behavior] The behavior of the cache key for query strings. Valid values are `Exclude`, `ExcludeAll`, `Include` and `IncludeAll`.
  /// [parameters] Comma separated list of parameter values.
  EndpointGlobalDeliveryRuleCacheKeyQueryStringAction({
    required this.behavior,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behavior': behavior,
      'parameters': ?parameters,
    };
  }

  factory EndpointGlobalDeliveryRuleCacheKeyQueryStringAction.fromMap(Map<String, dynamic> map) {
    return EndpointGlobalDeliveryRuleCacheKeyQueryStringAction(
      behavior: (map['behavior'] as String).input(),
      parameters: map['parameters'] == null ? null : (map['parameters']! as String).input(),
    );
  }
}

