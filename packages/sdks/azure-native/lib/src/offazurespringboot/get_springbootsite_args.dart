// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_offazurespringboot_get_springbootsite_args_doc}
/// Arguments for getSpringbootsite.
/// {@endtemplate}
/// {@macro pulumi_offazurespringboot_get_springbootsite_args_doc}
class GetSpringbootsiteArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The springbootsites name.
  final pulumi.Input<String> springbootsitesName;

  /// Creates a new [GetSpringbootsiteArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [springbootsitesName] The springbootsites name.
  GetSpringbootsiteArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> springbootsitesName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      springbootsitesName = pulumi.Input.asInput<String>(springbootsitesName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'springbootsitesName': springbootsitesName,
    };
  }

  factory GetSpringbootsiteArgs.fromMap(Map<String, dynamic> map) {
    return GetSpringbootsiteArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      springbootsitesName: pulumi.Output.create<String>(map['springbootsitesName'] as String),
    );
  }
}

