// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_relay_hybrid_connection_hybrid_connection_args_doc}
/// The set of arguments for HybridConnection.
/// {@endtemplate}
/// {@macro pulumi_relay_hybrid_connection_hybrid_connection_args_doc}
class HybridConnectionArgs {
  /// Specifies the name of the Azure Relay Hybrid Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Azure Relay in which to create the Azure Relay Hybrid Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String> relayNamespaceName;
  /// Specify if client authorization is needed for this hybrid connection. Changing this forces a new resource to be created. Defaults to `true`.
  final pulumi.Input<bool>? requiresClientAuthorization;
  /// The name of the resource group in which to create the Azure Relay Hybrid Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The usermetadata is a placeholder to store user-defined string data for the hybrid connection endpoint. For example, it can be used to store descriptive data, such as a list of teams and their contact information. Also, user-defined configuration settings can be stored.
  final pulumi.Input<String>? userMetadata;

  /// Creates a new [HybridConnectionArgs].
  /// [name] Specifies the name of the Azure Relay Hybrid Connection. Changing this forces a new resource to be created.
  /// [relayNamespaceName] The name of the Azure Relay in which to create the Azure Relay Hybrid Connection. Changing this forces a new resource to be created.
  /// [requiresClientAuthorization] Specify if client authorization is needed for this hybrid connection. Changing this forces a new resource to be created. Defaults to `true`.
  /// [resourceGroupName] The name of the resource group in which to create the Azure Relay Hybrid Connection. Changing this forces a new resource to be created.
  /// [userMetadata] The usermetadata is a placeholder to store user-defined string data for the hybrid connection endpoint. For example, it can be used to store descriptive data, such as a list of teams and their contact information. Also, user-defined configuration settings can be stored.
  HybridConnectionArgs({
    pulumi.Output<String>? name,
    required pulumi.Output<String> relayNamespaceName,
    pulumi.Output<bool>? requiresClientAuthorization,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? userMetadata,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      relayNamespaceName = pulumi.Input.asInput<String>(relayNamespaceName),
      requiresClientAuthorization = pulumi.Input.asOptionalInput<bool>(requiresClientAuthorization),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      userMetadata = pulumi.Input.asOptionalInput<String>(userMetadata);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'relayNamespaceName': relayNamespaceName,
      'requiresClientAuthorization': ?requiresClientAuthorization,
      'resourceGroupName': resourceGroupName,
      'userMetadata': ?userMetadata,
    };
  }

  factory HybridConnectionArgs.fromMap(Map<String, dynamic> map) {
    return HybridConnectionArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      relayNamespaceName: pulumi.Output.create<String>(map['relayNamespaceName'] as String),
      requiresClientAuthorization: map['requiresClientAuthorization'] == null ? null : pulumi.Output.create<bool>(map['requiresClientAuthorization'] as bool),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      userMetadata: map['userMetadata'] == null ? null : pulumi.Output.create<String>(map['userMetadata'] as String),
    );
  }
}

