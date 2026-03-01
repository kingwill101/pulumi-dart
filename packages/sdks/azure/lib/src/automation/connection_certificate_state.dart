// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ConnectionCertificate resources.
class ConnectionCertificateState {
  /// The name of the automation account in which the Connection is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? automationAccountName;
  /// The name of the automation certificate.
  final pulumi.Input<String>? automationCertificateName;
  /// A description for this Connection.
  final pulumi.Input<String>? description;
  /// Specifies the name of the Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the Connection is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The id of subscription where the automation certificate exists.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [ConnectionCertificateState].
  /// [automationAccountName] The name of the automation account in which the Connection is created. Changing this forces a new resource to be created.
  /// [automationCertificateName] The name of the automation certificate.
  /// [description] A description for this Connection.
  /// [name] Specifies the name of the Connection. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the Connection is created. Changing this forces a new resource to be created.
  /// [subscriptionId] The id of subscription where the automation certificate exists.
  ConnectionCertificateState({
    pulumi.Output<String>? automationAccountName,
    pulumi.Output<String>? automationCertificateName,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? subscriptionId,
  }) :
      automationAccountName = pulumi.Input.asOptionalInput<String>(automationAccountName),
      automationCertificateName = pulumi.Input.asOptionalInput<String>(automationCertificateName),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': ?automationAccountName,
      'automationCertificateName': ?automationCertificateName,
      'description': ?description,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory ConnectionCertificateState.fromMap(Map<String, dynamic> map) {
    return ConnectionCertificateState(
      automationAccountName: map['automationAccountName'] == null ? null : pulumi.Output.create<String>(map['automationAccountName'] as String),
      automationCertificateName: map['automationCertificateName'] == null ? null : pulumi.Output.create<String>(map['automationCertificateName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subscriptionId: map['subscriptionId'] == null ? null : pulumi.Output.create<String>(map['subscriptionId'] as String),
    );
  }
}

