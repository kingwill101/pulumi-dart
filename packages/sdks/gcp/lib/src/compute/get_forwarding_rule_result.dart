// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_forwarding_rule_service_directory_registration.dart';

/// Result data returned by getForwardingRule.
class GetForwardingRuleResult {
  final bool? allPorts;
  final bool? allowGlobalAccess;
  final bool? allowPscGlobalAccess;
  final String? backendService;
  final String? baseForwardingRule;
  final String? creationTimestamp;
  final String? deletionPolicy;
  final String? description;
  final Map<String, String>? effectiveLabels;
  final int? forwardingRuleId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? ipAddress;
  final String? ipCollection;
  final String? ipProtocol;
  final String? ipVersion;
  final bool? isMirroringCollector;
  final String? labelFingerprint;
  final Map<String, String>? labels;
  final String? loadBalancingScheme;
  final String? name;
  final String? network;
  final String? networkTier;
  final bool? noAutomateDnsZone;
  final String? portRange;
  final List<String>? ports;
  final String? project;
  final String? pscConnectionId;
  final String? pscConnectionStatus;
  final Map<String, String>? pulumiLabels;
  final bool? recreateClosedPsc;
  final String? region;
  final String? selfLink;
  final List<GetForwardingRuleServiceDirectoryRegistration>? serviceDirectoryRegistrations;
  final String? serviceLabel;
  final String? serviceName;
  final List<String>? sourceIpRanges;
  final String? subnetwork;
  final String? target;

  /// Creates a new [GetForwardingRuleResult].
  /// [allPorts] Optional.
  /// [allowGlobalAccess] Optional.
  /// [allowPscGlobalAccess] Optional.
  /// [backendService] Optional.
  /// [baseForwardingRule] Optional.
  /// [creationTimestamp] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [effectiveLabels] Optional.
  /// [forwardingRuleId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipAddress] Optional.
  /// [ipCollection] Optional.
  /// [ipProtocol] Optional.
  /// [ipVersion] Optional.
  /// [isMirroringCollector] Optional.
  /// [labelFingerprint] Optional.
  /// [labels] Optional.
  /// [loadBalancingScheme] Optional.
  /// [name] Optional.
  /// [network] Optional.
  /// [networkTier] Optional.
  /// [noAutomateDnsZone] Optional.
  /// [portRange] Optional.
  /// [ports] Optional.
  /// [project] Optional.
  /// [pscConnectionId] Optional.
  /// [pscConnectionStatus] Optional.
  /// [pulumiLabels] Optional.
  /// [recreateClosedPsc] Optional.
  /// [region] Optional.
  /// [selfLink] Optional.
  /// [serviceDirectoryRegistrations] Optional.
  /// [serviceLabel] Optional.
  /// [serviceName] Optional.
  /// [sourceIpRanges] Optional.
  /// [subnetwork] Optional.
  /// [target] Optional.
  const GetForwardingRuleResult({
    this.allPorts,
    this.allowGlobalAccess,
    this.allowPscGlobalAccess,
    this.backendService,
    this.baseForwardingRule,
    this.creationTimestamp,
    this.deletionPolicy,
    this.description,
    this.effectiveLabels,
    this.forwardingRuleId,
    this.id,
    this.ipAddress,
    this.ipCollection,
    this.ipProtocol,
    this.ipVersion,
    this.isMirroringCollector,
    this.labelFingerprint,
    this.labels,
    this.loadBalancingScheme,
    this.name,
    this.network,
    this.networkTier,
    this.noAutomateDnsZone,
    this.portRange,
    this.ports,
    this.project,
    this.pscConnectionId,
    this.pscConnectionStatus,
    this.pulumiLabels,
    this.recreateClosedPsc,
    this.region,
    this.selfLink,
    this.serviceDirectoryRegistrations,
    this.serviceLabel,
    this.serviceName,
    this.sourceIpRanges,
    this.subnetwork,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allPorts': ?allPorts,
      'allowGlobalAccess': ?allowGlobalAccess,
      'allowPscGlobalAccess': ?allowPscGlobalAccess,
      'backendService': ?backendService,
      'baseForwardingRule': ?baseForwardingRule,
      'creationTimestamp': ?creationTimestamp,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'forwardingRuleId': ?forwardingRuleId,
      'id': ?id,
      'ipAddress': ?ipAddress,
      'ipCollection': ?ipCollection,
      'ipProtocol': ?ipProtocol,
      'ipVersion': ?ipVersion,
      'isMirroringCollector': ?isMirroringCollector,
      'labelFingerprint': ?labelFingerprint,
      'labels': ?labels,
      'loadBalancingScheme': ?loadBalancingScheme,
      'name': ?name,
      'network': ?network,
      'networkTier': ?networkTier,
      'noAutomateDnsZone': ?noAutomateDnsZone,
      'portRange': ?portRange,
      'ports': ?ports,
      'project': ?project,
      'pscConnectionId': ?pscConnectionId,
      'pscConnectionStatus': ?pscConnectionStatus,
      'pulumiLabels': ?pulumiLabels,
      'recreateClosedPsc': ?recreateClosedPsc,
      'region': ?region,
      'selfLink': ?selfLink,
      'serviceDirectoryRegistrations': ?(() { final guardedValue = serviceDirectoryRegistrations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetForwardingRuleServiceDirectoryRegistration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'serviceLabel': ?serviceLabel,
      'serviceName': ?serviceName,
      'sourceIpRanges': ?sourceIpRanges,
      'subnetwork': ?subnetwork,
      'target': ?target,
    };
  }

  factory GetForwardingRuleResult.fromMap(Map<String, dynamic> map) {
    return GetForwardingRuleResult(
      allPorts: (() { final guardedValue = map['allPorts']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      allowGlobalAccess: (() { final guardedValue = map['allowGlobalAccess']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      allowPscGlobalAccess: (() { final guardedValue = map['allowPscGlobalAccess']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      backendService: (() { final guardedValue = map['backendService']; if (guardedValue == null) return null; return guardedValue as String; })(),
      baseForwardingRule: (() { final guardedValue = map['baseForwardingRule']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      forwardingRuleId: (() { final guardedValue = map['forwardingRuleId']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipCollection: (() { final guardedValue = map['ipCollection']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipProtocol: (() { final guardedValue = map['ipProtocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipVersion: (() { final guardedValue = map['ipVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isMirroringCollector: (() { final guardedValue = map['isMirroringCollector']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      labelFingerprint: (() { final guardedValue = map['labelFingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      loadBalancingScheme: (() { final guardedValue = map['loadBalancingScheme']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkTier: (() { final guardedValue = map['networkTier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      noAutomateDnsZone: (() { final guardedValue = map['noAutomateDnsZone']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      portRange: (() { final guardedValue = map['portRange']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ports: (() { final guardedValue = map['ports']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pscConnectionId: (() { final guardedValue = map['pscConnectionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pscConnectionStatus: (() { final guardedValue = map['pscConnectionStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      recreateClosedPsc: (() { final guardedValue = map['recreateClosedPsc']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceDirectoryRegistrations: (() { final guardedValue = map['serviceDirectoryRegistrations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetForwardingRuleServiceDirectoryRegistration>(guardedValue, (value) => GetForwardingRuleServiceDirectoryRegistration.fromMap((value as Map).cast<String, dynamic>())); })(),
      serviceLabel: (() { final guardedValue = map['serviceLabel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceIpRanges: (() { final guardedValue = map['sourceIpRanges']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      subnetwork: (() { final guardedValue = map['subnetwork']; if (guardedValue == null) return null; return guardedValue as String; })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
