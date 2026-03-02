// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_offazurespringboot_get_springbootserver_args_doc}
/// Arguments for getSpringbootserver.
/// {@endtemplate}
/// {@macro pulumi_offazurespringboot_get_springbootserver_args_doc}
class GetSpringbootserverArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The springbootsites name.
  final pulumi.Input<String> siteName;
  /// The springbootservers name.
  final pulumi.Input<String> springbootserversName;

  /// Creates a new [GetSpringbootserverArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteName] The springbootsites name.
  /// [springbootserversName] The springbootservers name.
  GetSpringbootserverArgs({
    required this.resourceGroupName,
    required this.siteName,
    required this.springbootserversName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'siteName': siteName,
      'springbootserversName': springbootserversName,
    };
  }

  factory GetSpringbootserverArgs.fromMap(Map<String, dynamic> map) {
    return GetSpringbootserverArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      siteName: (map['siteName'] as String).input(),
      springbootserversName: (map['springbootserversName'] as String).input(),
    );
  }
}

