// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_get_factory_get_factory_args_doc}
/// Arguments for getFactory.
/// {@endtemplate}
/// {@macro pulumi_datafactory_get_factory_get_factory_args_doc}
class GetFactoryArgs {
  /// The name of this Azure Data Factory.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Azure Data Factory exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFactoryArgs].
  /// [name] The name of this Azure Data Factory.
  /// [resourceGroupName] The name of the Resource Group where the Azure Data Factory exists.
  const GetFactoryArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFactoryArgs.fromMap(Map<String, dynamic> map) {
    return GetFactoryArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
