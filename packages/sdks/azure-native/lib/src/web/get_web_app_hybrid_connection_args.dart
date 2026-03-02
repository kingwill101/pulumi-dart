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
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWebAppHybridConnectionArgs].
  /// [name] The name of the web app.
  /// [namespaceName] The namespace for this hybrid connection.
  /// [relayName] The relay name for this hybrid connection.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  GetWebAppHybridConnectionArgs({
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
      name: (map['name'] as String).input(),
      namespaceName: (map['namespaceName'] as String).input(),
      relayName: (map['relayName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

