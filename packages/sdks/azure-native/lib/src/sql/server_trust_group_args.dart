// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_info.dart';

/// {@template pulumi_sql_server_trust_group_args_doc}
/// The set of arguments for ServerTrustGroup.
/// {@endtemplate}
/// {@macro pulumi_sql_server_trust_group_args_doc}
class ServerTrustGroupArgs {
  /// Group members information for the server trust group.
  final pulumi.Input<List<ServerInfo>> groupMembers;
  /// The name of the region where the resource is located.
  final pulumi.Input<String> locationName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server trust group.
  final pulumi.Input<String>? serverTrustGroupName;
  /// Trust scope of the server trust group.
  final pulumi.Input<List<String>> trustScopes;

  /// Creates a new [ServerTrustGroupArgs].
  /// [groupMembers] Group members information for the server trust group.
  /// [locationName] The name of the region where the resource is located.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverTrustGroupName] The name of the server trust group.
  /// [trustScopes] Trust scope of the server trust group.
  ServerTrustGroupArgs({
    required pulumi.Output<List<ServerInfo>> groupMembers,
    required pulumi.Output<String> locationName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? serverTrustGroupName,
    required pulumi.Output<List<String>> trustScopes,
  }) :
      groupMembers = pulumi.Input.asInput<List<ServerInfo>>(groupMembers),
      locationName = pulumi.Input.asInput<String>(locationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverTrustGroupName = pulumi.Input.asOptionalInput<String>(serverTrustGroupName),
      trustScopes = pulumi.Input.asInput<List<String>>(trustScopes);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupMembers': pulumi.Input.mapInputValue<List<ServerInfo>, List<Map<String, dynamic>>>(groupMembers, (value) => pulumi.Input.encodeList<ServerInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'locationName': locationName,
      'resourceGroupName': resourceGroupName,
      'serverTrustGroupName': ?serverTrustGroupName,
      'trustScopes': trustScopes,
    };
  }

  factory ServerTrustGroupArgs.fromMap(Map<String, dynamic> map) {
    return ServerTrustGroupArgs(
      groupMembers: pulumi.Output.create<List<ServerInfo>>(pulumi.Input.decodeList<ServerInfo>(map['groupMembers'], (value) => ServerInfo.fromMap((value as Map).cast<String, dynamic>()))),
      locationName: pulumi.Output.create<String>(map['locationName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverTrustGroupName: map['serverTrustGroupName'] == null ? null : pulumi.Output.create<String>(map['serverTrustGroupName'] as String),
      trustScopes: pulumi.Output.create<List<String>>((map['trustScopes'] as List).cast<String>()),
    );
  }
}

