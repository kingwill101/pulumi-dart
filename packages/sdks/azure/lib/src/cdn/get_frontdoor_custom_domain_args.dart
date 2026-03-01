// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_frontdoor_custom_domain_get_frontdoor_custom_domain_args_doc}
/// Arguments for getFrontdoorCustomDomain.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_frontdoor_custom_domain_get_frontdoor_custom_domain_args_doc}
class GetFrontdoorCustomDomainArgs {
  /// The name of the Front Door Custom Domain.
  final pulumi.Input<String> name;
  /// The name of the Front Door Profile which the Front Door Custom Domain is bound to.
  final pulumi.Input<String> profileName;
  /// The name of the Resource Group where the Front Door Profile exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFrontdoorCustomDomainArgs].
  /// [name] The name of the Front Door Custom Domain.
  /// [profileName] The name of the Front Door Profile which the Front Door Custom Domain is bound to.
  /// [resourceGroupName] The name of the Resource Group where the Front Door Profile exists.
  GetFrontdoorCustomDomainArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> profileName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      profileName = pulumi.Input.asInput<String>(profileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFrontdoorCustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorCustomDomainArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      profileName: pulumi.Output.create<String>(map['profileName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

