// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_core_get_resource_group_get_resource_group_args_doc}
/// Arguments for getResourceGroup.
/// {@endtemplate}
/// {@macro pulumi_core_get_resource_group_get_resource_group_args_doc}
class GetResourceGroupArgs {
  /// The Name of this Resource Group.
  final pulumi.Input<String> name;

  /// Creates a new [GetResourceGroupArgs].
  /// [name] The Name of this Resource Group.
  GetResourceGroupArgs({
    required pulumi.Output<String> name,
  }) :
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetResourceGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetResourceGroupArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

