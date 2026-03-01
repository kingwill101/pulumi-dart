// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_server_communication_link_args_doc}
/// Arguments for getServerCommunicationLink.
/// {@endtemplate}
/// {@macro pulumi_sql_get_server_communication_link_args_doc}
class GetServerCommunicationLinkArgs {
  /// The name of the server communication link.
  final pulumi.Input<String> communicationLinkName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetServerCommunicationLinkArgs].
  /// [communicationLinkName] The name of the server communication link.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  GetServerCommunicationLinkArgs({
    required pulumi.Output<String> communicationLinkName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
  }) :
      communicationLinkName = pulumi.Input.asInput<String>(communicationLinkName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communicationLinkName': communicationLinkName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetServerCommunicationLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetServerCommunicationLinkArgs(
      communicationLinkName: pulumi.Output.create<String>(map['communicationLinkName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
    );
  }
}

