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
  GetServerInstanceArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sapDiscoverySiteName,
    required pulumi.Output<String> sapInstanceName,
    required pulumi.Output<String> serverInstanceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sapDiscoverySiteName = pulumi.Input.asInput<String>(sapDiscoverySiteName),
      sapInstanceName = pulumi.Input.asInput<String>(sapInstanceName),
      serverInstanceName = pulumi.Input.asInput<String>(serverInstanceName);

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
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sapDiscoverySiteName: pulumi.Output.create<String>(map['sapDiscoverySiteName'] as String),
      sapInstanceName: pulumi.Output.create<String>(map['sapInstanceName'] as String),
      serverInstanceName: pulumi.Output.create<String>(map['serverInstanceName'] as String),
    );
  }
}

