// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_frontdoor_profile_get_frontdoor_profile_args_doc}
/// Arguments for getFrontdoorProfile.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_frontdoor_profile_get_frontdoor_profile_args_doc}
class GetFrontdoorProfileArgs {
  /// Specifies the name of the Front Door Profile.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where this Front Door Profile exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFrontdoorProfileArgs].
  /// [name] Specifies the name of the Front Door Profile.
  /// [resourceGroupName] The name of the Resource Group where this Front Door Profile exists.
  const GetFrontdoorProfileArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFrontdoorProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorProfileArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
