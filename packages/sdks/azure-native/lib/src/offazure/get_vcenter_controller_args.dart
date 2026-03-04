// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_offazure_get_vcenter_controller_args_doc}
/// Arguments for getVcenterController.
/// {@endtemplate}
/// {@macro pulumi_offazure_get_vcenter_controller_args_doc}
class GetVcenterControllerArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Site name
  final pulumi.Input<String> siteName;

  /// VCenters name
  final pulumi.Input<String> vcenterName;

  /// Creates a new [GetVcenterControllerArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteName] Site name
  /// [vcenterName] VCenters name
  GetVcenterControllerArgs({
    required this.resourceGroupName,
    required this.siteName,
    required this.vcenterName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'siteName': siteName,
      'vcenterName': vcenterName,
    };
  }

  factory GetVcenterControllerArgs.fromMap(Map<String, dynamic> map) {
    return GetVcenterControllerArgs(
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      siteName: pulumi.Input.fromValue(map['siteName'] as String),
      vcenterName: pulumi.Input.fromValue(map['vcenterName'] as String),
    );
  }
}
