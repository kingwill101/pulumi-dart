// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_global_forwarding_rule_metadata_filter.dart';
import 'get_global_forwarding_rule_service_directory_registration.dart';

/// Result data returned by getGlobalForwardingRule.
class GetGlobalForwardingRuleResult {
  final bool? allowPscGlobalAccess;
  final String? baseForwardingRule;
  final String? deletionPolicy;
  final String? description;
  final Map<String, String>? effectiveLabels;
  final String? externalManagedBackendBucketMigrationState;
  final double? externalManagedBackendBucketMigrationTestingPercentage;
  final int? forwardingRuleId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? ipAddress;
  final String? ipProtocol;
  final String? ipVersion;
  final String? labelFingerprint;
  final Map<String, String>? labels;
  final String? loadBalancingScheme;
  final List<GetGlobalForwardingRuleMetadataFilter>? metadataFilters;
  final String? name;
  final String? network;
  final String? networkTier;
  final bool? noAutomateDnsZone;
  final String? portRange;
  final String? project;
  final String? pscConnectionId;
  final String? pscConnectionStatus;
  final Map<String, String>? pulumiLabels;
  final String? selfLink;
  final List<GetGlobalForwardingRuleServiceDirectoryRegistration>? serviceDirectoryRegistrations;
  final List<String>? sourceIpRanges;
  final String? subnetwork;
  final String? target;

  /// Creates a new [GetGlobalForwardingRuleResult].
  /// [allowPscGlobalAccess] Optional.
  /// [baseForwardingRule] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [effectiveLabels] Optional.
  /// [externalManagedBackendBucketMigrationState] Optional.
  /// [externalManagedBackendBucketMigrationTestingPercentage] Optional.
  /// [forwardingRuleId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipAddress] Optional.
  /// [ipProtocol] Optional.
  /// [ipVersion] Optional.
  /// [labelFingerprint] Optional.
  /// [labels] Optional.
  /// [loadBalancingScheme] Optional.
  /// [metadataFilters] Optional.
  /// [name] Optional.
  /// [network] Optional.
  /// [networkTier] Optional.
  /// [noAutomateDnsZone] Optional.
  /// [portRange] Optional.
  /// [project] Optional.
  /// [pscConnectionId] Optional.
  /// [pscConnectionStatus] Optional.
  /// [pulumiLabels] Optional.
  /// [selfLink] Optional.
  /// [serviceDirectoryRegistrations] Optional.
  /// [sourceIpRanges] Optional.
  /// [subnetwork] Optional.
  /// [target] Optional.
  const GetGlobalForwardingRuleResult({
    this.allowPscGlobalAccess,
    this.baseForwardingRule,
    this.deletionPolicy,
    this.description,
    this.effectiveLabels,
    this.externalManagedBackendBucketMigrationState,
    this.externalManagedBackendBucketMigrationTestingPercentage,
    this.forwardingRuleId,
    this.id,
    this.ipAddress,
    this.ipProtocol,
    this.ipVersion,
    this.labelFingerprint,
    this.labels,
    this.loadBalancingScheme,
    this.metadataFilters,
    this.name,
    this.network,
    this.networkTier,
    this.noAutomateDnsZone,
    this.portRange,
    this.project,
    this.pscConnectionId,
    this.pscConnectionStatus,
    this.pulumiLabels,
    this.selfLink,
    this.serviceDirectoryRegistrations,
    this.sourceIpRanges,
    this.subnetwork,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowPscGlobalAccess': ?allowPscGlobalAccess,
      'baseForwardingRule': ?baseForwardingRule,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'externalManagedBackendBucketMigrationState': ?externalManagedBackendBucketMigrationState,
      'externalManagedBackendBucketMigrationTestingPercentage': ?externalManagedBackendBucketMigrationTestingPercentage,
      'forwardingRuleId': ?forwardingRuleId,
      'id': ?id,
      'ipAddress': ?ipAddress,
      'ipProtocol': ?ipProtocol,
      'ipVersion': ?ipVersion,
      'labelFingerprint': ?labelFingerprint,
      'labels': ?labels,
      'loadBalancingScheme': ?loadBalancingScheme,
      'metadataFilters': ?(() { final guardedValue = metadataFilters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGlobalForwardingRuleMetadataFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'network': ?network,
      'networkTier': ?networkTier,
      'noAutomateDnsZone': ?noAutomateDnsZone,
      'portRange': ?portRange,
      'project': ?project,
      'pscConnectionId': ?pscConnectionId,
      'pscConnectionStatus': ?pscConnectionStatus,
      'pulumiLabels': ?pulumiLabels,
      'selfLink': ?selfLink,
      'serviceDirectoryRegistrations': ?(() { final guardedValue = serviceDirectoryRegistrations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGlobalForwardingRuleServiceDirectoryRegistration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sourceIpRanges': ?sourceIpRanges,
      'subnetwork': ?subnetwork,
      'target': ?target,
    };
  }

  factory GetGlobalForwardingRuleResult.fromMap(Map<String, dynamic> map) {
    return GetGlobalForwardingRuleResult(
      allowPscGlobalAccess: (() { final guardedValue = map['allowPscGlobalAccess']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      baseForwardingRule: (() { final guardedValue = map['baseForwardingRule']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      externalManagedBackendBucketMigrationState: (() { final guardedValue = map['externalManagedBackendBucketMigrationState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      externalManagedBackendBucketMigrationTestingPercentage: (() { final guardedValue = map['externalManagedBackendBucketMigrationTestingPercentage']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      forwardingRuleId: (() { final guardedValue = map['forwardingRuleId']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipProtocol: (() { final guardedValue = map['ipProtocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipVersion: (() { final guardedValue = map['ipVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labelFingerprint: (() { final guardedValue = map['labelFingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      loadBalancingScheme: (() { final guardedValue = map['loadBalancingScheme']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadataFilters: (() { final guardedValue = map['metadataFilters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGlobalForwardingRuleMetadataFilter>(guardedValue, (value) => GetGlobalForwardingRuleMetadataFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkTier: (() { final guardedValue = map['networkTier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      noAutomateDnsZone: (() { final guardedValue = map['noAutomateDnsZone']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      portRange: (() { final guardedValue = map['portRange']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pscConnectionId: (() { final guardedValue = map['pscConnectionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pscConnectionStatus: (() { final guardedValue = map['pscConnectionStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceDirectoryRegistrations: (() { final guardedValue = map['serviceDirectoryRegistrations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGlobalForwardingRuleServiceDirectoryRegistration>(guardedValue, (value) => GetGlobalForwardingRuleServiceDirectoryRegistration.fromMap((value as Map).cast<String, dynamic>())); })(),
      sourceIpRanges: (() { final guardedValue = map['sourceIpRanges']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      subnetwork: (() { final guardedValue = map['subnetwork']; if (guardedValue == null) return null; return guardedValue as String; })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
