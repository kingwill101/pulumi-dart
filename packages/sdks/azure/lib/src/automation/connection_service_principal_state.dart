// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ConnectionServicePrincipal resources.
class ConnectionServicePrincipalState {
  /// The (Client) ID of the Service Principal.
  final pulumi.Input<String>? applicationId;
  /// The name of the automation account in which the Connection is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? automationAccountName;
  /// The thumbprint of the Service Principal Certificate.
  final pulumi.Input<String>? certificateThumbprint;
  /// A description for this Connection.
  final pulumi.Input<String>? description;
  /// Specifies the name of the Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the Connection is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The subscription GUID.
  final pulumi.Input<String>? subscriptionId;
  /// The ID of the Tenant the Service Principal is assigned in.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [ConnectionServicePrincipalState].
  /// [applicationId] The (Client) ID of the Service Principal.
  /// [automationAccountName] The name of the automation account in which the Connection is created. Changing this forces a new resource to be created.
  /// [certificateThumbprint] The thumbprint of the Service Principal Certificate.
  /// [description] A description for this Connection.
  /// [name] Specifies the name of the Connection. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the Connection is created. Changing this forces a new resource to be created.
  /// [subscriptionId] The subscription GUID.
  /// [tenantId] The ID of the Tenant the Service Principal is assigned in.
  ConnectionServicePrincipalState({
    pulumi.Output<String>? applicationId,
    pulumi.Output<String>? automationAccountName,
    pulumi.Output<String>? certificateThumbprint,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? subscriptionId,
    pulumi.Output<String>? tenantId,
  }) :
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      automationAccountName = pulumi.Input.asOptionalInput<String>(automationAccountName),
      certificateThumbprint = pulumi.Input.asOptionalInput<String>(certificateThumbprint),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'automationAccountName': ?automationAccountName,
      'certificateThumbprint': ?certificateThumbprint,
      'description': ?description,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'subscriptionId': ?subscriptionId,
      'tenantId': ?tenantId,
    };
  }

  factory ConnectionServicePrincipalState.fromMap(Map<String, dynamic> map) {
    return ConnectionServicePrincipalState(
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      automationAccountName: map['automationAccountName'] == null ? null : pulumi.Output.create<String>(map['automationAccountName'] as String),
      certificateThumbprint: map['certificateThumbprint'] == null ? null : pulumi.Output.create<String>(map['certificateThumbprint'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subscriptionId: map['subscriptionId'] == null ? null : pulumi.Output.create<String>(map['subscriptionId'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

