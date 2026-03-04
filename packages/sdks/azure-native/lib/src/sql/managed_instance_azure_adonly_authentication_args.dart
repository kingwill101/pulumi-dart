// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_managed_instance_azure_adonly_authentication_args_doc}
/// The set of arguments for ManagedInstanceAzureADOnlyAuthentication.
/// {@endtemplate}
/// {@macro pulumi_sql_managed_instance_azure_adonly_authentication_args_doc}
class ManagedInstanceAzureADOnlyAuthenticationArgs {
  /// The name of server azure active directory only authentication.
  final pulumi.Input<String>? authenticationName;

  /// Azure Active Directory only Authentication enabled.
  final pulumi.Input<bool> azureADOnlyAuthentication;

  /// The name of the managed instance.
  final pulumi.Input<String> managedInstanceName;

  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ManagedInstanceAzureADOnlyAuthenticationArgs].
  /// [authenticationName] The name of server azure active directory only authentication.
  /// [azureADOnlyAuthentication] Azure Active Directory only Authentication enabled.
  /// [managedInstanceName] The name of the managed instance.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  ManagedInstanceAzureADOnlyAuthenticationArgs({
    this.authenticationName,
    required this.azureADOnlyAuthentication,
    required this.managedInstanceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationName': ?authenticationName,
      'azureADOnlyAuthentication': azureADOnlyAuthentication,
      'managedInstanceName': managedInstanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ManagedInstanceAzureADOnlyAuthenticationArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedInstanceAzureADOnlyAuthenticationArgs(
      authenticationName: (() {
        final guardedValue = map['authenticationName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      azureADOnlyAuthentication: pulumi.Input.fromValue(
        map['azureADOnlyAuthentication'] as bool,
      ),
      managedInstanceName: pulumi.Input.fromValue(
        map['managedInstanceName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
