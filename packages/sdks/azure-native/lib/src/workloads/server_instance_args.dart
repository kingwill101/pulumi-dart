// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workloads_server_instance_args_doc}
/// The set of arguments for ServerInstance.
/// {@endtemplate}
/// {@macro pulumi_workloads_server_instance_args_doc}
class ServerInstanceArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the discovery site resource for SAP Migration.
  final pulumi.Input<String> sapDiscoverySiteName;
  /// The name of SAP Instance resource for SAP Migration.
  final pulumi.Input<String> sapInstanceName;
  /// The name of the Server instance resource for SAP Migration.
  final pulumi.Input<String>? serverInstanceName;

  /// Creates a new [ServerInstanceArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sapDiscoverySiteName] The name of the discovery site resource for SAP Migration.
  /// [sapInstanceName] The name of SAP Instance resource for SAP Migration.
  /// [serverInstanceName] The name of the Server instance resource for SAP Migration.
  const ServerInstanceArgs({
    required this.resourceGroupName,
    required this.sapDiscoverySiteName,
    required this.sapInstanceName,
    this.serverInstanceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'sapDiscoverySiteName': sapDiscoverySiteName,
      'sapInstanceName': sapInstanceName,
      'serverInstanceName': ?serverInstanceName,
    };
  }

  factory ServerInstanceArgs.fromMap(Map<String, dynamic> map) {
    return ServerInstanceArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sapDiscoverySiteName: pulumi.Input.fromValue(map['sapDiscoverySiteName'] as String),
      sapInstanceName: pulumi.Input.fromValue(map['sapInstanceName'] as String),
      serverInstanceName: (() { final guardedValue = map['serverInstanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

