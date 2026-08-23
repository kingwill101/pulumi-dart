// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_web_app_slot_configuration_names_args_doc}
/// Arguments for getWebAppSlotConfigurationNames.
/// {@endtemplate}
/// {@macro pulumi_web_get_web_app_slot_configuration_names_args_doc}
class GetWebAppSlotConfigurationNamesArgs {
  /// Name of the app.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWebAppSlotConfigurationNamesArgs].
  /// [name] Name of the app.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetWebAppSlotConfigurationNamesArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWebAppSlotConfigurationNamesArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppSlotConfigurationNamesArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
