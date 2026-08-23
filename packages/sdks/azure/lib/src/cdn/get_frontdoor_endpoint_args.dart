// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_frontdoor_endpoint_get_frontdoor_endpoint_args_doc}
/// Arguments for getFrontdoorEndpoint.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_frontdoor_endpoint_get_frontdoor_endpoint_args_doc}
class GetFrontdoorEndpointArgs {
  /// Specifies the name of the Front Door Endpoint.
  final pulumi.Input<String> name;
  /// The name of the Front Door Profile within which Front Door Endpoint exists.
  final pulumi.Input<String> profileName;
  /// The name of the Resource Group where the Front Door Profile exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFrontdoorEndpointArgs].
  /// [name] Specifies the name of the Front Door Endpoint.
  /// [profileName] The name of the Front Door Profile within which Front Door Endpoint exists.
  /// [resourceGroupName] The name of the Resource Group where the Front Door Profile exists.
  const GetFrontdoorEndpointArgs({
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

  factory GetFrontdoorEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorEndpointArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      profileName: pulumi.Input.fromValue(map['profileName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
