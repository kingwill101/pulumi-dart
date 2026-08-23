// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_relay_hybrid_connection_args_doc}
/// The set of arguments for HybridConnection.
/// {@endtemplate}
/// {@macro pulumi_relay_hybrid_connection_args_doc}
class HybridConnectionArgs {
  /// The hybrid connection name.
  final pulumi.Input<String>? hybridConnectionName;
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// Returns true if client authorization is needed for this hybrid connection; otherwise, false.
  final pulumi.Input<bool>? requiresClientAuthorization;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The usermetadata is a placeholder to store user-defined string data for the hybrid connection endpoint. For example, it can be used to store descriptive data, such as a list of teams and their contact information. Also, user-defined configuration settings can be stored.
  final pulumi.Input<String>? userMetadata;

  /// Creates a new [HybridConnectionArgs].
  /// [hybridConnectionName] The hybrid connection name.
  /// [namespaceName] The namespace name
  /// [requiresClientAuthorization] Returns true if client authorization is needed for this hybrid connection; otherwise, false.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [userMetadata] The usermetadata is a placeholder to store user-defined string data for the hybrid connection endpoint. For example, it can be used to store descriptive data, such as a list of teams and their contact information. Also, user-defined configuration settings can be stored.
  const HybridConnectionArgs({
    this.hybridConnectionName,
    required this.namespaceName,
    this.requiresClientAuthorization,
    required this.resourceGroupName,
    this.userMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hybridConnectionName': ?hybridConnectionName,
      'namespaceName': namespaceName,
      'requiresClientAuthorization': ?requiresClientAuthorization,
      'resourceGroupName': resourceGroupName,
      'userMetadata': ?userMetadata,
    };
  }

  factory HybridConnectionArgs.fromMap(Map<String, dynamic> map) {
    return HybridConnectionArgs(
      hybridConnectionName: (() { final guardedValue = map['hybridConnectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      requiresClientAuthorization: (() { final guardedValue = map['requiresClientAuthorization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      userMetadata: (() { final guardedValue = map['userMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
