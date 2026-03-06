// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_loadtest_get_get_args_doc}
/// Arguments for get.
/// {@endtemplate}
/// {@macro pulumi_loadtest_get_get_args_doc}
class GetArgs {
  /// The name of the Load Test Service.
  final pulumi.Input<String> name;
  /// The name of the Resource Group in which the Load Test Service exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetArgs].
  /// [name] The name of the Load Test Service.
  /// [resourceGroupName] The name of the Resource Group in which the Load Test Service exists.
  const GetArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetArgs.fromMap(Map<String, dynamic> map) {
    return GetArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

