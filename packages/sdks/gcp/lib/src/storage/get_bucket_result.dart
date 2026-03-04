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
  final List<GetBucketAutoclass> autoclasses;
  final List<GetBucketCor> cors;
  final List<GetBucketCustomPlacementConfig> customPlacementConfigs;
  final bool defaultEventBasedHold;
  final Map<String, String> effectiveLabels;
  final bool enableObjectRetention;
  final List<GetBucketEncryption> encryptions;
  final bool forceDestroy;
  final List<GetBucketHierarchicalNamespace> hierarchicalNamespaces;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetBucketIpFilter> ipFilters;
  final Map<String, String> labels;
  final List<GetBucketLifecycleRule> lifecycleRules;
  final String location;
  final List<GetBucketLogging> loggings;
  final String name;
  final String? project;
  final int projectNumber;
  final String publicAccessPrevention;
  final Map<String, String> pulumiLabels;
  final bool requesterPays;
  final List<GetBucketRetentionPolicy> retentionPolicies;
  final String rpo;
  final String selfLink;
  final List<GetBucketSoftDeletePolicy> softDeletePolicies;
  final String storageClass;
  final String timeCreated;
  final bool uniformBucketLevelAccess;
  final String updated;
  final String url;
  final List<GetBucketVersioning> versionings;
  final List<GetBucketWebsite> websites;

  /// Creates a new [GetBucketResult].
  /// [autoclasses] Required.
  /// [cors] Required.
  /// [customPlacementConfigs] Required.
  /// [defaultEventBasedHold] Required.
  /// [effectiveLabels] Required.
  /// [enableObjectRetention] Required.
  /// [encryptions] Required.
  /// [forceDestroy] Required.
  /// [hierarchicalNamespaces] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipFilters] Required.
  /// [labels] Required.
  /// [lifecycleRules] Required.
  /// [location] Required.
  /// [loggings] Required.
  /// [name] Required.
  /// [project] Optional.
  /// [projectNumber] Required.
  /// [publicAccessPrevention] Required.
  /// [pulumiLabels] Required.
  /// [requesterPays] Required.
  /// [retentionPolicies] Required.
  /// [rpo] Required.
  /// [selfLink] Required.
  /// [softDeletePolicies] Required.
  /// [storageClass] Required.
  /// [timeCreated] Required.
  /// [uniformBucketLevelAccess] Required.
  /// [updated] Required.
  /// [url] Required.
  /// [versionings] Required.
  /// [websites] Required.
  GetBucketResult({
    required this.autoclasses,
    required this.cors,
    required this.customPlacementConfigs,
    required this.defaultEventBasedHold,
    required this.effectiveLabels,
    required this.enableObjectRetention,
    required this.encryptions,
    required this.forceDestroy,
    required this.hierarchicalNamespaces,
    required this.id,
    required this.ipFilters,
    required this.labels,
    required this.lifecycleRules,
    required this.location,
    required this.loggings,
    required this.name,
    this.project,
    required this.projectNumber,
    required this.publicAccessPrevention,
    required this.pulumiLabels,
    required this.requesterPays,
    required this.retentionPolicies,
    required this.rpo,
    required this.selfLink,
    required this.softDeletePolicies,
    required this.storageClass,
    required this.timeCreated,
    required this.uniformBucketLevelAccess,
    required this.updated,
    required this.url,
    required this.versionings,
    required this.websites,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoclasses':
          pulumi.Input.encodeList<GetBucketAutoclass, Map<String, dynamic>>(
            autoclasses,
            (value) => value.toMap(),
          ),
      'cors': pulumi.Input.encodeList<GetBucketCor, Map<String, dynamic>>(
        cors,
        (value) => value.toMap(),
      ),
      'customPlacementConfigs':
          pulumi.Input.encodeList<
            GetBucketCustomPlacementConfig,
            Map<String, dynamic>
          >(customPlacementConfigs, (value) => value.toMap()),
      'defaultEventBasedHold': defaultEventBasedHold,
      'effectiveLabels': effectiveLabels,
      'enableObjectRetention': enableObjectRetention,
      'encryptions':
          pulumi.Input.encodeList<GetBucketEncryption, Map<String, dynamic>>(
            encryptions,
            (value) => value.toMap(),
          ),
      'forceDestroy': forceDestroy,
      'hierarchicalNamespaces':
          pulumi.Input.encodeList<
            GetBucketHierarchicalNamespace,
            Map<String, dynamic>
          >(hierarchicalNamespaces, (value) => value.toMap()),
      'id': id,
      'ipFilters':
          pulumi.Input.encodeList<GetBucketIpFilter, Map<String, dynamic>>(
            ipFilters,
            (value) => value.toMap(),
          ),
      'labels': labels,
      'lifecycleRules':
          pulumi.Input.encodeList<GetBucketLifecycleRule, Map<String, dynamic>>(
            lifecycleRules,
            (value) => value.toMap(),
          ),
      'location': location,
      'loggings':
          pulumi.Input.encodeList<GetBucketLogging, Map<String, dynamic>>(
            loggings,
            (value) => value.toMap(),
          ),
      'name': name,
      'project': ?project,
      'projectNumber': projectNumber,
      'publicAccessPrevention': publicAccessPrevention,
      'pulumiLabels': pulumiLabels,
      'requesterPays': requesterPays,
      'retentionPolicies':
          pulumi.Input.encodeList<
            GetBucketRetentionPolicy,
            Map<String, dynamic>
          >(retentionPolicies, (value) => value.toMap()),
      'rpo': rpo,
      'selfLink': selfLink,
      'softDeletePolicies':
          pulumi.Input.encodeList<
            GetBucketSoftDeletePolicy,
            Map<String, dynamic>
          >(softDeletePolicies, (value) => value.toMap()),
      'storageClass': storageClass,
      'timeCreated': timeCreated,
      'uniformBucketLevelAccess': uniformBucketLevelAccess,
      'updated': updated,
      'url': url,
      'versionings':
          pulumi.Input.encodeList<GetBucketVersioning, Map<String, dynamic>>(
            versionings,
            (value) => value.toMap(),
          ),
      'websites':
          pulumi.Input.encodeList<GetBucketWebsite, Map<String, dynamic>>(
            websites,
            (value) => value.toMap(),
          ),
    };
  }

  factory GetBucketResult.fromMap(Map<String, dynamic> map) {
    return GetBucketResult(
      autoclasses: pulumi.Input.decodeList<GetBucketAutoclass>(
        map['autoclasses']!,
        (value) =>
            GetBucketAutoclass.fromMap((value as Map).cast<String, dynamic>()),
      ),
      cors: pulumi.Input.decodeList<GetBucketCor>(
        map['cors']!,
        (value) => GetBucketCor.fromMap((value as Map).cast<String, dynamic>()),
      ),
      customPlacementConfigs:
          pulumi.Input.decodeList<GetBucketCustomPlacementConfig>(
            map['customPlacementConfigs']!,
            (value) => GetBucketCustomPlacementConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      defaultEventBasedHold: map['defaultEventBasedHold'] as bool,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      enableObjectRetention: map['enableObjectRetention'] as bool,
      encryptions: pulumi.Input.decodeList<GetBucketEncryption>(
        map['encryptions']!,
        (value) =>
            GetBucketEncryption.fromMap((value as Map).cast<String, dynamic>()),
      ),
      forceDestroy: map['forceDestroy'] as bool,
      hierarchicalNamespaces:
          pulumi.Input.decodeList<GetBucketHierarchicalNamespace>(
            map['hierarchicalNamespaces']!,
            (value) => GetBucketHierarchicalNamespace.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      id: map['id'] as String,
      ipFilters: pulumi.Input.decodeList<GetBucketIpFilter>(
        map['ipFilters']!,
        (value) =>
            GetBucketIpFilter.fromMap((value as Map).cast<String, dynamic>()),
      ),
      labels: (map['labels'] as Map).cast<String, String>(),
      lifecycleRules: pulumi.Input.decodeList<GetBucketLifecycleRule>(
        map['lifecycleRules']!,
        (value) => GetBucketLifecycleRule.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      location: map['location'] as String,
      loggings: pulumi.Input.decodeList<GetBucketLogging>(
        map['loggings']!,
        (value) =>
            GetBucketLogging.fromMap((value as Map).cast<String, dynamic>()),
      ),
      name: map['name'] as String,
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      projectNumber: map['projectNumber'] as int,
      publicAccessPrevention: map['publicAccessPrevention'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      requesterPays: map['requesterPays'] as bool,
      retentionPolicies: pulumi.Input.decodeList<GetBucketRetentionPolicy>(
        map['retentionPolicies']!,
        (value) => GetBucketRetentionPolicy.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      rpo: map['rpo'] as String,
      selfLink: map['selfLink'] as String,
      softDeletePolicies: pulumi.Input.decodeList<GetBucketSoftDeletePolicy>(
        map['softDeletePolicies']!,
        (value) => GetBucketSoftDeletePolicy.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      storageClass: map['storageClass'] as String,
      timeCreated: map['timeCreated'] as String,
      uniformBucketLevelAccess: map['uniformBucketLevelAccess'] as bool,
      updated: map['updated'] as String,
      url: map['url'] as String,
      versionings: pulumi.Input.decodeList<GetBucketVersioning>(
        map['versionings']!,
        (value) =>
            GetBucketVersioning.fromMap((value as Map).cast<String, dynamic>()),
      ),
      websites: pulumi.Input.decodeList<GetBucketWebsite>(
        map['websites']!,
        (value) =>
            GetBucketWebsite.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
