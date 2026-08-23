// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_web_app_connection_strings_args_doc}
/// Arguments for listWebAppConnectionStrings.
/// {@endtemplate}
/// {@macro pulumi_web_list_web_app_connection_strings_args_doc}
class ListWebAppConnectionStringsArgs {
  /// Name of the app.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListWebAppConnectionStringsArgs].
  /// [name] Name of the app.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const ListWebAppConnectionStringsArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListWebAppConnectionStringsArgs.fromMap(Map<String, dynamic> map) {
    return ListWebAppConnectionStringsArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
