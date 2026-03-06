// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_web_app_premier_add_on_args_doc}
/// Arguments for getWebAppPremierAddOn.
/// {@endtemplate}
/// {@macro pulumi_web_get_web_app_premier_add_on_args_doc}
class GetWebAppPremierAddOnArgs {
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Add-on name.
  final pulumi.Input<String> premierAddOnName;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWebAppPremierAddOnArgs].
  /// [name] Name of the app.
  /// [premierAddOnName] Add-on name.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  const GetWebAppPremierAddOnArgs({
    required this.name,
    required this.premierAddOnName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'premierAddOnName': premierAddOnName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWebAppPremierAddOnArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppPremierAddOnArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      premierAddOnName: pulumi.Input.fromValue(map['premierAddOnName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

