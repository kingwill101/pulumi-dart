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
  GetProfileArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetProfileArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

