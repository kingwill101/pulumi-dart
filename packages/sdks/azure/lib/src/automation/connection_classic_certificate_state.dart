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
    this.automationAccountName,
    this.certificateAssetName,
    this.description,
    this.name,
    this.resourceGroupName,
    this.subscriptionId,
    this.subscriptionName,
  });

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
      automationAccountName: map['automationAccountName'] == null ? null : (map['automationAccountName']! as String).input(),
      certificateAssetName: map['certificateAssetName'] == null ? null : (map['certificateAssetName']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId']! as String).input(),
      subscriptionName: map['subscriptionName'] == null ? null : (map['subscriptionName']! as String).input(),
    );
  }
}

