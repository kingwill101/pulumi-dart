// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_connection_service_principal_connection_service_principal_args_doc}
/// The set of arguments for ConnectionServicePrincipal.
/// {@endtemplate}
/// {@macro pulumi_automation_connection_service_principal_connection_service_principal_args_doc}
class ConnectionServicePrincipalArgs {
  /// The (Client) ID of the Service Principal.
  final pulumi.Input<String> applicationId;
  /// The name of the automation account in which the Connection is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> automationAccountName;
  /// The thumbprint of the Service Principal Certificate.
  final pulumi.Input<String> certificateThumbprint;
  /// A description for this Connection.
  final pulumi.Input<String>? description;
  /// Specifies the name of the Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the Connection is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The subscription GUID.
  final pulumi.Input<String> subscriptionId;
  /// The ID of the Tenant the Service Principal is assigned in.
  final pulumi.Input<String> tenantId;

  /// Creates a new [ConnectionServicePrincipalArgs].
  /// [applicationId] The (Client) ID of the Service Principal.
  /// [automationAccountName] The name of the automation account in which the Connection is created. Changing this forces a new resource to be created.
  /// [certificateThumbprint] The thumbprint of the Service Principal Certificate.
  /// [description] A description for this Connection.
  /// [name] Specifies the name of the Connection. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the Connection is created. Changing this forces a new resource to be created.
  /// [subscriptionId] The subscription GUID.
  /// [tenantId] The ID of the Tenant the Service Principal is assigned in.
  ConnectionServicePrincipalArgs({
    required this.applicationId,
    required this.automationAccountName,
    required this.certificateThumbprint,
    this.description,
    this.name,
    required this.resourceGroupName,
    required this.subscriptionId,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'automationAccountName': automationAccountName,
      'certificateThumbprint': certificateThumbprint,
      'description': ?description,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'subscriptionId': subscriptionId,
      'tenantId': tenantId,
    };
  }

  factory ConnectionServicePrincipalArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionServicePrincipalArgs(
      applicationId: (map['applicationId'] as String).input(),
      automationAccountName: (map['automationAccountName'] as String).input(),
      certificateThumbprint: (map['certificateThumbprint'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      subscriptionId: (map['subscriptionId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
    );
  }
}

