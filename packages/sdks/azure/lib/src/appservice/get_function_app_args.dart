// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appservice_get_function_app_get_function_app_args_doc}
/// Arguments for getFunctionApp.
/// {@endtemplate}
/// {@macro pulumi_appservice_get_function_app_get_function_app_args_doc}
class GetFunctionAppArgs {
  /// The name of the Function App resource.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Function App exists.
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetFunctionAppArgs].
  /// [name] The name of the Function App resource.
  /// [resourceGroupName] The name of the Resource Group where the Function App exists.
  /// [tags] Optional.
  GetFunctionAppArgs({
    required this.name,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetFunctionAppArgs.fromMap(Map<String, dynamic> map) {
    return GetFunctionAppArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

