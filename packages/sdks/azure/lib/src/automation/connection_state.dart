// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Connection resources.
class ConnectionState {
  /// The name of the automation account in which the Connection is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? automationAccountName;
  /// A description for this Connection.
  final pulumi.Input<String>? description;
  /// Specifies the name of the Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the Connection is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The type of the Connection - can be either builtin type such as `Azure`, `AzureClassicCertificate`, and `AzureServicePrincipal`, or a user defined types. Changing this forces a new resource to be created.
  final pulumi.Input<String>? type;
  /// A mapping of key value pairs passed to the connection. Different `type` needs different parameters in the `values`. Builtin types have required field values as below:
  ///
  /// * `Azure`: parameters `AutomationCertificateName` and `SubscriptionID`.
  ///
  /// * `AzureClassicCertificate`: parameters `SubscriptionName`, `SubscriptionId` and `CertificateAssetName`.
  ///
  /// * `AzureServicePrincipal`: parameters `ApplicationId`, `CertificateThumbprint`, `SubscriptionId` and `TenantId`.
  final pulumi.Input<Map<String, String>>? values;

  /// Creates a new [ConnectionState].
  /// [automationAccountName] The name of the automation account in which the Connection is created. Changing this forces a new resource to be created.
  /// [description] A description for this Connection.
  /// [name] Specifies the name of the Connection. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the Connection is created. Changing this forces a new resource to be created.
  /// [type] The type of the Connection - can be either builtin type such as `Azure`, `AzureClassicCertificate`, and `AzureServicePrincipal`, or a user defined types. Changing this forces a new resource to be created.
  /// [values] A mapping of key value pairs passed to the connection. Different `type` needs different parameters in the `values`. Builtin types have required field values as below:
  ConnectionState({
    pulumi.Output<String>? automationAccountName,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? type,
    pulumi.Output<Map<String, String>>? values,
  }) :
      automationAccountName = pulumi.Input.asOptionalInput<String>(automationAccountName),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      type = pulumi.Input.asOptionalInput<String>(type),
      values = pulumi.Input.asOptionalInput<Map<String, String>>(values);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': ?automationAccountName,
      'description': ?description,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'type': ?type,
      'values': ?values,
    };
  }

  factory ConnectionState.fromMap(Map<String, dynamic> map) {
    return ConnectionState(
      automationAccountName: map['automationAccountName'] == null ? null : pulumi.Output.create<String>(map['automationAccountName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      values: map['values'] == null ? null : pulumi.Output.create<Map<String, String>>((map['values'] as Map).cast<String, String>()),
    );
  }
}

