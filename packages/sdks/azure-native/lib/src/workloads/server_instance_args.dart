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
  ServerInstanceArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sapDiscoverySiteName,
    required pulumi.Output<String> sapInstanceName,
    pulumi.Output<String>? serverInstanceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sapDiscoverySiteName = pulumi.Input.asInput<String>(sapDiscoverySiteName),
      sapInstanceName = pulumi.Input.asInput<String>(sapInstanceName),
      serverInstanceName = pulumi.Input.asOptionalInput<String>(serverInstanceName);

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
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sapDiscoverySiteName: pulumi.Output.create<String>(map['sapDiscoverySiteName'] as String),
      sapInstanceName: pulumi.Output.create<String>(map['sapInstanceName'] as String),
      serverInstanceName: map['serverInstanceName'] == null ? null : pulumi.Output.create<String>(map['serverInstanceName'] as String),
    );
  }
}

