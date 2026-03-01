// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ConnectionClassicCertificate resources.
class ConnectionClassicCertificateState {
  /// The name of the automation account in which the Connection is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? automationAccountName;
  /// The name of the certificate asset.
  final pulumi.Input<String>? certificateAssetName;
  /// A description for this Connection.
  final pulumi.Input<String>? description;
  /// Specifies the name of the Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the Connection is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The id of subscription.
  final pulumi.Input<String>? subscriptionId;
  /// The name of subscription.
  final pulumi.Input<String>? subscriptionName;

  /// Creates a new [ConnectionClassicCertificateState].
  /// [automationAccountName] The name of the automation account in which the Connection is created. Changing this forces a new resource to be created.
  /// [certificateAssetName] The name of the certificate asset.
  /// [description] A description for this Connection.
  /// [name] Specifies the name of the Connection. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the Connection is created. Changing this forces a new resource to be created.
  /// [subscriptionId] The id of subscription.
  /// [subscriptionName] The name of subscription.
  ConnectionClassicCertificateState({
    pulumi.Output<String>? automationAccountName,
    pulumi.Output<String>? certificateAssetName,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? subscriptionId,
    pulumi.Output<String>? subscriptionName,
  }) :
      automationAccountName = pulumi.Input.asOptionalInput<String>(automationAccountName),
      certificateAssetName = pulumi.Input.asOptionalInput<String>(certificateAssetName),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId),
      subscriptionName = pulumi.Input.asOptionalInput<String>(subscriptionName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': ?automationAccountName,
      'certificateAssetName': ?certificateAssetName,
      'description': ?description,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'subscriptionId': ?subscriptionId,
      'subscriptionName': ?subscriptionName,
    };
  }

  factory ConnectionClassicCertificateState.fromMap(Map<String, dynamic> map) {
    return ConnectionClassicCertificateState(
      automationAccountName: map['automationAccountName'] == null ? null : pulumi.Output.create<String>(map['automationAccountName'] as String),
      certificateAssetName: map['certificateAssetName'] == null ? null : pulumi.Output.create<String>(map['certificateAssetName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subscriptionId: map['subscriptionId'] == null ? null : pulumi.Output.create<String>(map['subscriptionId'] as String),
      subscriptionName: map['subscriptionName'] == null ? null : pulumi.Output.create<String>(map['subscriptionName'] as String),
    );
  }
}

