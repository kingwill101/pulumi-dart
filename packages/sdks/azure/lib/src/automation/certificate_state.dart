// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Certificate resources.
class CertificateState {
  /// The name of the automation account in which the Certificate is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? automationAccountName;

  /// Base64 encoded value of the certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String>? base64;

  /// The description of this Automation Certificate.
  final pulumi.Input<String>? description;

  /// The is exportable flag of the certificate.
  final pulumi.Input<bool>? exportable;

  /// Specifies the name of the Certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// The name of the resource group in which the Certificate is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// The thumbprint for the certificate.
  final pulumi.Input<String>? thumbprint;

  /// Creates a new [CertificateState].
  /// [automationAccountName] The name of the automation account in which the Certificate is created. Changing this forces a new resource to be created.
  /// [base64] Base64 encoded value of the certificate. Changing this forces a new resource to be created.
  /// [description] The description of this Automation Certificate.
  /// [exportable] The is exportable flag of the certificate.
  /// [name] Specifies the name of the Certificate. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the Certificate is created. Changing this forces a new resource to be created.
  /// [thumbprint] The thumbprint for the certificate.
  CertificateState({
    this.automationAccountName,
    this.base64,
    this.description,
    this.exportable,
    this.name,
    this.resourceGroupName,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': ?automationAccountName,
      'base64': ?base64,
      'description': ?description,
      'exportable': ?exportable,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'thumbprint': ?thumbprint,
    };
  }

  factory CertificateState.fromMap(Map<String, dynamic> map) {
    return CertificateState(
      automationAccountName: (() {
        final guardedValue = map['automationAccountName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      base64: (() {
        final guardedValue = map['base64'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      exportable: (() {
        final guardedValue = map['exportable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      thumbprint: (() {
        final guardedValue = map['thumbprint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
