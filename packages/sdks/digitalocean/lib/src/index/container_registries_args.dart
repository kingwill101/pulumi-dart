// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_container_registries_container_registries_args_doc}
/// The set of arguments for ContainerRegistries.
/// {@endtemplate}
/// {@macro pulumi_index_container_registries_container_registries_args_doc}
class ContainerRegistriesArgs {
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? region;
  final pulumi.Input<String> subscriptionTierSlug;

  /// Creates a new [ContainerRegistriesArgs].
  /// [name] Optional.
  /// [region] Optional.
  /// [subscriptionTierSlug] Required.
  ContainerRegistriesArgs({
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

  factory ContainerRegistriesArgs.fromMap(Map<String, dynamic> map) {
    return ContainerRegistriesArgs(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      subscriptionTierSlug: (map['subscriptionTierSlug'] as String).input(),
    );
  }
}

