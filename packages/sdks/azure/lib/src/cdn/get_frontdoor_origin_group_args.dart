// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_frontdoor_origin_group_get_frontdoor_origin_group_args_doc}
/// Arguments for getFrontdoorOriginGroup.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_frontdoor_origin_group_get_frontdoor_origin_group_args_doc}
class GetFrontdoorOriginGroupArgs {
  /// Specifies the name of the Front Door Origin Group.
  final pulumi.Input<String> name;
  /// The name of the Front Door Profile within which Front Door Origin Group exists.
  final pulumi.Input<String> profileName;
  /// The name of the Resource Group where the Front Door Profile exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFrontdoorOriginGroupArgs].
  /// [name] Specifies the name of the Front Door Origin Group.
  /// [profileName] The name of the Front Door Profile within which Front Door Origin Group exists.
  /// [resourceGroupName] The name of the Resource Group where the Front Door Profile exists.
  GetFrontdoorOriginGroupArgs({
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

  factory GetFrontdoorOriginGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorOriginGroupArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      profileName: pulumi.Output.create<String>(map['profileName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

