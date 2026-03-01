// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_nsp_profile_args_doc}
/// Arguments for getNspProfile.
/// {@endtemplate}
/// {@macro pulumi_network_get_nsp_profile_args_doc}
class GetNspProfileArgs {
  /// The name of the network security perimeter.
  final pulumi.Input<String> networkSecurityPerimeterName;
  /// The name of the NSP profile.
  final pulumi.Input<String> profileName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNspProfileArgs].
  /// [networkSecurityPerimeterName] The name of the network security perimeter.
  /// [profileName] The name of the NSP profile.
  /// [resourceGroupName] The name of the resource group.
  GetNspProfileArgs({
    required pulumi.Output<String> networkSecurityPerimeterName,
    required pulumi.Output<String> profileName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      networkSecurityPerimeterName = pulumi.Input.asInput<String>(networkSecurityPerimeterName),
      profileName = pulumi.Input.asInput<String>(profileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkSecurityPerimeterName': networkSecurityPerimeterName,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNspProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetNspProfileArgs(
      networkSecurityPerimeterName: pulumi.Output.create<String>(map['networkSecurityPerimeterName'] as String),
      profileName: pulumi.Output.create<String>(map['profileName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

