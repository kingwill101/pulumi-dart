// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_connection_classic_certificate_connection_classic_certificate_args_doc}
/// The set of arguments for ConnectionClassicCertificate.
/// {@endtemplate}
/// {@macro pulumi_automation_connection_classic_certificate_connection_classic_certificate_args_doc}
class ConnectionClassicCertificateArgs {
  /// The name of the automation account in which the Connection is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> automationAccountName;
  /// The name of the certificate asset.
  final pulumi.Input<String> certificateAssetName;
  /// A description for this Connection.
  final pulumi.Input<String>? description;
  /// Specifies the name of the Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the Connection is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The id of subscription.
  final pulumi.Input<String> subscriptionId;
  /// The name of subscription.
  final pulumi.Input<String> subscriptionName;

  /// Creates a new [ConnectionClassicCertificateArgs].
  /// [automationAccountName] The name of the automation account in which the Connection is created. Changing this forces a new resource to be created.
  /// [certificateAssetName] The name of the certificate asset.
  /// [description] A description for this Connection.
  /// [name] Specifies the name of the Connection. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the Connection is created. Changing this forces a new resource to be created.
  /// [subscriptionId] The id of subscription.
  /// [subscriptionName] The name of subscription.
  ConnectionClassicCertificateArgs({
    required pulumi.Output<String> automationAccountName,
    required pulumi.Output<String> certificateAssetName,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> subscriptionId,
    required pulumi.Output<String> subscriptionName,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      certificateAssetName = pulumi.Input.asInput<String>(certificateAssetName),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subscriptionId = pulumi.Input.asInput<String>(subscriptionId),
      subscriptionName = pulumi.Input.asInput<String>(subscriptionName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'certificateAssetName': certificateAssetName,
      'description': ?description,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'subscriptionId': subscriptionId,
      'subscriptionName': subscriptionName,
    };
  }

  factory ConnectionClassicCertificateArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionClassicCertificateArgs(
      automationAccountName: pulumi.Output.create<String>(map['automationAccountName'] as String),
      certificateAssetName: pulumi.Output.create<String>(map['certificateAssetName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subscriptionId: pulumi.Output.create<String>(map['subscriptionId'] as String),
      subscriptionName: pulumi.Output.create<String>(map['subscriptionName'] as String),
    );
  }
}

