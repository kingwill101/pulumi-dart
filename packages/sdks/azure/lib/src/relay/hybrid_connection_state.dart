// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HybridConnection resources.
class HybridConnectionState {
  /// Specifies the name of the Azure Relay Hybrid Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// The name of the Azure Relay in which to create the Azure Relay Hybrid Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? relayNamespaceName;

  /// Specify if client authorization is needed for this hybrid connection. Changing this forces a new resource to be created. Defaults to `true`.
  final pulumi.Input<bool>? requiresClientAuthorization;

  /// The name of the resource group in which to create the Azure Relay Hybrid Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// The usermetadata is a placeholder to store user-defined string data for the hybrid connection endpoint. For example, it can be used to store descriptive data, such as a list of teams and their contact information. Also, user-defined configuration settings can be stored.
  final pulumi.Input<String>? userMetadata;

  /// Creates a new [HybridConnectionState].
  /// [name] Specifies the name of the Azure Relay Hybrid Connection. Changing this forces a new resource to be created.
  /// [relayNamespaceName] The name of the Azure Relay in which to create the Azure Relay Hybrid Connection. Changing this forces a new resource to be created.
  /// [requiresClientAuthorization] Specify if client authorization is needed for this hybrid connection. Changing this forces a new resource to be created. Defaults to `true`.
  /// [resourceGroupName] The name of the resource group in which to create the Azure Relay Hybrid Connection. Changing this forces a new resource to be created.
  /// [userMetadata] The usermetadata is a placeholder to store user-defined string data for the hybrid connection endpoint. For example, it can be used to store descriptive data, such as a list of teams and their contact information. Also, user-defined configuration settings can be stored.
  HybridConnectionState({
    this.name,
    this.relayNamespaceName,
    this.requiresClientAuthorization,
    this.resourceGroupName,
    this.userMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'relayNamespaceName': ?relayNamespaceName,
      'requiresClientAuthorization': ?requiresClientAuthorization,
      'resourceGroupName': ?resourceGroupName,
      'userMetadata': ?userMetadata,
    };
  }

  factory HybridConnectionState.fromMap(Map<String, dynamic> map) {
    return HybridConnectionState(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      relayNamespaceName: (() {
        final guardedValue = map['relayNamespaceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      requiresClientAuthorization: (() {
        final guardedValue = map['requiresClientAuthorization'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userMetadata: (() {
        final guardedValue = map['userMetadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
