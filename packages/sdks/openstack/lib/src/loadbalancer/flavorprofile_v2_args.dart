// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_loadbalancer_flavorprofile_v2_flavorprofile_v2_args_doc}
/// The set of arguments for FlavorprofileV2.
/// {@endtemplate}
/// {@macro pulumi_loadbalancer_flavorprofile_v2_flavorprofile_v2_args_doc}
class FlavorprofileV2Args {
  /// String that passes the flavor_data for the flavorprofile.
  /// The data that are allowed depend on the `provider_name` that is passed. jsonencode
  /// can be used for readability as shown in the example above.
  /// Changing this updates the existing flavorprofile.
  final pulumi.Input<String> flavorData;
  /// Name of the flavorprofile. Changing this updates the existing
  /// flavorprofile.
  final pulumi.Input<String>? name;
  /// The provider_name that the flavor_profile will use.
  /// Changing this updates the existing flavorprofile.
  final pulumi.Input<String> providerName;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create an LB member. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// LB flavorprofile.
  final pulumi.Input<String>? region;

  /// Creates a new [FlavorprofileV2Args].
  /// [flavorData] String that passes the flavor_data for the flavorprofile.
  /// [name] Name of the flavorprofile. Changing this updates the existing
  /// [providerName] The provider_name that the flavor_profile will use.
  /// [region] The region in which to obtain the V2 Networking client.
  FlavorprofileV2Args({
    required this.flavorData,
    this.name,
    required this.providerName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flavorData': flavorData,
      'name': ?name,
      'providerName': providerName,
      'region': ?region,
    };
  }

  factory FlavorprofileV2Args.fromMap(Map<String, dynamic> map) {
    return FlavorprofileV2Args(
      flavorData: (map['flavorData'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      providerName: (map['providerName'] as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
    );
  }
}

