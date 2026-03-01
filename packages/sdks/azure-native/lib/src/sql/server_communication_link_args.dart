// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_server_communication_link_args_doc}
/// The set of arguments for ServerCommunicationLink.
/// {@endtemplate}
/// {@macro pulumi_sql_server_communication_link_args_doc}
class ServerCommunicationLinkArgs {
  /// The name of the server communication link.
  final pulumi.Input<String>? communicationLinkName;
  /// The name of the partner server.
  final pulumi.Input<String> partnerServer;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [ServerCommunicationLinkArgs].
  /// [communicationLinkName] The name of the server communication link.
  /// [partnerServer] The name of the partner server.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  ServerCommunicationLinkArgs({
    pulumi.Output<String>? communicationLinkName,
    required pulumi.Output<String> partnerServer,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
  }) :
      communicationLinkName = pulumi.Input.asOptionalInput<String>(communicationLinkName),
      partnerServer = pulumi.Input.asInput<String>(partnerServer),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communicationLinkName': ?communicationLinkName,
      'partnerServer': partnerServer,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory ServerCommunicationLinkArgs.fromMap(Map<String, dynamic> map) {
    return ServerCommunicationLinkArgs(
      communicationLinkName: map['communicationLinkName'] == null ? null : pulumi.Output.create<String>(map['communicationLinkName'] as String),
      partnerServer: pulumi.Output.create<String>(map['partnerServer'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
    );
  }
}

