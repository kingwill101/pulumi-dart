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
  final List<AgentDetailsResponse> agentDetails;
  /// The control plane Uri.
  final String controlPlaneUri;
  /// The data plane Uri.
  final String dataPlaneUri;
  /// The list of DRAs.
  final List<DraDetailsResponse> dras;
  /// Gets the class type. Overridden in derived classes.
  /// Expected value is 'InMageRcm'.
  final String instanceType;
  /// The list of Mars agents.
  final List<MarsAgentDetailsResponse> marsAgents;
  /// The ARM Id of the physical site.
  final String physicalSiteId;
  /// The list of process servers.
  final List<ProcessServerDetailsResponse> processServers;
  /// The list of push installers.
  final List<PushInstallerDetailsResponse> pushInstallers;
  /// The list of RCM proxies.
  final List<RcmProxyDetailsResponse> rcmProxies;
  /// The list of replication agents.
  final List<ReplicationAgentDetailsResponse> replicationAgents;
  /// The list of reprotect agents.
  final List<ReprotectAgentDetailsResponse> reprotectAgents;
  /// The service container Id.
  final String serviceContainerId;
  /// The service endpoint.
  final String serviceEndpoint;
  /// The service resource Id.
  final String serviceResourceId;
  /// The source agent identity details.
  final IdentityProviderDetailsResponse? sourceAgentIdentityDetails;
  /// The ARM Id of the VMware site.
  final String vmwareSiteId;

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
      'agentDetails': pulumi.Input.encodeList<AgentDetailsResponse, Map<String, dynamic>>(agentDetails, (value) => value.toMap()),
      'controlPlaneUri': controlPlaneUri,
      'dataPlaneUri': dataPlaneUri,
      'dras': pulumi.Input.encodeList<DraDetailsResponse, Map<String, dynamic>>(dras, (value) => value.toMap()),
      'instanceType': instanceType,
      'marsAgents': pulumi.Input.encodeList<MarsAgentDetailsResponse, Map<String, dynamic>>(marsAgents, (value) => value.toMap()),
      'physicalSiteId': physicalSiteId,
      'processServers': pulumi.Input.encodeList<ProcessServerDetailsResponse, Map<String, dynamic>>(processServers, (value) => value.toMap()),
      'pushInstallers': pulumi.Input.encodeList<PushInstallerDetailsResponse, Map<String, dynamic>>(pushInstallers, (value) => value.toMap()),
      'rcmProxies': pulumi.Input.encodeList<RcmProxyDetailsResponse, Map<String, dynamic>>(rcmProxies, (value) => value.toMap()),
      'replicationAgents': pulumi.Input.encodeList<ReplicationAgentDetailsResponse, Map<String, dynamic>>(replicationAgents, (value) => value.toMap()),
      'reprotectAgents': pulumi.Input.encodeList<ReprotectAgentDetailsResponse, Map<String, dynamic>>(reprotectAgents, (value) => value.toMap()),
      'serviceContainerId': serviceContainerId,
      'serviceEndpoint': serviceEndpoint,
      'serviceResourceId': serviceResourceId,
      'sourceAgentIdentityDetails': ?sourceAgentIdentityDetails == null ? null : sourceAgentIdentityDetails!.toMap(),
      'vmwareSiteId': vmwareSiteId,
    };
  }

  factory InMageRcmFabricSpecificDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InMageRcmFabricSpecificDetailsResponse(
      agentDetails: pulumi.Input.decodeList<AgentDetailsResponse>(map['agentDetails'], (value) => AgentDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      controlPlaneUri: map['controlPlaneUri'] as String,
      dataPlaneUri: map['dataPlaneUri'] as String,
      dras: pulumi.Input.decodeList<DraDetailsResponse>(map['dras'], (value) => DraDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      instanceType: map['instanceType'] as String,
      marsAgents: pulumi.Input.decodeList<MarsAgentDetailsResponse>(map['marsAgents'], (value) => MarsAgentDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      physicalSiteId: map['physicalSiteId'] as String,
      processServers: pulumi.Input.decodeList<ProcessServerDetailsResponse>(map['processServers'], (value) => ProcessServerDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      pushInstallers: pulumi.Input.decodeList<PushInstallerDetailsResponse>(map['pushInstallers'], (value) => PushInstallerDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      rcmProxies: pulumi.Input.decodeList<RcmProxyDetailsResponse>(map['rcmProxies'], (value) => RcmProxyDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      replicationAgents: pulumi.Input.decodeList<ReplicationAgentDetailsResponse>(map['replicationAgents'], (value) => ReplicationAgentDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      reprotectAgents: pulumi.Input.decodeList<ReprotectAgentDetailsResponse>(map['reprotectAgents'], (value) => ReprotectAgentDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      serviceContainerId: map['serviceContainerId'] as String,
      serviceEndpoint: map['serviceEndpoint'] as String,
      serviceResourceId: map['serviceResourceId'] as String,
      sourceAgentIdentityDetails: map['sourceAgentIdentityDetails'] == null ? null : IdentityProviderDetailsResponse.fromMap((map['sourceAgentIdentityDetails'] as Map).cast<String, dynamic>()),
      vmwareSiteId: map['vmwareSiteId'] as String,
    );
  }
}

