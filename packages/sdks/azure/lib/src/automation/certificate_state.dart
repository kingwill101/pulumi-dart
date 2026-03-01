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
    pulumi.Output<String>? automationAccountName,
    pulumi.Output<String>? base64,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? exportable,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? thumbprint,
  }) :
      automationAccountName = pulumi.Input.asOptionalInput<String>(automationAccountName),
      base64 = pulumi.Input.asOptionalInput<String>(base64),
      description = pulumi.Input.asOptionalInput<String>(description),
      exportable = pulumi.Input.asOptionalInput<bool>(exportable),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      thumbprint = pulumi.Input.asOptionalInput<String>(thumbprint);

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
      automationAccountName: map['automationAccountName'] == null ? null : pulumi.Output.create<String>(map['automationAccountName'] as String),
      base64: map['base64'] == null ? null : pulumi.Output.create<String>(map['base64'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      exportable: map['exportable'] == null ? null : pulumi.Output.create<bool>(map['exportable'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      thumbprint: map['thumbprint'] == null ? null : pulumi.Output.create<String>(map['thumbprint'] as String),
    );
  }
}

