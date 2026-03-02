// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_offazure_get_hyperv_host_controller_args_doc}
/// Arguments for getHypervHostController.
/// {@endtemplate}
/// {@macro pulumi_offazure_get_hyperv_host_controller_args_doc}
class GetHypervHostControllerArgs {
  /// Host name
  final pulumi.Input<String> hostName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Site name
  final pulumi.Input<String> siteName;

  /// Creates a new [GetHypervHostControllerArgs].
  /// [hostName] Host name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteName] Site name
  GetHypervHostControllerArgs({
    required this.hostName,
    required this.resourceGroupName,
    required this.siteName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostName': hostName,
      'resourceGroupName': resourceGroupName,
      'siteName': siteName,
    };
  }

  factory GetHypervHostControllerArgs.fromMap(Map<String, dynamic> map) {
    return GetHypervHostControllerArgs(
      hostName: (map['hostName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      siteName: (map['siteName'] as String).input(),
    );
  }
}

