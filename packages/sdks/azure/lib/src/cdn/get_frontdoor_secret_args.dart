// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_frontdoor_secret_get_frontdoor_secret_args_doc}
/// Arguments for getFrontdoorSecret.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_frontdoor_secret_get_frontdoor_secret_args_doc}
class GetFrontdoorSecretArgs {
  /// Specifies the name of the Front Door Secret.
  final pulumi.Input<String> name;
  /// The name of the Front Door Profile within which the Front Door Secret exists.
  final pulumi.Input<String> profileName;
  /// The name of the Resource Group where the Front Door Profile exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFrontdoorSecretArgs].
  /// [name] Specifies the name of the Front Door Secret.
  /// [profileName] The name of the Front Door Profile within which the Front Door Secret exists.
  /// [resourceGroupName] The name of the Resource Group where the Front Door Profile exists.
  GetFrontdoorSecretArgs({
    required this.name,
    required this.profileName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFrontdoorSecretArgs.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorSecretArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      profileName: pulumi.Input.fromValue(map['profileName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

