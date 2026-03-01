// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_connection_certificate_connection_certificate_args_doc}
/// The set of arguments for ConnectionCertificate.
/// {@endtemplate}
/// {@macro pulumi_automation_connection_certificate_connection_certificate_args_doc}
class ConnectionCertificateArgs {
  /// The name of the automation account in which the Connection is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> automationAccountName;
  /// The name of the automation certificate.
  final pulumi.Input<String> automationCertificateName;
  /// A description for this Connection.
  final pulumi.Input<String>? description;
  /// Specifies the name of the Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the Connection is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The id of subscription where the automation certificate exists.
  final pulumi.Input<String> subscriptionId;

  /// Creates a new [ConnectionCertificateArgs].
  /// [automationAccountName] The name of the automation account in which the Connection is created. Changing this forces a new resource to be created.
  /// [automationCertificateName] The name of the automation certificate.
  /// [description] A description for this Connection.
  /// [name] Specifies the name of the Connection. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the Connection is created. Changing this forces a new resource to be created.
  /// [subscriptionId] The id of subscription where the automation certificate exists.
  ConnectionCertificateArgs({
    required pulumi.Output<String> automationAccountName,
    required pulumi.Output<String> automationCertificateName,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> subscriptionId,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      automationCertificateName = pulumi.Input.asInput<String>(automationCertificateName),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subscriptionId = pulumi.Input.asInput<String>(subscriptionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'automationCertificateName': automationCertificateName,
      'description': ?description,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'subscriptionId': subscriptionId,
    };
  }

  factory ConnectionCertificateArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionCertificateArgs(
      automationAccountName: pulumi.Output.create<String>(map['automationAccountName'] as String),
      automationCertificateName: pulumi.Output.create<String>(map['automationCertificateName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subscriptionId: pulumi.Output.create<String>(map['subscriptionId'] as String),
    );
  }
}

