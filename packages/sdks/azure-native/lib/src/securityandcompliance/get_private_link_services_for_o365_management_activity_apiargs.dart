// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityandcompliance_get_private_link_services_for_o365_management_activity_apiargs_doc}
/// Arguments for getPrivateLinkServicesForO365ManagementActivityAPI.
/// {@endtemplate}
/// {@macro pulumi_securityandcompliance_get_private_link_services_for_o365_management_activity_apiargs_doc}
class GetPrivateLinkServicesForO365ManagementActivityAPIArgs {
  /// The name of the resource group that contains the service instance.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the service instance.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetPrivateLinkServicesForO365ManagementActivityAPIArgs].
  /// [resourceGroupName] The name of the resource group that contains the service instance.
  /// [resourceName] The name of the service instance.
  GetPrivateLinkServicesForO365ManagementActivityAPIArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetPrivateLinkServicesForO365ManagementActivityAPIArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateLinkServicesForO365ManagementActivityAPIArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

