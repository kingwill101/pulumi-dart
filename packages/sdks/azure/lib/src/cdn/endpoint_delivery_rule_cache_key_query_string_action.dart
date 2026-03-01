// ignore_for_file: unused_element, unnecessary_cast


class EndpointDeliveryRuleCacheKeyQueryStringAction {
  /// The behavior of the cache key for query strings. Valid values are `Exclude`, `ExcludeAll`, `Include` and `IncludeAll`.
  final String behavior;
  /// Comma separated list of parameter values.
  final String? parameters;

  /// Creates a new [EndpointDeliveryRuleCacheKeyQueryStringAction].
  /// [behavior] The behavior of the cache key for query strings. Valid values are `Exclude`, `ExcludeAll`, `Include` and `IncludeAll`.
  /// [parameters] Comma separated list of parameter values.
  EndpointDeliveryRuleCacheKeyQueryStringAction({
    required this.behavior,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behavior': behavior,
      'parameters': ?parameters,
    };
  }

  factory EndpointDeliveryRuleCacheKeyQueryStringAction.fromMap(Map<String, dynamic> map) {
    return EndpointDeliveryRuleCacheKeyQueryStringAction(
      behavior: map['behavior'] as String,
      parameters: map['parameters'] == null ? null : map['parameters'] as String,
    );
  }
}

