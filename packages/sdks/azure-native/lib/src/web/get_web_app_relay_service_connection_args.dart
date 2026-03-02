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
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWebAppRelayServiceConnectionArgs].
  /// [entityName] Name of the hybrid connection.
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  GetWebAppRelayServiceConnectionArgs({
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
      entityName: (map['entityName'] as String).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

