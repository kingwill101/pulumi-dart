// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_search_get_service_get_service_args_doc}
/// Arguments for getService.
/// {@endtemplate}
/// {@macro pulumi_search_get_service_get_service_args_doc}
class GetServiceArgs {
  /// The Name of the Search Service.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Search Service exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetServiceArgs].
  /// [name] The Name of the Search Service.
  /// [resourceGroupName] The name of the Resource Group where the Search Service exists.
  GetServiceArgs({
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

  factory GetServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

