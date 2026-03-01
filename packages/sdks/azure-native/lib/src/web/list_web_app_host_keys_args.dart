// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_web_app_host_keys_args_doc}
/// Arguments for listWebAppHostKeys.
/// {@endtemplate}
/// {@macro pulumi_web_list_web_app_host_keys_args_doc}
class ListWebAppHostKeysArgs {
  /// Site name.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListWebAppHostKeysArgs].
  /// [name] Site name.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  ListWebAppHostKeysArgs({
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

  factory ListWebAppHostKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListWebAppHostKeysArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

