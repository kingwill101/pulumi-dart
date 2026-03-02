// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LbFlavorprofileV2 resources.
class LbFlavorprofileV2State {
  /// String that passes the flavor_data for the flavorprofile.
  /// The data that are allowed depend on the `provider_name` that is passed. jsonencode
  /// can be used for readability as shown in the example above.
  /// Changing this updates the existing flavorprofile.
  final pulumi.Input<String>? flavorData;
  /// Name of the flavorprofile. Changing this updates the existing
  /// flavorprofile.
  final pulumi.Input<String>? name;
  /// The provider_name that the flavor_profile will use.
  /// Changing this updates the existing flavorprofile.
  final pulumi.Input<String>? providerName;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create an LB member. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// LB flavorprofile.
  final pulumi.Input<String>? region;

  /// Creates a new [LbFlavorprofileV2State].
  /// [flavorData] String that passes the flavor_data for the flavorprofile.
  /// [name] Name of the flavorprofile. Changing this updates the existing
  /// [providerName] The provider_name that the flavor_profile will use.
  /// [region] The region in which to obtain the V2 Networking client.
  LbFlavorprofileV2State({
    this.flavorData,
    this.name,
    this.providerName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flavorData': ?flavorData,
      'name': ?name,
      'providerName': ?providerName,
      'region': ?region,
    };
  }

  factory LbFlavorprofileV2State.fromMap(Map<String, dynamic> map) {
    return LbFlavorprofileV2State(
      flavorData: map['flavorData'] == null ? null : (map['flavorData']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      providerName: map['providerName'] == null ? null : (map['providerName']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
    );
  }
}

