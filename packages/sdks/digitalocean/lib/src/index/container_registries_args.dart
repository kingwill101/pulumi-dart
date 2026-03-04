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
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subscriptionTierSlug: pulumi.Input.fromValue(
        map['subscriptionTierSlug'] as String,
      ),
    );
  }
}
