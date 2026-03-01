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
  GetWebAppPremierAddOnArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> premierAddOnName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      premierAddOnName = pulumi.Input.asInput<String>(premierAddOnName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'premierAddOnName': premierAddOnName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWebAppPremierAddOnArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppPremierAddOnArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      premierAddOnName: pulumi.Output.create<String>(map['premierAddOnName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

