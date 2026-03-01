// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appservice_get_static_web_app_get_static_web_app_args_doc}
/// Arguments for getStaticWebApp.
/// {@endtemplate}
/// {@macro pulumi_appservice_get_static_web_app_get_static_web_app_args_doc}
class GetStaticWebAppArgs {
  /// The name of this Static Web App.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Static Web App exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetStaticWebAppArgs].
  /// [name] The name of this Static Web App.
  /// [resourceGroupName] The name of the Resource Group where the Static Web App exists.
  GetStaticWebAppArgs({
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

  factory GetStaticWebAppArgs.fromMap(Map<String, dynamic> map) {
    return GetStaticWebAppArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

