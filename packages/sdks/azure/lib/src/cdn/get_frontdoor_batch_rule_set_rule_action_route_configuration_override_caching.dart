// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFrontdoorBatchRuleSetRuleActionRouteConfigurationOverrideCaching {
  /// The cache behaviour applied to this action.
  final pulumi.Input<String> behaviour;
  /// Whether compression is enabled.
  final pulumi.Input<bool> compressionEnabled;
  /// The cache duration applied to this action.
  final pulumi.Input<String> duration;
  /// The query string caching behaviour applied to this action.
  final pulumi.Input<String> queryStringBehaviour;
  /// The query string parameters associated with this action.
  final pulumi.Input<List<String>> queryStringParameters;

  /// Creates a new [GetFrontdoorBatchRuleSetRuleActionRouteConfigurationOverrideCaching].
  /// [behaviour] The cache behaviour applied to this action.
  /// [compressionEnabled] Whether compression is enabled.
  /// [duration] The cache duration applied to this action.
  /// [queryStringBehaviour] The query string caching behaviour applied to this action.
  /// [queryStringParameters] The query string parameters associated with this action.
  const GetFrontdoorBatchRuleSetRuleActionRouteConfigurationOverrideCaching({
    required this.behaviour,
    required this.compressionEnabled,
    required this.duration,
    required this.queryStringBehaviour,
    required this.queryStringParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behaviour': behaviour,
      'compressionEnabled': compressionEnabled,
      'duration': duration,
      'queryStringBehaviour': queryStringBehaviour,
      'queryStringParameters': queryStringParameters,
    };
  }

  factory GetFrontdoorBatchRuleSetRuleActionRouteConfigurationOverrideCaching.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorBatchRuleSetRuleActionRouteConfigurationOverrideCaching(
      behaviour: pulumi.Input.fromValue(map['behaviour'] as String),
      compressionEnabled: pulumi.Input.fromValue(map['compressionEnabled'] as bool),
      duration: pulumi.Input.fromValue(map['duration'] as String),
      queryStringBehaviour: pulumi.Input.fromValue(map['queryStringBehaviour'] as String),
      queryStringParameters: pulumi.Input.fromValue((map['queryStringParameters'] as List).cast<String>()),
    );
  }
}
