// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_web_app_hybrid_connection_args_doc}
/// Arguments for getWebAppHybridConnection.
/// {@endtemplate}
/// {@macro pulumi_web_get_web_app_hybrid_connection_args_doc}
class GetWebAppHybridConnectionArgs {
  /// The name of the web app.
  final pulumi.Input<String> name;
  /// The namespace for this hybrid connection.
  final pulumi.Input<String> namespaceName;
  /// The relay name for this hybrid connection.
  final pulumi.Input<String> relayName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWebAppHybridConnectionArgs].
  /// [name] The name of the web app.
  /// [namespaceName] The namespace for this hybrid connection.
  /// [relayName] The relay name for this hybrid connection.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetWebAppHybridConnectionArgs({
    required this.name,
    required this.namespaceName,
    required this.relayName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'namespaceName': namespaceName,
      'relayName': relayName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWebAppHybridConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppHybridConnectionArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      relayName: pulumi.Input.fromValue(map['relayName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
