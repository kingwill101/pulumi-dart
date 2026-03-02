// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appservice_get_environment_v3_get_environment_v3_args_doc}
/// Arguments for getEnvironmentV3.
/// {@endtemplate}
/// {@macro pulumi_appservice_get_environment_v3_get_environment_v3_args_doc}
class GetEnvironmentV3Args {
  /// The name of this v3 App Service Environment.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the v3 App Service Environment exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEnvironmentV3Args].
  /// [name] The name of this v3 App Service Environment.
  /// [resourceGroupName] The name of the Resource Group where the v3 App Service Environment exists.
  GetEnvironmentV3Args({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEnvironmentV3Args.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentV3Args(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

