// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appservice_get_linux_web_app_get_linux_web_app_args_doc}
/// Arguments for getLinuxWebApp.
/// {@endtemplate}
/// {@macro pulumi_appservice_get_linux_web_app_get_linux_web_app_args_doc}
class GetLinuxWebAppArgs {
  /// The name of this Linux Web App.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Linux Web App exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLinuxWebAppArgs].
  /// [name] The name of this Linux Web App.
  /// [resourceGroupName] The name of the Resource Group where the Linux Web App exists.
  GetLinuxWebAppArgs({
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

  factory GetLinuxWebAppArgs.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

