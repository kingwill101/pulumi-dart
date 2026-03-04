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
    required this.automationAccountName,
    required this.automationCertificateName,
    this.description,
    this.name,
    required this.resourceGroupName,
    required this.subscriptionId,
  });

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
      automationAccountName: pulumi.Input.fromValue(
        map['automationAccountName'] as String,
      ),
      automationCertificateName: pulumi.Input.fromValue(
        map['automationCertificateName'] as String,
      ),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      subscriptionId: pulumi.Input.fromValue(map['subscriptionId'] as String),
    );
  }
}
