// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_details_response.dart';
import 'dra_details_response.dart';
import 'identity_provider_details_response.dart';
import 'mars_agent_details_response.dart';
import 'process_server_details_response.dart';
import 'push_installer_details_response.dart';
import 'rcm_proxy_details_response.dart';
import 'replication_agent_details_response.dart';
import 'reprotect_agent_details_response.dart';

/// InMageRcm fabric specific details.
class InMageRcmFabricSpecificDetailsResponse {
  /// The list of agent details.
  final pulumi.Input<List<AgentDetailsResponse>> agentDetails;
  /// The control plane Uri.
  final pulumi.Input<String> controlPlaneUri;
  /// The data plane Uri.
  final pulumi.Input<String> dataPlaneUri;
  /// The list of DRAs.
  final pulumi.Input<List<DraDetailsResponse>> dras;
  /// Gets the class type. Overridden in derived classes.
  /// Expected value is 'InMageRcm'.
  final pulumi.Input<String> instanceType;
  /// The list of Mars agents.
  final pulumi.Input<List<MarsAgentDetailsResponse>> marsAgents;
  /// The ARM Id of the physical site.
  final pulumi.Input<String> physicalSiteId;
  /// The list of process servers.
  final pulumi.Input<List<ProcessServerDetailsResponse>> processServers;
  /// The list of push installers.
  final pulumi.Input<List<PushInstallerDetailsResponse>> pushInstallers;
  /// The list of RCM proxies.
  final pulumi.Input<List<RcmProxyDetailsResponse>> rcmProxies;
  /// The list of replication agents.
  final pulumi.Input<List<ReplicationAgentDetailsResponse>> replicationAgents;
  /// The list of reprotect agents.
  final pulumi.Input<List<ReprotectAgentDetailsResponse>> reprotectAgents;
  /// The service container Id.
  final pulumi.Input<String> serviceContainerId;
  /// The service endpoint.
  final pulumi.Input<String> serviceEndpoint;
  /// The service resource Id.
  final pulumi.Input<String> serviceResourceId;
  /// The source agent identity details.
  final pulumi.Input<IdentityProviderDetailsResponse>? sourceAgentIdentityDetails;
  /// The ARM Id of the VMware site.
  final pulumi.Input<String> vmwareSiteId;

  /// Creates a new [InMageRcmFabricSpecificDetailsResponse].
  /// [agentDetails] The list of agent details.
  /// [controlPlaneUri] The control plane Uri.
  /// [dataPlaneUri] The data plane Uri.
  /// [dras] The list of DRAs.
  /// [instanceType] Gets the class type. Overridden in derived classes.
  /// [marsAgents] The list of Mars agents.
  /// [physicalSiteId] The ARM Id of the physical site.
  /// [processServers] The list of process servers.
  /// [pushInstallers] The list of push installers.
  /// [rcmProxies] The list of RCM proxies.
  /// [replicationAgents] The list of replication agents.
  /// [reprotectAgents] The list of reprotect agents.
  /// [serviceContainerId] The service container Id.
  /// [serviceEndpoint] The service endpoint.
  /// [serviceResourceId] The service resource Id.
  /// [sourceAgentIdentityDetails] The source agent identity details.
  /// [vmwareSiteId] The ARM Id of the VMware site.
  InMageRcmFabricSpecificDetailsResponse({
    required this.agentDetails,
    required this.controlPlaneUri,
    required this.dataPlaneUri,
    required this.dras,
    required this.instanceType,
    required this.marsAgents,
    required this.physicalSiteId,
    required this.processServers,
    required this.pushInstallers,
    required this.rcmProxies,
    required this.replicationAgents,
    required this.reprotectAgents,
    required this.serviceContainerId,
    required this.serviceEndpoint,
    required this.serviceResourceId,
    this.sourceAgentIdentityDetails,
    required this.vmwareSiteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentDetails': pulumi.Input.mapInputValue<List<AgentDetailsResponse>, List<Map<String, dynamic>>>(agentDetails, (value) => pulumi.Input.encodeList<AgentDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'controlPlaneUri': controlPlaneUri,
      'dataPlaneUri': dataPlaneUri,
      'dras': pulumi.Input.mapInputValue<List<DraDetailsResponse>, List<Map<String, dynamic>>>(dras, (value) => pulumi.Input.encodeList<DraDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceType': instanceType,
      'marsAgents': pulumi.Input.mapInputValue<List<MarsAgentDetailsResponse>, List<Map<String, dynamic>>>(marsAgents, (value) => pulumi.Input.encodeList<MarsAgentDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'physicalSiteId': physicalSiteId,
      'processServers': pulumi.Input.mapInputValue<List<ProcessServerDetailsResponse>, List<Map<String, dynamic>>>(processServers, (value) => pulumi.Input.encodeList<ProcessServerDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pushInstallers': pulumi.Input.mapInputValue<List<PushInstallerDetailsResponse>, List<Map<String, dynamic>>>(pushInstallers, (value) => pulumi.Input.encodeList<PushInstallerDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rcmProxies': pulumi.Input.mapInputValue<List<RcmProxyDetailsResponse>, List<Map<String, dynamic>>>(rcmProxies, (value) => pulumi.Input.encodeList<RcmProxyDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'replicationAgents': pulumi.Input.mapInputValue<List<ReplicationAgentDetailsResponse>, List<Map<String, dynamic>>>(replicationAgents, (value) => pulumi.Input.encodeList<ReplicationAgentDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'reprotectAgents': pulumi.Input.mapInputValue<List<ReprotectAgentDetailsResponse>, List<Map<String, dynamic>>>(reprotectAgents, (value) => pulumi.Input.encodeList<ReprotectAgentDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceContainerId': serviceContainerId,
      'serviceEndpoint': serviceEndpoint,
      'serviceResourceId': serviceResourceId,
      'sourceAgentIdentityDetails': ?pulumi.Input.mapOptionalInputValue<IdentityProviderDetailsResponse, Map<String, dynamic>>(sourceAgentIdentityDetails, (value) => value.toMap()),
      'vmwareSiteId': vmwareSiteId,
    };
  }

  factory InMageRcmFabricSpecificDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InMageRcmFabricSpecificDetailsResponse(
      agentDetails: (pulumi.Input.decodeList<AgentDetailsResponse>(map['agentDetails'], (value) => AgentDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      controlPlaneUri: (map['controlPlaneUri'] as String).input(),
      dataPlaneUri: (map['dataPlaneUri'] as String).input(),
      dras: (pulumi.Input.decodeList<DraDetailsResponse>(map['dras'], (value) => DraDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      instanceType: (map['instanceType'] as String).input(),
      marsAgents: (pulumi.Input.decodeList<MarsAgentDetailsResponse>(map['marsAgents'], (value) => MarsAgentDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      physicalSiteId: (map['physicalSiteId'] as String).input(),
      processServers: (pulumi.Input.decodeList<ProcessServerDetailsResponse>(map['processServers'], (value) => ProcessServerDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      pushInstallers: (pulumi.Input.decodeList<PushInstallerDetailsResponse>(map['pushInstallers'], (value) => PushInstallerDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      rcmProxies: (pulumi.Input.decodeList<RcmProxyDetailsResponse>(map['rcmProxies'], (value) => RcmProxyDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      replicationAgents: (pulumi.Input.decodeList<ReplicationAgentDetailsResponse>(map['replicationAgents'], (value) => ReplicationAgentDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      reprotectAgents: (pulumi.Input.decodeList<ReprotectAgentDetailsResponse>(map['reprotectAgents'], (value) => ReprotectAgentDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      serviceContainerId: (map['serviceContainerId'] as String).input(),
      serviceEndpoint: (map['serviceEndpoint'] as String).input(),
      serviceResourceId: (map['serviceResourceId'] as String).input(),
      sourceAgentIdentityDetails: map['sourceAgentIdentityDetails'] == null ? null : (IdentityProviderDetailsResponse.fromMap((map['sourceAgentIdentityDetails']! as Map).cast<String, dynamic>())).input(),
      vmwareSiteId: (map['vmwareSiteId'] as String).input(),
    );
  }
}

