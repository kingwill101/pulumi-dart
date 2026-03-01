// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_custom_recommendation_args_doc}
/// Arguments for getCustomRecommendation.
/// {@endtemplate}
/// {@macro pulumi_security_get_custom_recommendation_args_doc}
class GetCustomRecommendationArgs {
  /// Name of the Custom Recommendation.
  final pulumi.Input<String> customRecommendationName;
  /// The scope of the custom recommendation. Valid scopes are: management group (format: 'providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: 'subscriptions/{subscriptionId}'), or security connector (format: 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Security/securityConnectors/{securityConnectorName})'
  final pulumi.Input<String> scope;

  /// Creates a new [GetCustomRecommendationArgs].
  /// [customRecommendationName] Name of the Custom Recommendation.
  /// [scope] The scope of the custom recommendation. Valid scopes are: management group (format: 'providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: 'subscriptions/{subscriptionId}'), or security connector (format: 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Security/securityConnectors/{securityConnectorName})'
  GetCustomRecommendationArgs({
    required pulumi.Output<String> customRecommendationName,
    required pulumi.Output<String> scope,
  }) :
      customRecommendationName = pulumi.Input.asInput<String>(customRecommendationName),
      scope = pulumi.Input.asInput<String>(scope);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRecommendationName': customRecommendationName,
      'scope': scope,
    };
  }

  factory GetCustomRecommendationArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomRecommendationArgs(
      customRecommendationName: pulumi.Output.create<String>(map['customRecommendationName'] as String),
      scope: pulumi.Output.create<String>(map['scope'] as String),
    );
  }
}

