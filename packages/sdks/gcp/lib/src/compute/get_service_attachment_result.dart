// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_attachment_connected_endpoint.dart';
import 'get_service_attachment_consumer_accept_list.dart';
import 'get_service_attachment_psc_service_attachment_id.dart';
import 'get_service_attachment_tunneling_config.dart';

/// Result data returned by getServiceAttachment.
class GetServiceAttachmentResult {
  final List<GetServiceAttachmentConnectedEndpoint>? connectedEndpoints;
  final String? connectionPreference;
  final List<GetServiceAttachmentConsumerAcceptList>? consumerAcceptLists;
  final List<String>? consumerRejectLists;
  final String? deletionPolicy;
  final String? description;
  final List<String>? domainNames;
  final bool? enableProxyProtocol;
  final String? fingerprint;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final List<String>? natSubnets;
  final String? project;
  final int? propagatedConnectionLimit;
  final List<GetServiceAttachmentPscServiceAttachmentId>? pscServiceAttachmentIds;
  final bool? reconcileConnections;
  final String? region;
  final String? selfLink;
  final bool? sendPropagatedConnectionLimitIfZero;
  final bool? showNatIps;
  final String? targetService;
  final List<GetServiceAttachmentTunnelingConfig>? tunnelingConfigs;

  /// Creates a new [GetServiceAttachmentResult].
  /// [connectedEndpoints] Optional.
  /// [connectionPreference] Optional.
  /// [consumerAcceptLists] Optional.
  /// [consumerRejectLists] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [domainNames] Optional.
  /// [enableProxyProtocol] Optional.
  /// [fingerprint] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [natSubnets] Optional.
  /// [project] Optional.
  /// [propagatedConnectionLimit] Optional.
  /// [pscServiceAttachmentIds] Optional.
  /// [reconcileConnections] Optional.
  /// [region] Optional.
  /// [selfLink] Optional.
  /// [sendPropagatedConnectionLimitIfZero] Optional.
  /// [showNatIps] Optional.
  /// [targetService] Optional.
  /// [tunnelingConfigs] Optional.
  const GetServiceAttachmentResult({
    this.connectedEndpoints,
    this.connectionPreference,
    this.consumerAcceptLists,
    this.consumerRejectLists,
    this.deletionPolicy,
    this.description,
    this.domainNames,
    this.enableProxyProtocol,
    this.fingerprint,
    this.id,
    this.name,
    this.natSubnets,
    this.project,
    this.propagatedConnectionLimit,
    this.pscServiceAttachmentIds,
    this.reconcileConnections,
    this.region,
    this.selfLink,
    this.sendPropagatedConnectionLimitIfZero,
    this.showNatIps,
    this.targetService,
    this.tunnelingConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectedEndpoints': ?(() { final guardedValue = connectedEndpoints; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceAttachmentConnectedEndpoint, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'connectionPreference': ?connectionPreference,
      'consumerAcceptLists': ?(() { final guardedValue = consumerAcceptLists; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceAttachmentConsumerAcceptList, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'consumerRejectLists': ?consumerRejectLists,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'domainNames': ?domainNames,
      'enableProxyProtocol': ?enableProxyProtocol,
      'fingerprint': ?fingerprint,
      'id': ?id,
      'name': ?name,
      'natSubnets': ?natSubnets,
      'project': ?project,
      'propagatedConnectionLimit': ?propagatedConnectionLimit,
      'pscServiceAttachmentIds': ?(() { final guardedValue = pscServiceAttachmentIds; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceAttachmentPscServiceAttachmentId, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'reconcileConnections': ?reconcileConnections,
      'region': ?region,
      'selfLink': ?selfLink,
      'sendPropagatedConnectionLimitIfZero': ?sendPropagatedConnectionLimitIfZero,
      'showNatIps': ?showNatIps,
      'targetService': ?targetService,
      'tunnelingConfigs': ?(() { final guardedValue = tunnelingConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceAttachmentTunnelingConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetServiceAttachmentResult.fromMap(Map<String, dynamic> map) {
    return GetServiceAttachmentResult(
      connectedEndpoints: (() { final guardedValue = map['connectedEndpoints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceAttachmentConnectedEndpoint>(guardedValue, (value) => GetServiceAttachmentConnectedEndpoint.fromMap((value as Map).cast<String, dynamic>())); })(),
      connectionPreference: (() { final guardedValue = map['connectionPreference']; if (guardedValue == null) return null; return guardedValue as String; })(),
      consumerAcceptLists: (() { final guardedValue = map['consumerAcceptLists']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceAttachmentConsumerAcceptList>(guardedValue, (value) => GetServiceAttachmentConsumerAcceptList.fromMap((value as Map).cast<String, dynamic>())); })(),
      consumerRejectLists: (() { final guardedValue = map['consumerRejectLists']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainNames: (() { final guardedValue = map['domainNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      enableProxyProtocol: (() { final guardedValue = map['enableProxyProtocol']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      natSubnets: (() { final guardedValue = map['natSubnets']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      propagatedConnectionLimit: (() { final guardedValue = map['propagatedConnectionLimit']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      pscServiceAttachmentIds: (() { final guardedValue = map['pscServiceAttachmentIds']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceAttachmentPscServiceAttachmentId>(guardedValue, (value) => GetServiceAttachmentPscServiceAttachmentId.fromMap((value as Map).cast<String, dynamic>())); })(),
      reconcileConnections: (() { final guardedValue = map['reconcileConnections']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sendPropagatedConnectionLimitIfZero: (() { final guardedValue = map['sendPropagatedConnectionLimitIfZero']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      showNatIps: (() { final guardedValue = map['showNatIps']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      targetService: (() { final guardedValue = map['targetService']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tunnelingConfigs: (() { final guardedValue = map['tunnelingConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceAttachmentTunnelingConfig>(guardedValue, (value) => GetServiceAttachmentTunnelingConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
