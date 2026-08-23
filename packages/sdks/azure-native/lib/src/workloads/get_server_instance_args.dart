// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workloads_get_server_instance_args_doc}
/// Arguments for getServerInstance.
/// {@endtemplate}
/// {@macro pulumi_workloads_get_server_instance_args_doc}
class GetServerInstanceArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the discovery site resource for SAP Migration.
  final pulumi.Input<String> sapDiscoverySiteName;
  /// The name of SAP Instance resource for SAP Migration.
  final pulumi.Input<String> sapInstanceName;
  /// The name of the Server instance resource for SAP Migration.
  final pulumi.Input<String> serverInstanceName;

  /// Creates a new [GetServerInstanceArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sapDiscoverySiteName] The name of the discovery site resource for SAP Migration.
  /// [sapInstanceName] The name of SAP Instance resource for SAP Migration.
  /// [serverInstanceName] The name of the Server instance resource for SAP Migration.
  const GetServerInstanceArgs({
    required this.resourceGroupName,
    required this.sapDiscoverySiteName,
    required this.sapInstanceName,
    required this.serverInstanceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'sapDiscoverySiteName': sapDiscoverySiteName,
      'sapInstanceName': sapInstanceName,
      'serverInstanceName': serverInstanceName,
    };
  }

  factory GetServerInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetServerInstanceArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sapDiscoverySiteName: pulumi.Input.fromValue(map['sapDiscoverySiteName'] as String),
      sapInstanceName: pulumi.Input.fromValue(map['sapInstanceName'] as String),
      serverInstanceName: pulumi.Input.fromValue(map['serverInstanceName'] as String),
    );
  }
}
