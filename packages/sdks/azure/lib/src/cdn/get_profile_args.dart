// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_profile_get_profile_args_doc}
/// Arguments for getProfile.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_profile_get_profile_args_doc}
class GetProfileArgs {
  /// The name of the CDN Profile.
  final pulumi.Input<String> name;
  /// The name of the resource group in which the CDN Profile exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetProfileArgs].
  /// [name] The name of the CDN Profile.
  /// [resourceGroupName] The name of the resource group in which the CDN Profile exists.
  const GetProfileArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetProfileArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
