// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logicapps_get_standard_get_standard_args_doc}
/// Arguments for getStandard.
/// {@endtemplate}
/// {@macro pulumi_logicapps_get_standard_get_standard_args_doc}
class GetStandardArgs {
  /// The name of the Logic App.
  final pulumi.Input<String> name;

  /// The name of the Resource Group where the Logic App exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetStandardArgs].
  /// [name] The name of the Logic App.
  /// [resourceGroupName] The name of the Resource Group where the Logic App exists.
  GetStandardArgs({required this.name, required this.resourceGroupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetStandardArgs.fromMap(Map<String, dynamic> map) {
    return GetStandardArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
