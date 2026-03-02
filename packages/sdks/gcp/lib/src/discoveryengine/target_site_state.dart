// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_site_failure_reason.dart';
import 'target_site_site_verification_info.dart';

/// Input properties used for looking up and filtering TargetSite resources.
class TargetSiteState {
  /// The unique id of the data store.
  final pulumi.Input<String>? dataStoreId;
  /// If set to false, a uri_pattern is generated to include all pages whose
  /// address contains the provided_uri_pattern. If set to true, an uri_pattern
  /// is generated to try to be an exact match of the provided_uri_pattern or
  /// just the specific page if the provided_uri_pattern is a specific one.
  /// provided_uri_pattern is always normalized to generate the URI pattern to
  /// be used by the search engine.
  final pulumi.Input<bool>? exactMatch;
  /// Site search indexing failure reasons.
  /// Structure is documented below.
  final pulumi.Input<List<TargetSiteFailureReason>>? failureReasons;
  /// This is system-generated based on the `provided_uri_pattern`.
  final pulumi.Input<String>? generatedUriPattern;
  /// The indexing status.
  final pulumi.Input<String>? indexingStatus;
  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final pulumi.Input<String>? location;
  /// The unique full resource name of the target site. Values are of the format
  /// `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}/siteSearchEngine/targetSites/{target_site_id}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024
  /// characters.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The user provided URI pattern from which the `generated_uri_pattern` is
  /// generated.
  final pulumi.Input<String>? providedUriPattern;
  /// Root domain of the `provided_uri_pattern`.
  final pulumi.Input<String>? rootDomainUri;
  /// Site ownership and validity verification status.
  /// Structure is documented below.
  final pulumi.Input<List<TargetSiteSiteVerificationInfo>>? siteVerificationInfos;
  /// The unique id of the target site.
  final pulumi.Input<String>? targetSiteId;
  /// The possible target site types.
  /// Possible values are: `INCLUDE`, `EXCLUDE`.
  final pulumi.Input<String>? type;
  /// The target site's last updated time.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [TargetSiteState].
  /// [dataStoreId] The unique id of the data store.
  /// [exactMatch] If set to false, a uri_pattern is generated to include all pages whose
  /// [failureReasons] Site search indexing failure reasons.
  /// [generatedUriPattern] This is system-generated based on the `provided_uri_pattern`.
  /// [indexingStatus] The indexing status.
  /// [location] The geographic location where the data store should reside. The value can
  /// [name] The unique full resource name of the target site. Values are of the format
  /// [project] The ID of the project in which the resource belongs.
  /// [providedUriPattern] The user provided URI pattern from which the `generated_uri_pattern` is
  /// [rootDomainUri] Root domain of the `provided_uri_pattern`.
  /// [siteVerificationInfos] Site ownership and validity verification status.
  /// [targetSiteId] The unique id of the target site.
  /// [type] The possible target site types.
  /// [updateTime] The target site's last updated time.
  TargetSiteState({
    this.dataStoreId,
    this.exactMatch,
    this.failureReasons,
    this.generatedUriPattern,
    this.indexingStatus,
    this.location,
    this.name,
    this.project,
    this.providedUriPattern,
    this.rootDomainUri,
    this.siteVerificationInfos,
    this.targetSiteId,
    this.type,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStoreId': ?dataStoreId,
      'exactMatch': ?exactMatch,
      'failureReasons': ?pulumi.Input.mapOptionalInputValue<List<TargetSiteFailureReason>, List<Map<String, dynamic>>>(failureReasons, (value) => pulumi.Input.encodeList<TargetSiteFailureReason, Map<String, dynamic>>(value, (value) => value.toMap())),
      'generatedUriPattern': ?generatedUriPattern,
      'indexingStatus': ?indexingStatus,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'providedUriPattern': ?providedUriPattern,
      'rootDomainUri': ?rootDomainUri,
      'siteVerificationInfos': ?pulumi.Input.mapOptionalInputValue<List<TargetSiteSiteVerificationInfo>, List<Map<String, dynamic>>>(siteVerificationInfos, (value) => pulumi.Input.encodeList<TargetSiteSiteVerificationInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetSiteId': ?targetSiteId,
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }

  factory TargetSiteState.fromMap(Map<String, dynamic> map) {
    return TargetSiteState(
      dataStoreId: map['dataStoreId'] == null ? null : (map['dataStoreId']! as String).input(),
      exactMatch: map['exactMatch'] == null ? null : (map['exactMatch']! as bool).input(),
      failureReasons: map['failureReasons'] == null ? null : (pulumi.Input.decodeList<TargetSiteFailureReason>(map['failureReasons']!, (value) => TargetSiteFailureReason.fromMap((value as Map).cast<String, dynamic>()))).input(),
      generatedUriPattern: map['generatedUriPattern'] == null ? null : (map['generatedUriPattern']! as String).input(),
      indexingStatus: map['indexingStatus'] == null ? null : (map['indexingStatus']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      providedUriPattern: map['providedUriPattern'] == null ? null : (map['providedUriPattern']! as String).input(),
      rootDomainUri: map['rootDomainUri'] == null ? null : (map['rootDomainUri']! as String).input(),
      siteVerificationInfos: map['siteVerificationInfos'] == null ? null : (pulumi.Input.decodeList<TargetSiteSiteVerificationInfo>(map['siteVerificationInfos']!, (value) => TargetSiteSiteVerificationInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      targetSiteId: map['targetSiteId'] == null ? null : (map['targetSiteId']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

