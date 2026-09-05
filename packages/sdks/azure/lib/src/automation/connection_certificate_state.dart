// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ConnectionCertificate resources.
class ConnectionCertificateState {
  /// The name of the automation account in which the Connection is created. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? automationAccountName;
  /// The name of the automation certificate.
  final pulumi.Input<String?>? automationCertificateName;
  /// A description for this Connection.
  final pulumi.Input<String?>? description;
  /// Specifies the name of the Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The name of the resource group in which the Connection is created. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// The id of subscription where the automation certificate exists.
  final pulumi.Input<String?>? subscriptionId;

  /// Creates a new [ConnectionCertificateState].
  /// [automationAccountName] The name of the automation account in which the Connection is created. Changing this forces a new resource to be created.
  /// [automationCertificateName] The name of the automation certificate.
  /// [description] A description for this Connection.
  /// [name] Specifies the name of the Connection. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the Connection is created. Changing this forces a new resource to be created.
  /// [subscriptionId] The id of subscription where the automation certificate exists.
  const ConnectionCertificateState({
    this.automationAccountName,
    this.automationCertificateName,
    this.description,
    this.name,
    this.resourceGroupName,
    this.subscriptionId,
  });

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
      automationAccountName: (() { final guardedValue = map['automationAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      automationCertificateName: (() { final guardedValue = map['automationCertificateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
