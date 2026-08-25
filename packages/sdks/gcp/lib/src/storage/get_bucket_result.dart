// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_autoclass.dart';
import 'get_bucket_cor.dart';
import 'get_bucket_custom_placement_config.dart';
import 'get_bucket_encryption.dart';
import 'get_bucket_hierarchical_namespace.dart';
import 'get_bucket_ip_filter.dart';
import 'get_bucket_lifecycle_rule.dart';
import 'get_bucket_logging.dart';
import 'get_bucket_retention_policy.dart';
import 'get_bucket_soft_delete_policy.dart';
import 'get_bucket_versioning.dart';
import 'get_bucket_website.dart';

/// Result data returned by getBucket.
class GetBucketResult {
  final List<GetBucketAutoclass>? autoclasses;
  final List<GetBucketCor>? cors;
  final List<GetBucketCustomPlacementConfig>? customPlacementConfigs;
  final bool? defaultEventBasedHold;
  final String? deletionPolicy;
  final Map<String, String>? effectiveLabels;
  final bool? enableObjectRetention;
  final List<GetBucketEncryption>? encryptions;
  final bool? forceDestroy;
  final List<GetBucketHierarchicalNamespace>? hierarchicalNamespaces;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetBucketIpFilter>? ipFilters;
  final Map<String, String>? labels;
  final List<GetBucketLifecycleRule>? lifecycleRules;
  final String? location;
  final List<GetBucketLogging>? loggings;
  final String? name;
  final String? project;
  final int? projectNumber;
  final String? publicAccessPrevention;
  final Map<String, String>? pulumiLabels;
  final bool? requesterPays;
  final List<GetBucketRetentionPolicy>? retentionPolicies;
  final String? rpo;
  final String? selfLink;
  final List<GetBucketSoftDeletePolicy>? softDeletePolicies;
  final String? storageClass;
  final String? timeCreated;
  final bool? uniformBucketLevelAccess;
  final String? updated;
  final String? url;
  final List<GetBucketVersioning>? versionings;
  final List<GetBucketWebsite>? websites;

  /// Creates a new [GetBucketResult].
  /// [autoclasses] Optional.
  /// [cors] Optional.
  /// [customPlacementConfigs] Optional.
  /// [defaultEventBasedHold] Optional.
  /// [deletionPolicy] Optional.
  /// [effectiveLabels] Optional.
  /// [enableObjectRetention] Optional.
  /// [encryptions] Optional.
  /// [forceDestroy] Optional.
  /// [hierarchicalNamespaces] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipFilters] Optional.
  /// [labels] Optional.
  /// [lifecycleRules] Optional.
  /// [location] Optional.
  /// [loggings] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [projectNumber] Optional.
  /// [publicAccessPrevention] Optional.
  /// [pulumiLabels] Optional.
  /// [requesterPays] Optional.
  /// [retentionPolicies] Optional.
  /// [rpo] Optional.
  /// [selfLink] Optional.
  /// [softDeletePolicies] Optional.
  /// [storageClass] Optional.
  /// [timeCreated] Optional.
  /// [uniformBucketLevelAccess] Optional.
  /// [updated] Optional.
  /// [url] Optional.
  /// [versionings] Optional.
  /// [websites] Optional.
  const GetBucketResult({
    this.autoclasses,
    this.cors,
    this.customPlacementConfigs,
    this.defaultEventBasedHold,
    this.deletionPolicy,
    this.effectiveLabels,
    this.enableObjectRetention,
    this.encryptions,
    this.forceDestroy,
    this.hierarchicalNamespaces,
    this.id,
    this.ipFilters,
    this.labels,
    this.lifecycleRules,
    this.location,
    this.loggings,
    this.name,
    this.project,
    this.projectNumber,
    this.publicAccessPrevention,
    this.pulumiLabels,
    this.requesterPays,
    this.retentionPolicies,
    this.rpo,
    this.selfLink,
    this.softDeletePolicies,
    this.storageClass,
    this.timeCreated,
    this.uniformBucketLevelAccess,
    this.updated,
    this.url,
    this.versionings,
    this.websites,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoclasses': ?(() { final guardedValue = autoclasses; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBucketAutoclass, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'cors': ?(() { final guardedValue = cors; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBucketCor, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'customPlacementConfigs': ?(() { final guardedValue = customPlacementConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBucketCustomPlacementConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'defaultEventBasedHold': ?defaultEventBasedHold,
      'deletionPolicy': ?deletionPolicy,
      'effectiveLabels': ?effectiveLabels,
      'enableObjectRetention': ?enableObjectRetention,
      'encryptions': ?(() { final guardedValue = encryptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBucketEncryption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'forceDestroy': ?forceDestroy,
      'hierarchicalNamespaces': ?(() { final guardedValue = hierarchicalNamespaces; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBucketHierarchicalNamespace, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'ipFilters': ?(() { final guardedValue = ipFilters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBucketIpFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'labels': ?labels,
      'lifecycleRules': ?(() { final guardedValue = lifecycleRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBucketLifecycleRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'loggings': ?(() { final guardedValue = loggings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBucketLogging, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'project': ?project,
      'projectNumber': ?projectNumber,
      'publicAccessPrevention': ?publicAccessPrevention,
      'pulumiLabels': ?pulumiLabels,
      'requesterPays': ?requesterPays,
      'retentionPolicies': ?(() { final guardedValue = retentionPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBucketRetentionPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'rpo': ?rpo,
      'selfLink': ?selfLink,
      'softDeletePolicies': ?(() { final guardedValue = softDeletePolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBucketSoftDeletePolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'storageClass': ?storageClass,
      'timeCreated': ?timeCreated,
      'uniformBucketLevelAccess': ?uniformBucketLevelAccess,
      'updated': ?updated,
      'url': ?url,
      'versionings': ?(() { final guardedValue = versionings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBucketVersioning, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'websites': ?(() { final guardedValue = websites; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBucketWebsite, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetBucketResult.fromMap(Map<String, dynamic> map) {
    return GetBucketResult(
      autoclasses: (() { final guardedValue = map['autoclasses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBucketAutoclass>(guardedValue, (value) => GetBucketAutoclass.fromMap((value as Map).cast<String, dynamic>())); })(),
      cors: (() { final guardedValue = map['cors']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBucketCor>(guardedValue, (value) => GetBucketCor.fromMap((value as Map).cast<String, dynamic>())); })(),
      customPlacementConfigs: (() { final guardedValue = map['customPlacementConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBucketCustomPlacementConfig>(guardedValue, (value) => GetBucketCustomPlacementConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      defaultEventBasedHold: (() { final guardedValue = map['defaultEventBasedHold']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      enableObjectRetention: (() { final guardedValue = map['enableObjectRetention']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      encryptions: (() { final guardedValue = map['encryptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBucketEncryption>(guardedValue, (value) => GetBucketEncryption.fromMap((value as Map).cast<String, dynamic>())); })(),
      forceDestroy: (() { final guardedValue = map['forceDestroy']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      hierarchicalNamespaces: (() { final guardedValue = map['hierarchicalNamespaces']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBucketHierarchicalNamespace>(guardedValue, (value) => GetBucketHierarchicalNamespace.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipFilters: (() { final guardedValue = map['ipFilters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBucketIpFilter>(guardedValue, (value) => GetBucketIpFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      lifecycleRules: (() { final guardedValue = map['lifecycleRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBucketLifecycleRule>(guardedValue, (value) => GetBucketLifecycleRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loggings: (() { final guardedValue = map['loggings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBucketLogging>(guardedValue, (value) => GetBucketLogging.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      projectNumber: (() { final guardedValue = map['projectNumber']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      publicAccessPrevention: (() { final guardedValue = map['publicAccessPrevention']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      requesterPays: (() { final guardedValue = map['requesterPays']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      retentionPolicies: (() { final guardedValue = map['retentionPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBucketRetentionPolicy>(guardedValue, (value) => GetBucketRetentionPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      rpo: (() { final guardedValue = map['rpo']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      softDeletePolicies: (() { final guardedValue = map['softDeletePolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBucketSoftDeletePolicy>(guardedValue, (value) => GetBucketSoftDeletePolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      storageClass: (() { final guardedValue = map['storageClass']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeCreated: (() { final guardedValue = map['timeCreated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uniformBucketLevelAccess: (() { final guardedValue = map['uniformBucketLevelAccess']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      updated: (() { final guardedValue = map['updated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionings: (() { final guardedValue = map['versionings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBucketVersioning>(guardedValue, (value) => GetBucketVersioning.fromMap((value as Map).cast<String, dynamic>())); })(),
      websites: (() { final guardedValue = map['websites']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBucketWebsite>(guardedValue, (value) => GetBucketWebsite.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
