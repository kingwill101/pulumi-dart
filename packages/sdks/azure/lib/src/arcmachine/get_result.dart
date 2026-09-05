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
  final String? activeDirectoryFqdn;
  /// The Azure Arc machine agent full version.
  final String? agentVersion;
  /// A `agent` block as defined below.
  final List<GetAgent>? agents;
  /// Public Key that the client provides to be used during initial resource onboarding.
  final String? clientPublicKey;
  /// A `cloudMetadata` block as defined below.
  final List<GetCloudMetadata>? cloudMetadatas;
  /// A `detectedProperties` block as defined below.
  final Map<String, String>? detectedProperties;
  /// Specifies the Azure Arc machine display name.
  final String? displayName;
  /// Specifies the DNS fully qualified display name.
  final String? dnsFqdn;
  /// Specifies the Windows domain name.
  final String? domainName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A `identity` block as defined below.
  final List<GetIdentity>? identities;
  /// The time of the last status change.
  final String? lastStatusChangeTime;
  /// The Azure Region where the Azure Arc machine exists.
  final String? location;
  /// A `locationData` block as defined below.
  final List<GetLocationData>? locationDatas;
  /// Specifies the Azure Arc machine fully qualified display name.
  final String? machineFqdn;
  /// Specifies whether any MS SQL instance is discovered on the machine.
  final bool? mssqlDiscovered;
  /// A canonical name for the geographic or physical location.
  final String? name;
  /// The Operating System running on the Azure Arc machine.
  final String? osName;
  /// A `osProfile` block as defined below.
  final List<GetOsProfile>? osProfiles;
  /// Specifies the Operating System product SKU.
  final String? osSku;
  /// The type of Operating System. Possible values are `windows` and `linux`.
  final String? osType;
  /// The version of Operating System running on the Azure Arc machine.
  final String? osVersion;
  /// The resource id of the parent cluster (Azure HCI) this machine is assigned to, if any.
  final String? parentClusterResourceId;
  /// The resource id of the parent cluster (Azure HCI) this machine is assigned to, if any.
  final String? privateLinkScopeResourceId;
  final String? resourceGroupName;
  /// A `serviceStatus` block as defined below.
  final List<GetServiceStatus>? serviceStatuses;
  /// The current status of the service.
  final String? status;
  /// A mapping of tags assigned to the Hybrid Compute.
  final Map<String, String>? tags;
  /// Specifies the Azure Arc machine unique ID.
  final String? vmId;
  /// Specifies the Arc Machine's unique SMBIOS ID.
  final String? vmUuid;

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
  /// [resourceGroupName] Optional.
  /// [serviceStatuses] A `serviceStatus` block as defined below.
  /// [status] The current status of the service.
  /// [tags] A mapping of tags assigned to the Hybrid Compute.
  /// [vmId] Specifies the Azure Arc machine unique ID.
  /// [vmUuid] Specifies the Arc Machine's unique SMBIOS ID.
  const GetResult({
    this.activeDirectoryFqdn,
    this.agentVersion,
    this.agents,
    this.clientPublicKey,
    this.cloudMetadatas,
    this.detectedProperties,
    this.displayName,
    this.dnsFqdn,
    this.domainName,
    this.id,
    this.identities,
    this.lastStatusChangeTime,
    this.location,
    this.locationDatas,
    this.machineFqdn,
    this.mssqlDiscovered,
    this.name,
    this.osName,
    this.osProfiles,
    this.osSku,
    this.osType,
    this.osVersion,
    this.parentClusterResourceId,
    this.privateLinkScopeResourceId,
    this.resourceGroupName,
    this.serviceStatuses,
    this.status,
    this.tags,
    this.vmId,
    this.vmUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryFqdn': ?activeDirectoryFqdn,
      'agentVersion': ?agentVersion,
      'agents': ?(() { final guardedValue = agents; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgent, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'clientPublicKey': ?clientPublicKey,
      'cloudMetadatas': ?(() { final guardedValue = cloudMetadatas; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCloudMetadata, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'detectedProperties': ?detectedProperties,
      'displayName': ?displayName,
      'dnsFqdn': ?dnsFqdn,
      'domainName': ?domainName,
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'lastStatusChangeTime': ?lastStatusChangeTime,
      'location': ?location,
      'locationDatas': ?(() { final guardedValue = locationDatas; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLocationData, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'machineFqdn': ?machineFqdn,
      'mssqlDiscovered': ?mssqlDiscovered,
      'name': ?name,
      'osName': ?osName,
      'osProfiles': ?(() { final guardedValue = osProfiles; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetOsProfile, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'osSku': ?osSku,
      'osType': ?osType,
      'osVersion': ?osVersion,
      'parentClusterResourceId': ?parentClusterResourceId,
      'privateLinkScopeResourceId': ?privateLinkScopeResourceId,
      'resourceGroupName': ?resourceGroupName,
      'serviceStatuses': ?(() { final guardedValue = serviceStatuses; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceStatus, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': ?status,
      'tags': ?tags,
      'vmId': ?vmId,
      'vmUuid': ?vmUuid,
    };
  }

  factory GetResult.fromMap(Map<String, dynamic> map) {
    return GetResult(
      activeDirectoryFqdn: (() { final guardedValue = map['activeDirectoryFqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      agentVersion: (() { final guardedValue = map['agentVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      agents: (() { final guardedValue = map['agents']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgent>(guardedValue, (value) => GetAgent.fromMap((value as Map).cast<String, dynamic>())); })(),
      clientPublicKey: (() { final guardedValue = map['clientPublicKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cloudMetadatas: (() { final guardedValue = map['cloudMetadatas']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCloudMetadata>(guardedValue, (value) => GetCloudMetadata.fromMap((value as Map).cast<String, dynamic>())); })(),
      detectedProperties: (() { final guardedValue = map['detectedProperties']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsFqdn: (() { final guardedValue = map['dnsFqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetIdentity>(guardedValue, (value) => GetIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      lastStatusChangeTime: (() { final guardedValue = map['lastStatusChangeTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locationDatas: (() { final guardedValue = map['locationDatas']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLocationData>(guardedValue, (value) => GetLocationData.fromMap((value as Map).cast<String, dynamic>())); })(),
      machineFqdn: (() { final guardedValue = map['machineFqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mssqlDiscovered: (() { final guardedValue = map['mssqlDiscovered']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      osName: (() { final guardedValue = map['osName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      osProfiles: (() { final guardedValue = map['osProfiles']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetOsProfile>(guardedValue, (value) => GetOsProfile.fromMap((value as Map).cast<String, dynamic>())); })(),
      osSku: (() { final guardedValue = map['osSku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      osVersion: (() { final guardedValue = map['osVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parentClusterResourceId: (() { final guardedValue = map['parentClusterResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateLinkScopeResourceId: (() { final guardedValue = map['privateLinkScopeResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceStatuses: (() { final guardedValue = map['serviceStatuses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceStatus>(guardedValue, (value) => GetServiceStatus.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      vmId: (() { final guardedValue = map['vmId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmUuid: (() { final guardedValue = map['vmUuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
