// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devtest_get_lab_get_lab_args_doc}
/// Arguments for getLab.
/// {@endtemplate}
/// {@macro pulumi_devtest_get_lab_get_lab_args_doc}
class GetLabArgs {
  /// The name of the Dev Test Lab.
  final pulumi.Input<String> name;
  /// The Name of the Resource Group where the Dev Test Lab exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLabArgs].
  /// [name] The name of the Dev Test Lab.
  /// [resourceGroupName] The Name of the Resource Group where the Dev Test Lab exists.
  const GetLabArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLabArgs.fromMap(Map<String, dynamic> map) {
    return GetLabArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

