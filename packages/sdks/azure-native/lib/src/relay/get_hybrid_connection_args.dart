// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_relay_get_hybrid_connection_args_doc}
/// Arguments for getHybridConnection.
/// {@endtemplate}
/// {@macro pulumi_relay_get_hybrid_connection_args_doc}
class GetHybridConnectionArgs {
  /// The hybrid connection name.
  final pulumi.Input<String> hybridConnectionName;

  /// The namespace name
  final pulumi.Input<String> namespaceName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetHybridConnectionArgs].
  /// [hybridConnectionName] The hybrid connection name.
  /// [namespaceName] The namespace name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetHybridConnectionArgs({
    required this.hybridConnectionName,
    required this.namespaceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hybridConnectionName': hybridConnectionName,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetHybridConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetHybridConnectionArgs(
      hybridConnectionName: pulumi.Input.fromValue(
        map['hybridConnectionName'] as String,
      ),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
