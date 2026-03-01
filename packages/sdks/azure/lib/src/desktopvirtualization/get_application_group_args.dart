// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_desktopvirtualization_get_application_group_get_application_group_args_doc}
/// Arguments for getApplicationGroup.
/// {@endtemplate}
/// {@macro pulumi_desktopvirtualization_get_application_group_get_application_group_args_doc}
class GetApplicationGroupArgs {
  /// The name of this Application Group.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Application Group exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetApplicationGroupArgs].
  /// [name] The name of this Application Group.
  /// [resourceGroupName] The name of the Resource Group where the Application Group exists.
  GetApplicationGroupArgs({
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

  factory GetApplicationGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationGroupArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

