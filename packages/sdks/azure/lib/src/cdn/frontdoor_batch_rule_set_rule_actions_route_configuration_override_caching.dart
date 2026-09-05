// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorBatchRuleSetRuleActionsRouteConfigurationOverrideCaching {
  /// Controls how Front Door handles cache behaviour for the response. Possible values are `HonorOrigin`, `OverrideAlways`, `OverrideIfOriginMissing`, and `Disabled`.
  ///
  /// &gt; **Note:** If `behaviour` is set to `Disabled`, you cannot set `compressionEnabled`, `duration`, `queryStringBehaviour`, or `queryStringParameters`.
  ///
  /// &gt; **Note:** Enabling caching in a `routeConfigurationOverride` block affects the service-side quota used for rule operations. Each rule that enables caching consumes two of the `100` available rule slots during an update.
  final pulumi.Input<String> behaviour;
  /// Whether compression is enabled. Defaults to `false`.
  final pulumi.Input<bool?>? compressionEnabled;
  /// When `behaviour` is set to `OverrideAlways` or `OverrideIfOriginMissing`, this field specifies the cache duration to use and is required. The maximum allowed value is `365.23:59:59`. If the desired maximum cache duration is less than `1` day, specify it in the `HH:MM:SS` format, for example `23:59:59`.
  ///
  /// &gt; **Note:** `duration` must not be set when `behaviour` is set to `HonorOrigin`.
  final pulumi.Input<String?>? duration;
  /// Controls how query strings contribute to the cache key. Possible values are `IgnoreQueryString`, `UseQueryString`, `IgnoreSpecifiedQueryStrings`, and `IncludeSpecifiedQueryStrings`.
  ///
  /// &gt; **Note:** `queryStringBehaviour` is required when `behaviour` is not set to `Disabled`.
  final pulumi.Input<String?>? queryStringBehaviour;
  /// A list of query string parameter names. A maximum of `100` parameters may be defined.
  ///
  /// &gt; **Note:** `queryStringParameters` is required when `queryStringBehaviour` is set to `IncludeSpecifiedQueryStrings` or `IgnoreSpecifiedQueryStrings`, and must not be set when `queryStringBehaviour` is set to `UseQueryString` or `IgnoreQueryString`.
  final pulumi.Input<List<String>?>? queryStringParameters;

  /// Creates a new [FrontdoorBatchRuleSetRuleActionsRouteConfigurationOverrideCaching].
  /// [behaviour] Controls how Front Door handles cache behaviour for the response. Possible values are `HonorOrigin`, `OverrideAlways`, `OverrideIfOriginMissing`, and `Disabled`.
  /// [compressionEnabled] Whether compression is enabled. Defaults to `false`.
  /// [duration] When `behaviour` is set to `OverrideAlways` or `OverrideIfOriginMissing`, this field specifies the cache duration to use and is required. The maximum allowed value is `365.23:59:59`. If the desired maximum cache duration is less than `1` day, specify it in the `HH:MM:SS` format, for example `23:59:59`.
  /// [queryStringBehaviour] Controls how query strings contribute to the cache key. Possible values are `IgnoreQueryString`, `UseQueryString`, `IgnoreSpecifiedQueryStrings`, and `IncludeSpecifiedQueryStrings`.
  /// [queryStringParameters] A list of query string parameter names. A maximum of `100` parameters may be defined.
  const FrontdoorBatchRuleSetRuleActionsRouteConfigurationOverrideCaching({
    required this.behaviour,
    this.compressionEnabled,
    this.duration,
    this.queryStringBehaviour,
    this.queryStringParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behaviour': behaviour,
      'compressionEnabled': ?compressionEnabled,
      'duration': ?duration,
      'queryStringBehaviour': ?queryStringBehaviour,
      'queryStringParameters': ?queryStringParameters,
    };
  }

  factory FrontdoorBatchRuleSetRuleActionsRouteConfigurationOverrideCaching.fromMap(Map<String, dynamic> map) {
    return FrontdoorBatchRuleSetRuleActionsRouteConfigurationOverrideCaching(
      behaviour: pulumi.Input.fromValue(map['behaviour'] as String),
      compressionEnabled: (() { final guardedValue = map['compressionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryStringBehaviour: (() { final guardedValue = map['queryStringBehaviour']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryStringParameters: (() { final guardedValue = map['queryStringParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
