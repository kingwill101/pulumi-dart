// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_container_registry_container_registry_args_doc}
/// The set of arguments for ContainerRegistry.
/// {@endtemplate}
/// {@macro pulumi_index_container_registry_container_registry_args_doc}
class ContainerRegistryArgs {
  /// The name of the container_registry
  final pulumi.Input<String>? name;
  /// The slug identifier of for region where registry data will be stored. When not provided, a region will be selected automatically.
  final pulumi.Input<String>? region;
  /// The slug identifier for the subscription tier to use (`starter`, `basic`, or `professional`)
  final pulumi.Input<String> subscriptionTierSlug;

  /// Creates a new [ContainerRegistryArgs].
  /// [name] The name of the container_registry
  /// [region] The slug identifier of for region where registry data will be stored. When not provided, a region will be selected automatically.
  /// [subscriptionTierSlug] The slug identifier for the subscription tier to use (`starter`, `basic`, or `professional`)
  ContainerRegistryArgs({
    this.name,
    this.region,
    required this.subscriptionTierSlug,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
      'subscriptionTierSlug': subscriptionTierSlug,
    };
  }

  factory ContainerRegistryArgs.fromMap(Map<String, dynamic> map) {
    return ContainerRegistryArgs(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      subscriptionTierSlug: (map['subscriptionTierSlug'] as String).input(),
    );
  }
}

