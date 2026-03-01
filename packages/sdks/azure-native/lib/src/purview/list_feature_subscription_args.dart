// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_purview_list_feature_subscription_args_doc}
/// Arguments for listFeatureSubscription.
/// {@endtemplate}
/// {@macro pulumi_purview_list_feature_subscription_args_doc}
class ListFeatureSubscriptionArgs {
  /// Set of features
  final pulumi.Input<List<String>>? features;
  /// Location of feature.
  final pulumi.Input<String> locations;

  /// Creates a new [ListFeatureSubscriptionArgs].
  /// [features] Set of features
  /// [locations] Location of feature.
  ListFeatureSubscriptionArgs({
    pulumi.Output<List<String>>? features,
    required pulumi.Output<String> locations,
  }) :
      features = pulumi.Input.asOptionalInput<List<String>>(features),
      locations = pulumi.Input.asInput<String>(locations);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'features': ?features,
      'locations': locations,
    };
  }

  factory ListFeatureSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return ListFeatureSubscriptionArgs(
      features: map['features'] == null ? null : pulumi.Output.create<List<String>>((map['features'] as List).cast<String>()),
      locations: pulumi.Output.create<String>(map['locations'] as String),
    );
  }
}

