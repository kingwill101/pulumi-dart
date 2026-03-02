// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FlavorV2 resources.
class FlavorV2State {
  /// The description of the flavor. Changing this
  /// updates the existing flavor.
  final pulumi.Input<String>? description;
  /// Whether the flavor is enabled or not. Defaults to `true`.
  /// Changing this updates the existing flavor.
  final pulumi.Input<bool>? enabled;
  /// The flavor_profile_id that the flavor
  /// will use. Changing this creates a new flavor.
  final pulumi.Input<String>? flavorProfileId;
  /// Name of the flavor. Changing this updates the existing
  /// flavor.
  final pulumi.Input<String>? name;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create an LB member. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// LB flavor.
  final pulumi.Input<String>? region;

  /// Creates a new [FlavorV2State].
  /// [description] The description of the flavor. Changing this
  /// [enabled] Whether the flavor is enabled or not. Defaults to `true`.
  /// [flavorProfileId] The flavor_profile_id that the flavor
  /// [name] Name of the flavor. Changing this updates the existing
  /// [region] The region in which to obtain the V2 Networking client.
  FlavorV2State({
    this.description,
    this.enabled,
    this.flavorProfileId,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'enabled': ?enabled,
      'flavorProfileId': ?flavorProfileId,
      'name': ?name,
      'region': ?region,
    };
  }

  factory FlavorV2State.fromMap(Map<String, dynamic> map) {
    return FlavorV2State(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      flavorProfileId: map['flavorProfileId'] == null ? null : (map['flavorProfileId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

