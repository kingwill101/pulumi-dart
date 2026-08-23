// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_frontdoor_security_policy_get_frontdoor_security_policy_args_doc}
/// Arguments for getFrontdoorSecurityPolicy.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_frontdoor_security_policy_get_frontdoor_security_policy_args_doc}
class GetFrontdoorSecurityPolicyArgs {
  /// The name of the Front Door Security Policy.
  final pulumi.Input<String> name;
  /// The name of the Front Door Profile.
  final pulumi.Input<String> profileName;
  /// The name of the Resource Group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFrontdoorSecurityPolicyArgs].
  /// [name] The name of the Front Door Security Policy.
  /// [profileName] The name of the Front Door Profile.
  /// [resourceGroupName] The name of the Resource Group.
  const GetFrontdoorSecurityPolicyArgs({
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

  factory GetFrontdoorSecurityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorSecurityPolicyArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      profileName: pulumi.Input.fromValue(map['profileName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
