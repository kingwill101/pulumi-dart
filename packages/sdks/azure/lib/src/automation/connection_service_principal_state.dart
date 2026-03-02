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
    this.applicationId,
    this.automationAccountName,
    this.certificateThumbprint,
    this.description,
    this.name,
    this.resourceGroupName,
    this.subscriptionId,
    this.tenantId,
  });

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
      applicationId: map['applicationId'] == null ? null : (map['applicationId']! as String).input(),
      automationAccountName: map['automationAccountName'] == null ? null : (map['automationAccountName']! as String).input(),
      certificateThumbprint: map['certificateThumbprint'] == null ? null : (map['certificateThumbprint']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
    );
  }
}

