// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_global_forwarding_rule_metadata_filter.dart';
import 'get_global_forwarding_rule_service_directory_registration.dart';

/// Result data returned by getGlobalForwardingRule.
class GetGlobalForwardingRuleResult {
  final bool allowPscGlobalAccess;
  final String baseForwardingRule;
  final String description;
  final Map<String, String> effectiveLabels;
  final String externalManagedBackendBucketMigrationState;
  final double externalManagedBackendBucketMigrationTestingPercentage;
  final int forwardingRuleId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String ipAddress;
  final String ipProtocol;
  final String ipVersion;
  final String labelFingerprint;
  final Map<String, String> labels;
  final String loadBalancingScheme;
  final List<GetGlobalForwardingRuleMetadataFilter> metadataFilters;
  final String name;
  final String network;
  final String networkTier;
  final bool noAutomateDnsZone;
  final String portRange;
  final String? project;
  final String pscConnectionId;
  final String pscConnectionStatus;
  final Map<String, String> pulumiLabels;
  final String selfLink;
  final List<GetGlobalForwardingRuleServiceDirectoryRegistration> serviceDirectoryRegistrations;
  final List<String> sourceIpRanges;
  final String subnetwork;
  final String target;

  /// Creates a new [GetGlobalForwardingRuleResult].
  /// [allowPscGlobalAccess] Required.
  /// [baseForwardingRule] Required.
  /// [description] Required.
  /// [effectiveLabels] Required.
  /// [externalManagedBackendBucketMigrationState] Required.
  /// [externalManagedBackendBucketMigrationTestingPercentage] Required.
  /// [forwardingRuleId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipAddress] Required.
  /// [ipProtocol] Required.
  /// [ipVersion] Required.
  /// [labelFingerprint] Required.
  /// [labels] Required.
  /// [loadBalancingScheme] Required.
  /// [metadataFilters] Required.
  /// [name] Required.
  /// [network] Required.
  /// [networkTier] Required.
  /// [noAutomateDnsZone] Required.
  /// [portRange] Required.
  /// [project] Optional.
  /// [pscConnectionId] Required.
  /// [pscConnectionStatus] Required.
  /// [pulumiLabels] Required.
  /// [selfLink] Required.
  /// [serviceDirectoryRegistrations] Required.
  /// [sourceIpRanges] Required.
  /// [subnetwork] Required.
  /// [target] Required.
  GetGlobalForwardingRuleResult({
    required this.allowPscGlobalAccess,
    required this.baseForwardingRule,
    required this.description,
    required this.effectiveLabels,
    required this.externalManagedBackendBucketMigrationState,
    required this.externalManagedBackendBucketMigrationTestingPercentage,
    required this.forwardingRuleId,
    required this.id,
    required this.ipAddress,
    required this.ipProtocol,
    required this.ipVersion,
    required this.labelFingerprint,
    required this.labels,
    required this.loadBalancingScheme,
    required this.metadataFilters,
    required this.name,
    required this.network,
    required this.networkTier,
    required this.noAutomateDnsZone,
    required this.portRange,
    this.project,
    required this.pscConnectionId,
    required this.pscConnectionStatus,
    required this.pulumiLabels,
    required this.selfLink,
    required this.serviceDirectoryRegistrations,
    required this.sourceIpRanges,
    required this.subnetwork,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowPscGlobalAccess': allowPscGlobalAccess,
      'baseForwardingRule': baseForwardingRule,
      'description': description,
      'effectiveLabels': effectiveLabels,
      'externalManagedBackendBucketMigrationState': externalManagedBackendBucketMigrationState,
      'externalManagedBackendBucketMigrationTestingPercentage': externalManagedBackendBucketMigrationTestingPercentage,
      'forwardingRuleId': forwardingRuleId,
      'id': id,
      'ipAddress': ipAddress,
      'ipProtocol': ipProtocol,
      'ipVersion': ipVersion,
      'labelFingerprint': labelFingerprint,
      'labels': labels,
      'loadBalancingScheme': loadBalancingScheme,
      'metadataFilters': pulumi.Input.encodeList<GetGlobalForwardingRuleMetadataFilter, Map<String, dynamic>>(metadataFilters, (value) => value.toMap()),
      'name': name,
      'network': network,
      'networkTier': networkTier,
      'noAutomateDnsZone': noAutomateDnsZone,
      'portRange': portRange,
      'project': ?project,
      'pscConnectionId': pscConnectionId,
      'pscConnectionStatus': pscConnectionStatus,
      'pulumiLabels': pulumiLabels,
      'selfLink': selfLink,
      'serviceDirectoryRegistrations': pulumi.Input.encodeList<GetGlobalForwardingRuleServiceDirectoryRegistration, Map<String, dynamic>>(serviceDirectoryRegistrations, (value) => value.toMap()),
      'sourceIpRanges': sourceIpRanges,
      'subnetwork': subnetwork,
      'target': target,
    };
  }

  factory GetGlobalForwardingRuleResult.fromMap(Map<String, dynamic> map) {
    return GetGlobalForwardingRuleResult(
      allowPscGlobalAccess: map['allowPscGlobalAccess'] as bool,
      baseForwardingRule: map['baseForwardingRule'] as String,
      description: map['description'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      externalManagedBackendBucketMigrationState: map['externalManagedBackendBucketMigrationState'] as String,
      externalManagedBackendBucketMigrationTestingPercentage: map['externalManagedBackendBucketMigrationTestingPercentage'] as double,
      forwardingRuleId: map['forwardingRuleId'] as int,
      id: map['id'] as String,
      ipAddress: map['ipAddress'] as String,
      ipProtocol: map['ipProtocol'] as String,
      ipVersion: map['ipVersion'] as String,
      labelFingerprint: map['labelFingerprint'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      loadBalancingScheme: map['loadBalancingScheme'] as String,
      metadataFilters: pulumi.Input.decodeList<GetGlobalForwardingRuleMetadataFilter>(map['metadataFilters']!, (value) => GetGlobalForwardingRuleMetadataFilter.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      network: map['network'] as String,
      networkTier: map['networkTier'] as String,
      noAutomateDnsZone: map['noAutomateDnsZone'] as bool,
      portRange: map['portRange'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pscConnectionId: map['pscConnectionId'] as String,
      pscConnectionStatus: map['pscConnectionStatus'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      selfLink: map['selfLink'] as String,
      serviceDirectoryRegistrations: pulumi.Input.decodeList<GetGlobalForwardingRuleServiceDirectoryRegistration>(map['serviceDirectoryRegistrations']!, (value) => GetGlobalForwardingRuleServiceDirectoryRegistration.fromMap((value as Map).cast<String, dynamic>())),
      sourceIpRanges: (map['sourceIpRanges'] as List).cast<String>(),
      subnetwork: map['subnetwork'] as String,
      target: map['target'] as String,
    );
  }
}

