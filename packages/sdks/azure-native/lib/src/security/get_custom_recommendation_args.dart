// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_custom_recommendation_args_doc}
/// Arguments for getCustomRecommendation.
/// {@endtemplate}
/// {@macro pulumi_security_get_custom_recommendation_args_doc}
class GetCustomRecommendationArgs {
  /// Name of the Custom Recommendation.
  final pulumi.Input<String> customRecommendationName;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> scope;

  /// Creates a new [GetCustomRecommendationArgs].
  /// [customRecommendationName] Name of the Custom Recommendation.
  /// [scope] The fully qualified Azure Resource manager identifier of the resource.
  const GetCustomRecommendationArgs({
    required this.customRecommendationName,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRecommendationName': customRecommendationName,
      'scope': scope,
    };
  }

  factory GetCustomRecommendationArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomRecommendationArgs(
      customRecommendationName: pulumi.Input.fromValue(map['customRecommendationName'] as String),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}
