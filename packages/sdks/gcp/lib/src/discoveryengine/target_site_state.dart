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
    pulumi.Output<String>? dataStoreId,
    pulumi.Output<bool>? exactMatch,
    pulumi.Output<List<TargetSiteFailureReason>>? failureReasons,
    pulumi.Output<String>? generatedUriPattern,
    pulumi.Output<String>? indexingStatus,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? providedUriPattern,
    pulumi.Output<String>? rootDomainUri,
    pulumi.Output<List<TargetSiteSiteVerificationInfo>>? siteVerificationInfos,
    pulumi.Output<String>? targetSiteId,
    pulumi.Output<String>? type,
    pulumi.Output<String>? updateTime,
  }) :
      dataStoreId = pulumi.Input.asOptionalInput<String>(dataStoreId),
      exactMatch = pulumi.Input.asOptionalInput<bool>(exactMatch),
      failureReasons = pulumi.Input.asOptionalInput<List<TargetSiteFailureReason>>(failureReasons),
      generatedUriPattern = pulumi.Input.asOptionalInput<String>(generatedUriPattern),
      indexingStatus = pulumi.Input.asOptionalInput<String>(indexingStatus),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      providedUriPattern = pulumi.Input.asOptionalInput<String>(providedUriPattern),
      rootDomainUri = pulumi.Input.asOptionalInput<String>(rootDomainUri),
      siteVerificationInfos = pulumi.Input.asOptionalInput<List<TargetSiteSiteVerificationInfo>>(siteVerificationInfos),
      targetSiteId = pulumi.Input.asOptionalInput<String>(targetSiteId),
      type = pulumi.Input.asOptionalInput<String>(type),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      dataStoreId: map['dataStoreId'] == null ? null : pulumi.Output.create<String>(map['dataStoreId'] as String),
      exactMatch: map['exactMatch'] == null ? null : pulumi.Output.create<bool>(map['exactMatch'] as bool),
      failureReasons: map['failureReasons'] == null ? null : pulumi.Output.create<List<TargetSiteFailureReason>>(pulumi.Input.decodeList<TargetSiteFailureReason>(map['failureReasons'], (value) => TargetSiteFailureReason.fromMap((value as Map).cast<String, dynamic>()))),
      generatedUriPattern: map['generatedUriPattern'] == null ? null : pulumi.Output.create<String>(map['generatedUriPattern'] as String),
      indexingStatus: map['indexingStatus'] == null ? null : pulumi.Output.create<String>(map['indexingStatus'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      providedUriPattern: map['providedUriPattern'] == null ? null : pulumi.Output.create<String>(map['providedUriPattern'] as String),
      rootDomainUri: map['rootDomainUri'] == null ? null : pulumi.Output.create<String>(map['rootDomainUri'] as String),
      siteVerificationInfos: map['siteVerificationInfos'] == null ? null : pulumi.Output.create<List<TargetSiteSiteVerificationInfo>>(pulumi.Input.decodeList<TargetSiteSiteVerificationInfo>(map['siteVerificationInfos'], (value) => TargetSiteSiteVerificationInfo.fromMap((value as Map).cast<String, dynamic>()))),
      targetSiteId: map['targetSiteId'] == null ? null : pulumi.Output.create<String>(map['targetSiteId'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

