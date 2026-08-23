// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_certificate_certificate_args_doc}
/// The set of arguments for Certificate.
/// {@endtemplate}
/// {@macro pulumi_automation_certificate_certificate_args_doc}
class CertificateArgs {
  /// The name of the automation account in which the Certificate is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> automationAccountName;
  /// Base64 encoded value of the certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String> base64;
  /// The description of this Automation Certificate.
  final pulumi.Input<String>? description;
  /// The is exportable flag of the certificate.
  final pulumi.Input<bool>? exportable;
  /// Specifies the name of the Certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the Certificate is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [CertificateArgs].
  /// [automationAccountName] The name of the automation account in which the Certificate is created. Changing this forces a new resource to be created.
  /// [base64] Base64 encoded value of the certificate. Changing this forces a new resource to be created.
  /// [description] The description of this Automation Certificate.
  /// [exportable] The is exportable flag of the certificate.
  /// [name] Specifies the name of the Certificate. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the Certificate is created. Changing this forces a new resource to be created.
  const CertificateArgs({
    required this.automationAccountName,
    required this.base64,
    this.description,
    this.exportable,
    this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'base64': base64,
      'description': ?description,
      'exportable': ?exportable,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      base64: pulumi.Input.fromValue(map['base64'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exportable: (() { final guardedValue = map['exportable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
