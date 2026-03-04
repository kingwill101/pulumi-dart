// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_loadbalancer_flavor_v2_flavor_v2_args_doc}
/// The set of arguments for FlavorV2.
/// {@endtemplate}
/// {@macro pulumi_loadbalancer_flavor_v2_flavor_v2_args_doc}
class FlavorV2Args {
  /// The description of the flavor. Changing this
  /// updates the existing flavor.
  final pulumi.Input<String>? description;

  /// Whether the flavor is enabled or not. Defaults to `true`.
  /// Changing this updates the existing flavor.
  final pulumi.Input<bool>? enabled;

  /// The flavor_profile_id that the flavor
  /// will use. Changing this creates a new flavor.
  final pulumi.Input<String> flavorProfileId;

  /// Name of the flavor. Changing this updates the existing
  /// flavor.
  final pulumi.Input<String>? name;

  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create an LB member. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// LB flavor.
  final pulumi.Input<String>? region;

  /// Creates a new [FlavorV2Args].
  /// [description] The description of the flavor. Changing this
  /// [enabled] Whether the flavor is enabled or not. Defaults to `true`.
  /// [flavorProfileId] The flavor_profile_id that the flavor
  /// [name] Name of the flavor. Changing this updates the existing
  /// [region] The region in which to obtain the V2 Networking client.
  FlavorV2Args({
    this.description,
    this.enabled,
    required this.flavorProfileId,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'enabled': ?enabled,
      'flavorProfileId': flavorProfileId,
      'name': ?name,
      'region': ?region,
    };
  }

  factory FlavorV2Args.fromMap(Map<String, dynamic> map) {
    return FlavorV2Args(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      flavorProfileId: pulumi.Input.fromValue(map['flavorProfileId'] as String),
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
    );
  }
}
