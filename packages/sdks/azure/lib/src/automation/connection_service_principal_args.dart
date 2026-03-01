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
    required pulumi.Output<String> applicationId,
    required pulumi.Output<String> automationAccountName,
    required pulumi.Output<String> certificateThumbprint,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> subscriptionId,
    required pulumi.Output<String> tenantId,
  }) :
      applicationId = pulumi.Input.asInput<String>(applicationId),
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      certificateThumbprint = pulumi.Input.asInput<String>(certificateThumbprint),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subscriptionId = pulumi.Input.asInput<String>(subscriptionId),
      tenantId = pulumi.Input.asInput<String>(tenantId);

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
      applicationId: pulumi.Output.create<String>(map['applicationId'] as String),
      automationAccountName: pulumi.Output.create<String>(map['automationAccountName'] as String),
      certificateThumbprint: pulumi.Output.create<String>(map['certificateThumbprint'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subscriptionId: pulumi.Output.create<String>(map['subscriptionId'] as String),
      tenantId: pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

