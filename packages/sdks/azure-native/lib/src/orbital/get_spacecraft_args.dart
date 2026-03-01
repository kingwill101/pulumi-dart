// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_orbital_get_spacecraft_args_doc}
/// Arguments for getSpacecraft.
/// {@endtemplate}
/// {@macro pulumi_orbital_get_spacecraft_args_doc}
class GetSpacecraftArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Spacecraft ID.
  final pulumi.Input<String> spacecraftName;

  /// Creates a new [GetSpacecraftArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [spacecraftName] Spacecraft ID.
  GetSpacecraftArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> spacecraftName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      spacecraftName = pulumi.Input.asInput<String>(spacecraftName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'spacecraftName': spacecraftName,
    };
  }

  factory GetSpacecraftArgs.fromMap(Map<String, dynamic> map) {
    return GetSpacecraftArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      spacecraftName: pulumi.Output.create<String>(map['spacecraftName'] as String),
    );
  }
}

