// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_web_app_relay_service_connection_args_doc}
/// Arguments for getWebAppRelayServiceConnection.
/// {@endtemplate}
/// {@macro pulumi_web_get_web_app_relay_service_connection_args_doc}
class GetWebAppRelayServiceConnectionArgs {
  /// Name of the hybrid connection.
  final pulumi.Input<String> entityName;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWebAppRelayServiceConnectionArgs].
  /// [entityName] Name of the hybrid connection.
  /// [name] Name of the app.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetWebAppRelayServiceConnectionArgs({
    required this.entityName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityName': entityName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWebAppRelayServiceConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppRelayServiceConnectionArgs(
      entityName: pulumi.Input.fromValue(map['entityName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
