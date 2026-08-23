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
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWebAppPremierAddOnArgs].
  /// [name] Name of the app.
  /// [premierAddOnName] Add-on name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
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
