// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_attachment_connected_endpoint.dart';
import 'get_service_attachment_consumer_accept_list.dart';
import 'get_service_attachment_psc_service_attachment_id.dart';
import 'get_service_attachment_tunneling_config.dart';

/// Result data returned by getServiceAttachment.
class GetServiceAttachmentResult {
  final List<GetServiceAttachmentConnectedEndpoint> connectedEndpoints;
  final String connectionPreference;
  final List<GetServiceAttachmentConsumerAcceptList> consumerAcceptLists;
  final List<String> consumerRejectLists;
  final String deletionPolicy;
  final String description;
  final List<String> domainNames;
  final bool enableProxyProtocol;
  final String fingerprint;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final List<String> natSubnets;
  final String? project;
  final int propagatedConnectionLimit;
  final List<GetServiceAttachmentPscServiceAttachmentId> pscServiceAttachmentIds;
  final bool reconcileConnections;
  final String? region;
  final String selfLink;
  final bool sendPropagatedConnectionLimitIfZero;
  final bool showNatIps;
  final String targetService;
  final List<GetServiceAttachmentTunnelingConfig> tunnelingConfigs;

  /// Creates a new [GetServiceAttachmentResult].
  /// [connectedEndpoints] Required.
  /// [connectionPreference] Required.
  /// [consumerAcceptLists] Required.
  /// [consumerRejectLists] Required.
  /// [deletionPolicy] Required.
  /// [description] Required.
  /// [domainNames] Required.
  /// [enableProxyProtocol] Required.
  /// [fingerprint] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [natSubnets] Required.
  /// [project] Optional.
  /// [propagatedConnectionLimit] Required.
  /// [pscServiceAttachmentIds] Required.
  /// [reconcileConnections] Required.
  /// [region] Optional.
  /// [selfLink] Required.
  /// [sendPropagatedConnectionLimitIfZero] Required.
  /// [showNatIps] Required.
  /// [targetService] Required.
  /// [tunnelingConfigs] Required.
  const GetServiceAttachmentResult({
    required this.connectedEndpoints,
    required this.connectionPreference,
    required this.consumerAcceptLists,
    required this.consumerRejectLists,
    required this.deletionPolicy,
    required this.description,
    required this.domainNames,
    required this.enableProxyProtocol,
    required this.fingerprint,
    required this.id,
    required this.name,
    required this.natSubnets,
    this.project,
    required this.propagatedConnectionLimit,
    required this.pscServiceAttachmentIds,
    required this.reconcileConnections,
    this.region,
    required this.selfLink,
    required this.sendPropagatedConnectionLimitIfZero,
    required this.showNatIps,
    required this.targetService,
    required this.tunnelingConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectedEndpoints': pulumi.Input.encodeList<GetServiceAttachmentConnectedEndpoint, Map<String, dynamic>>(connectedEndpoints, (value) => value.toMap()),
      'connectionPreference': connectionPreference,
      'consumerAcceptLists': pulumi.Input.encodeList<GetServiceAttachmentConsumerAcceptList, Map<String, dynamic>>(consumerAcceptLists, (value) => value.toMap()),
      'consumerRejectLists': consumerRejectLists,
      'deletionPolicy': deletionPolicy,
      'description': description,
      'domainNames': domainNames,
      'enableProxyProtocol': enableProxyProtocol,
      'fingerprint': fingerprint,
      'id': id,
      'name': name,
      'natSubnets': natSubnets,
      'project': ?project,
      'propagatedConnectionLimit': propagatedConnectionLimit,
      'pscServiceAttachmentIds': pulumi.Input.encodeList<GetServiceAttachmentPscServiceAttachmentId, Map<String, dynamic>>(pscServiceAttachmentIds, (value) => value.toMap()),
      'reconcileConnections': reconcileConnections,
      'region': ?region,
      'selfLink': selfLink,
      'sendPropagatedConnectionLimitIfZero': sendPropagatedConnectionLimitIfZero,
      'showNatIps': showNatIps,
      'targetService': targetService,
      'tunnelingConfigs': pulumi.Input.encodeList<GetServiceAttachmentTunnelingConfig, Map<String, dynamic>>(tunnelingConfigs, (value) => value.toMap()),
    };
  }

  factory GetServiceAttachmentResult.fromMap(Map<String, dynamic> map) {
    return GetServiceAttachmentResult(
      connectedEndpoints: pulumi.Input.decodeList<GetServiceAttachmentConnectedEndpoint>(map['connectedEndpoints']!, (value) => GetServiceAttachmentConnectedEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      connectionPreference: map['connectionPreference'] as String,
      consumerAcceptLists: pulumi.Input.decodeList<GetServiceAttachmentConsumerAcceptList>(map['consumerAcceptLists']!, (value) => GetServiceAttachmentConsumerAcceptList.fromMap((value as Map).cast<String, dynamic>())),
      consumerRejectLists: (map['consumerRejectLists'] as List).cast<String>(),
      deletionPolicy: map['deletionPolicy'] as String,
      description: map['description'] as String,
      domainNames: (map['domainNames'] as List).cast<String>(),
      enableProxyProtocol: map['enableProxyProtocol'] as bool,
      fingerprint: map['fingerprint'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      natSubnets: (map['natSubnets'] as List).cast<String>(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      propagatedConnectionLimit: map['propagatedConnectionLimit'] as int,
      pscServiceAttachmentIds: pulumi.Input.decodeList<GetServiceAttachmentPscServiceAttachmentId>(map['pscServiceAttachmentIds']!, (value) => GetServiceAttachmentPscServiceAttachmentId.fromMap((value as Map).cast<String, dynamic>())),
      reconcileConnections: map['reconcileConnections'] as bool,
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: map['selfLink'] as String,
      sendPropagatedConnectionLimitIfZero: map['sendPropagatedConnectionLimitIfZero'] as bool,
      showNatIps: map['showNatIps'] as bool,
      targetService: map['targetService'] as String,
      tunnelingConfigs: pulumi.Input.decodeList<GetServiceAttachmentTunnelingConfig>(map['tunnelingConfigs']!, (value) => GetServiceAttachmentTunnelingConfig.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
