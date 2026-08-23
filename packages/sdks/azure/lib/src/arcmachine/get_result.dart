// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent.dart';
import 'get_cloud_metadata.dart';
import 'get_identity.dart';
import 'get_location_data.dart';
import 'get_os_profile.dart';
import 'get_service_status.dart';

/// Result data returned by get.
class GetResult {
  /// Specifies the AD fully qualified display name.
  final String activeDirectoryFqdn;
  /// The Azure Arc machine agent full version.
  final String agentVersion;
  /// A `agent` block as defined below.
  final List<GetAgent> agents;
  /// Public Key that the client provides to be used during initial resource onboarding.
  final String clientPublicKey;
  /// A `cloudMetadata` block as defined below.
  final List<GetCloudMetadata> cloudMetadatas;
  /// A `detectedProperties` block as defined below.
  final Map<String, String> detectedProperties;
  /// Specifies the Azure Arc machine display name.
  final String displayName;
  /// Specifies the DNS fully qualified display name.
  final String dnsFqdn;
  /// Specifies the Windows domain name.
  final String domainName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A `identity` block as defined below.
  final List<GetIdentity> identities;
  /// The time of the last status change.
  final String lastStatusChangeTime;
  /// The Azure Region where the Azure Arc machine exists.
  final String location;
  /// A `locationData` block as defined below.
  final List<GetLocationData> locationDatas;
  /// Specifies the Azure Arc machine fully qualified display name.
  final String machineFqdn;
  /// Specifies whether any MS SQL instance is discovered on the machine.
  final bool mssqlDiscovered;
  /// A canonical name for the geographic or physical location.
  final String name;
  /// The Operating System running on the Azure Arc machine.
  final String osName;
  /// A `osProfile` block as defined below.
  final List<GetOsProfile> osProfiles;
  /// Specifies the Operating System product SKU.
  final String osSku;
  /// The type of Operating System. Possible values are `windows` and `linux`.
  final String osType;
  /// The version of Operating System running on the Azure Arc machine.
  final String osVersion;
  /// The resource id of the parent cluster (Azure HCI) this machine is assigned to, if any.
  final String parentClusterResourceId;
  /// The resource id of the parent cluster (Azure HCI) this machine is assigned to, if any.
  final String privateLinkScopeResourceId;
  final String resourceGroupName;
  /// A `serviceStatus` block as defined below.
  final List<GetServiceStatus> serviceStatuses;
  /// The current status of the service.
  final String status;
  /// A mapping of tags assigned to the Hybrid Compute.
  final Map<String, String> tags;
  /// Specifies the Azure Arc machine unique ID.
  final String vmId;
  /// Specifies the Arc Machine's unique SMBIOS ID.
  final String vmUuid;

  /// Creates a new [GetResult].
  /// [activeDirectoryFqdn] Specifies the AD fully qualified display name.
  /// [agentVersion] The Azure Arc machine agent full version.
  /// [agents] A `agent` block as defined below.
  /// [clientPublicKey] Public Key that the client provides to be used during initial resource onboarding.
  /// [cloudMetadatas] A `cloudMetadata` block as defined below.
  /// [detectedProperties] A `detectedProperties` block as defined below.
  /// [displayName] Specifies the Azure Arc machine display name.
  /// [dnsFqdn] Specifies the DNS fully qualified display name.
  /// [domainName] Specifies the Windows domain name.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] A `identity` block as defined below.
  /// [lastStatusChangeTime] The time of the last status change.
  /// [location] The Azure Region where the Azure Arc machine exists.
  /// [locationDatas] A `locationData` block as defined below.
  /// [machineFqdn] Specifies the Azure Arc machine fully qualified display name.
  /// [mssqlDiscovered] Specifies whether any MS SQL instance is discovered on the machine.
  /// [name] A canonical name for the geographic or physical location.
  /// [osName] The Operating System running on the Azure Arc machine.
  /// [osProfiles] A `osProfile` block as defined below.
  /// [osSku] Specifies the Operating System product SKU.
  /// [osType] The type of Operating System. Possible values are `windows` and `linux`.
  /// [osVersion] The version of Operating System running on the Azure Arc machine.
  /// [parentClusterResourceId] The resource id of the parent cluster (Azure HCI) this machine is assigned to, if any.
  /// [privateLinkScopeResourceId] The resource id of the parent cluster (Azure HCI) this machine is assigned to, if any.
  /// [resourceGroupName] Required.
  /// [serviceStatuses] A `serviceStatus` block as defined below.
  /// [status] The current status of the service.
  /// [tags] A mapping of tags assigned to the Hybrid Compute.
  /// [vmId] Specifies the Azure Arc machine unique ID.
  /// [vmUuid] Specifies the Arc Machine's unique SMBIOS ID.
  const GetResult({
    required this.activeDirectoryFqdn,
    required this.agentVersion,
    required this.agents,
    required this.clientPublicKey,
    required this.cloudMetadatas,
    required this.detectedProperties,
    required this.displayName,
    required this.dnsFqdn,
    required this.domainName,
    required this.id,
    required this.identities,
    required this.lastStatusChangeTime,
    required this.location,
    required this.locationDatas,
    required this.machineFqdn,
    required this.mssqlDiscovered,
    required this.name,
    required this.osName,
    required this.osProfiles,
    required this.osSku,
    required this.osType,
    required this.osVersion,
    required this.parentClusterResourceId,
    required this.privateLinkScopeResourceId,
    required this.resourceGroupName,
    required this.serviceStatuses,
    required this.status,
    required this.tags,
    required this.vmId,
    required this.vmUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryFqdn': activeDirectoryFqdn,
      'agentVersion': agentVersion,
      'agents': pulumi.Input.encodeList<GetAgent, Map<String, dynamic>>(agents, (value) => value.toMap()),
      'clientPublicKey': clientPublicKey,
      'cloudMetadatas': pulumi.Input.encodeList<GetCloudMetadata, Map<String, dynamic>>(cloudMetadatas, (value) => value.toMap()),
      'detectedProperties': detectedProperties,
      'displayName': displayName,
      'dnsFqdn': dnsFqdn,
      'domainName': domainName,
      'id': id,
      'identities': pulumi.Input.encodeList<GetIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'lastStatusChangeTime': lastStatusChangeTime,
      'location': location,
      'locationDatas': pulumi.Input.encodeList<GetLocationData, Map<String, dynamic>>(locationDatas, (value) => value.toMap()),
      'machineFqdn': machineFqdn,
      'mssqlDiscovered': mssqlDiscovered,
      'name': name,
      'osName': osName,
      'osProfiles': pulumi.Input.encodeList<GetOsProfile, Map<String, dynamic>>(osProfiles, (value) => value.toMap()),
      'osSku': osSku,
      'osType': osType,
      'osVersion': osVersion,
      'parentClusterResourceId': parentClusterResourceId,
      'privateLinkScopeResourceId': privateLinkScopeResourceId,
      'resourceGroupName': resourceGroupName,
      'serviceStatuses': pulumi.Input.encodeList<GetServiceStatus, Map<String, dynamic>>(serviceStatuses, (value) => value.toMap()),
      'status': status,
      'tags': tags,
      'vmId': vmId,
      'vmUuid': vmUuid,
    };
  }

  factory GetResult.fromMap(Map<String, dynamic> map) {
    return GetResult(
      activeDirectoryFqdn: map['activeDirectoryFqdn'] as String,
      agentVersion: map['agentVersion'] as String,
      agents: pulumi.Input.decodeList<GetAgent>(map['agents']!, (value) => GetAgent.fromMap((value as Map).cast<String, dynamic>())),
      clientPublicKey: map['clientPublicKey'] as String,
      cloudMetadatas: pulumi.Input.decodeList<GetCloudMetadata>(map['cloudMetadatas']!, (value) => GetCloudMetadata.fromMap((value as Map).cast<String, dynamic>())),
      detectedProperties: (map['detectedProperties'] as Map).cast<String, String>(),
      displayName: map['displayName'] as String,
      dnsFqdn: map['dnsFqdn'] as String,
      domainName: map['domainName'] as String,
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetIdentity>(map['identities']!, (value) => GetIdentity.fromMap((value as Map).cast<String, dynamic>())),
      lastStatusChangeTime: map['lastStatusChangeTime'] as String,
      location: map['location'] as String,
      locationDatas: pulumi.Input.decodeList<GetLocationData>(map['locationDatas']!, (value) => GetLocationData.fromMap((value as Map).cast<String, dynamic>())),
      machineFqdn: map['machineFqdn'] as String,
      mssqlDiscovered: map['mssqlDiscovered'] as bool,
      name: map['name'] as String,
      osName: map['osName'] as String,
      osProfiles: pulumi.Input.decodeList<GetOsProfile>(map['osProfiles']!, (value) => GetOsProfile.fromMap((value as Map).cast<String, dynamic>())),
      osSku: map['osSku'] as String,
      osType: map['osType'] as String,
      osVersion: map['osVersion'] as String,
      parentClusterResourceId: map['parentClusterResourceId'] as String,
      privateLinkScopeResourceId: map['privateLinkScopeResourceId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceStatuses: pulumi.Input.decodeList<GetServiceStatus>(map['serviceStatuses']!, (value) => GetServiceStatus.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vmId: map['vmId'] as String,
      vmUuid: map['vmUuid'] as String,
    );
  }
}
