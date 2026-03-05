// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'acl_response.dart';
import 'iscsi_lun_response.dart';
import 'system_metadata_response.dart';

/// Result data returned by getIscsiTarget.
class GetIscsiTargetResult {
  /// Mode for Target connectivity.
  final String aclMode;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// List of private IPv4 addresses to connect to the iSCSI Target.
  final List<String>? endpoints;
  /// Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// List of LUNs to be exposed through iSCSI Target.
  final List<IscsiLunResponse>? luns;
  /// Azure resource id. Indicates if this resource is managed by another Azure resource.
  final String managedBy;
  /// List of Azure resource ids that manage this resource.
  final List<String> managedByExtended;
  /// The name of the resource
  final String name;
  /// The port used by iSCSI Target portal group.
  final int? port;
  /// State of the operation on the resource.
  final String provisioningState;
  /// List of identifiers for active sessions on the iSCSI target
  final List<String> sessions;
  /// Access Control List (ACL) for an iSCSI Target; defines LUN masking policy
  final List<AclResponse>? staticAcls;
  /// Operational status of the iSCSI Target.
  final String status;
  /// Resource metadata required by ARM RPC
  final SystemMetadataResponse systemData;
  /// iSCSI Target IQN (iSCSI Qualified Name); example: "iqn.2005-03.org.iscsi:server".
  final String targetIqn;
  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  final String type;

  /// Creates a new [GetIscsiTargetResult].
  /// [aclMode] Mode for Target connectivity.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [endpoints] List of private IPv4 addresses to connect to the iSCSI Target.
  /// [id] Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [luns] List of LUNs to be exposed through iSCSI Target.
  /// [managedBy] Azure resource id. Indicates if this resource is managed by another Azure resource.
  /// [managedByExtended] List of Azure resource ids that manage this resource.
  /// [name] The name of the resource
  /// [port] The port used by iSCSI Target portal group.
  /// [provisioningState] State of the operation on the resource.
  /// [sessions] List of identifiers for active sessions on the iSCSI target
  /// [staticAcls] Access Control List (ACL) for an iSCSI Target; defines LUN masking policy
  /// [status] Operational status of the iSCSI Target.
  /// [systemData] Resource metadata required by ARM RPC
  /// [targetIqn] iSCSI Target IQN (iSCSI Qualified Name); example: "iqn.2005-03.org.iscsi:server".
  /// [type] The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  GetIscsiTargetResult({
    required this.aclMode,
    required this.azureApiVersion,
    this.endpoints,
    required this.id,
    this.luns,
    required this.managedBy,
    required this.managedByExtended,
    required this.name,
    this.port,
    required this.provisioningState,
    required this.sessions,
    this.staticAcls,
    required this.status,
    required this.systemData,
    required this.targetIqn,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclMode': aclMode,
      'azureApiVersion': azureApiVersion,
      'endpoints': ?endpoints,
      'id': id,
      'luns': ?(() { final guardedValue = luns; if (guardedValue == null) return null; return pulumi.Input.encodeList<IscsiLunResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'managedBy': managedBy,
      'managedByExtended': managedByExtended,
      'name': name,
      'port': ?port,
      'provisioningState': provisioningState,
      'sessions': sessions,
      'staticAcls': ?(() { final guardedValue = staticAcls; if (guardedValue == null) return null; return pulumi.Input.encodeList<AclResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': status,
      'systemData': systemData.toMap(),
      'targetIqn': targetIqn,
      'type': type,
    };
  }

  factory GetIscsiTargetResult.fromMap(Map<String, dynamic> map) {
    return GetIscsiTargetResult(
      aclMode: map['aclMode'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: map['id'] as String,
      luns: (() { final guardedValue = map['luns']; if (guardedValue == null) return null; return pulumi.Input.decodeList<IscsiLunResponse>(guardedValue, (value) => IscsiLunResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      managedBy: map['managedBy'] as String,
      managedByExtended: (map['managedByExtended'] as List).cast<String>(),
      name: map['name'] as String,
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return guardedValue as int; })(),
      provisioningState: map['provisioningState'] as String,
      sessions: (map['sessions'] as List).cast<String>(),
      staticAcls: (() { final guardedValue = map['staticAcls']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AclResponse>(guardedValue, (value) => AclResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: map['status'] as String,
      systemData: SystemMetadataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      targetIqn: map['targetIqn'] as String,
      type: map['type'] as String,
    );
  }
}

