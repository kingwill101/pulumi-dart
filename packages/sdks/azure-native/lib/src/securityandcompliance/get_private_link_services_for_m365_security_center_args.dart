// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityandcompliance_get_private_link_services_for_m365_security_center_args_doc}
/// Arguments for getPrivateLinkServicesForM365SecurityCenter.
/// {@endtemplate}
/// {@macro pulumi_securityandcompliance_get_private_link_services_for_m365_security_center_args_doc}
class GetPrivateLinkServicesForM365SecurityCenterArgs {
  /// The name of the resource group that contains the service instance.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the service instance.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetPrivateLinkServicesForM365SecurityCenterArgs].
  /// [resourceGroupName] The name of the resource group that contains the service instance.
  /// [resourceName] The name of the service instance.
  GetPrivateLinkServicesForM365SecurityCenterArgs({
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetPrivateLinkServicesForM365SecurityCenterArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateLinkServicesForM365SecurityCenterArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}

