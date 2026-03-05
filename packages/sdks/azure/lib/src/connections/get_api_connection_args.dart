// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connections_get_api_connection_get_api_connection_args_doc}
/// Arguments for getApiConnection.
/// {@endtemplate}
/// {@macro pulumi_connections_get_api_connection_get_api_connection_args_doc}
class GetApiConnectionArgs {
  /// The name of the API Connection.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the API Connection exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetApiConnectionArgs].
  /// [name] The name of the API Connection.
  /// [resourceGroupName] The name of the Resource Group where the API Connection exists.
  GetApiConnectionArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetApiConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetApiConnectionArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

