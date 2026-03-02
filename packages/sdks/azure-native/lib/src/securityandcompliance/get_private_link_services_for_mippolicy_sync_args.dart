// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityandcompliance_get_private_link_services_for_mippolicy_sync_args_doc}
/// Arguments for getPrivateLinkServicesForMIPPolicySync.
/// {@endtemplate}
/// {@macro pulumi_securityandcompliance_get_private_link_services_for_mippolicy_sync_args_doc}
class GetPrivateLinkServicesForMIPPolicySyncArgs {
  /// The name of the resource group that contains the service instance.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the service instance.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetPrivateLinkServicesForMIPPolicySyncArgs].
  /// [resourceGroupName] The name of the resource group that contains the service instance.
  /// [resourceName] The name of the service instance.
  GetPrivateLinkServicesForMIPPolicySyncArgs({
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetPrivateLinkServicesForMIPPolicySyncArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateLinkServicesForMIPPolicySyncArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: (map['resourceName'] as String).input(),
    );
  }
}

