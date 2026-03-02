// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listing_bigquery_dataset.dart';
import 'listing_commercial_info.dart';
import 'listing_data_provider.dart';
import 'listing_publisher.dart';
import 'listing_pubsub_topic.dart';
import 'listing_restricted_export_config.dart';

/// Input properties used for looking up and filtering Listing resources.
class ListingState {
  /// If true, the listing is only available to get the resource metadata. Listing is non subscribable.
  final pulumi.Input<bool>? allowOnlyMetadataSharing;
  /// Shared dataset i.e. BigQuery dataset source.
  /// Structure is documented below.
  final pulumi.Input<ListingBigqueryDataset>? bigqueryDataset;
  /// Categories of the listing. Up to two categories are allowed.
  final pulumi.Input<List<String>>? categories;
  /// Commercial info contains the information about the commercial data products associated with the listing.
  /// Structure is documented below.
  final pulumi.Input<List<ListingCommercialInfo>>? commercialInfos;
  /// The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  final pulumi.Input<String>? dataExchangeId;
  /// Details of the data provider who owns the source data.
  /// Structure is documented below.
  final pulumi.Input<ListingDataProvider>? dataProvider;
  /// If the listing is commercial then this field must be set to true, otherwise a failure is thrown. This acts as a safety guard to avoid deleting commercial listings accidentally.
  final pulumi.Input<bool>? deleteCommercial;
  /// Short description of the listing. The description must not contain Unicode non-characters and C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF).
  final pulumi.Input<String>? description;
  /// Specifies the type of discovery on the discovery page. Cannot be set for a restricted listing. Note that this does not control the visibility of the exchange/listing which is defined by IAM permission.
  /// Possible values are: `DISCOVERY_TYPE_PRIVATE`, `DISCOVERY_TYPE_PUBLIC`.
  final pulumi.Input<String>? discoveryType;
  /// Human-readable display name of the listing. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), ampersands (&) and can't start or end with spaces.
  final pulumi.Input<String>? displayName;
  /// Documentation describing the listing.
  final pulumi.Input<String>? documentation;
  /// Base64 encoded image representing the listing.
  final pulumi.Input<String>? icon;
  /// The ID of the listing. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  final pulumi.Input<String>? listingId;
  /// The name of the location this data exchange listing.
  final pulumi.Input<String>? location;
  /// If true, subscriber email logging is enabled and all queries on the linked dataset will log the email address of the querying user. Once enabled, this setting cannot be turned off.
  final pulumi.Input<bool>? logLinkedDatasetQueryUserEmail;
  /// The resource name of the listing. e.g. "projects/myproject/locations/US/dataExchanges/123/listings/456"
  final pulumi.Input<String>? name;
  /// Email or URL of the primary point of contact of the listing.
  final pulumi.Input<String>? primaryContact;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Details of the publisher who owns the listing and who can share the source data.
  /// Structure is documented below.
  final pulumi.Input<ListingPublisher>? publisher;
  /// Pub/Sub topic source.
  /// Structure is documented below.
  final pulumi.Input<ListingPubsubTopic>? pubsubTopic;
  /// Email or URL of the request access of the listing. Subscribers can use this reference to request access.
  final pulumi.Input<String>? requestAccess;
  /// If set, restricted export configuration will be propagated and enforced on the linked dataset.
  /// Structure is documented below.
  final pulumi.Input<ListingRestrictedExportConfig>? restrictedExportConfig;
  /// Current state of the listing.
  final pulumi.Input<String>? state;

  /// Creates a new [ListingState].
  /// [allowOnlyMetadataSharing] If true, the listing is only available to get the resource metadata. Listing is non subscribable.
  /// [bigqueryDataset] Shared dataset i.e. BigQuery dataset source.
  /// [categories] Categories of the listing. Up to two categories are allowed.
  /// [commercialInfos] Commercial info contains the information about the commercial data products associated with the listing.
  /// [dataExchangeId] The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  /// [dataProvider] Details of the data provider who owns the source data.
  /// [deleteCommercial] If the listing is commercial then this field must be set to true, otherwise a failure is thrown. This acts as a safety guard to avoid deleting commercial listings accidentally.
  /// [description] Short description of the listing. The description must not contain Unicode non-characters and C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF).
  /// [discoveryType] Specifies the type of discovery on the discovery page. Cannot be set for a restricted listing. Note that this does not control the visibility of the exchange/listing which is defined by IAM permission.
  /// [displayName] Human-readable display name of the listing. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), ampersands (&) and can't start or end with spaces.
  /// [documentation] Documentation describing the listing.
  /// [icon] Base64 encoded image representing the listing.
  /// [listingId] The ID of the listing. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  /// [location] The name of the location this data exchange listing.
  /// [logLinkedDatasetQueryUserEmail] If true, subscriber email logging is enabled and all queries on the linked dataset will log the email address of the querying user. Once enabled, this setting cannot be turned off.
  /// [name] The resource name of the listing. e.g. "projects/myproject/locations/US/dataExchanges/123/listings/456"
  /// [primaryContact] Email or URL of the primary point of contact of the listing.
  /// [project] The ID of the project in which the resource belongs.
  /// [publisher] Details of the publisher who owns the listing and who can share the source data.
  /// [pubsubTopic] Pub/Sub topic source.
  /// [requestAccess] Email or URL of the request access of the listing. Subscribers can use this reference to request access.
  /// [restrictedExportConfig] If set, restricted export configuration will be propagated and enforced on the linked dataset.
  /// [state] Current state of the listing.
  ListingState({
    this.allowOnlyMetadataSharing,
    this.bigqueryDataset,
    this.categories,
    this.commercialInfos,
    this.dataExchangeId,
    this.dataProvider,
    this.deleteCommercial,
    this.description,
    this.discoveryType,
    this.displayName,
    this.documentation,
    this.icon,
    this.listingId,
    this.location,
    this.logLinkedDatasetQueryUserEmail,
    this.name,
    this.primaryContact,
    this.project,
    this.publisher,
    this.pubsubTopic,
    this.requestAccess,
    this.restrictedExportConfig,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowOnlyMetadataSharing': ?allowOnlyMetadataSharing,
      'bigqueryDataset': ?pulumi.Input.mapOptionalInputValue<ListingBigqueryDataset, Map<String, dynamic>>(bigqueryDataset, (value) => value.toMap()),
      'categories': ?categories,
      'commercialInfos': ?pulumi.Input.mapOptionalInputValue<List<ListingCommercialInfo>, List<Map<String, dynamic>>>(commercialInfos, (value) => pulumi.Input.encodeList<ListingCommercialInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataExchangeId': ?dataExchangeId,
      'dataProvider': ?pulumi.Input.mapOptionalInputValue<ListingDataProvider, Map<String, dynamic>>(dataProvider, (value) => value.toMap()),
      'deleteCommercial': ?deleteCommercial,
      'description': ?description,
      'discoveryType': ?discoveryType,
      'displayName': ?displayName,
      'documentation': ?documentation,
      'icon': ?icon,
      'listingId': ?listingId,
      'location': ?location,
      'logLinkedDatasetQueryUserEmail': ?logLinkedDatasetQueryUserEmail,
      'name': ?name,
      'primaryContact': ?primaryContact,
      'project': ?project,
      'publisher': ?pulumi.Input.mapOptionalInputValue<ListingPublisher, Map<String, dynamic>>(publisher, (value) => value.toMap()),
      'pubsubTopic': ?pulumi.Input.mapOptionalInputValue<ListingPubsubTopic, Map<String, dynamic>>(pubsubTopic, (value) => value.toMap()),
      'requestAccess': ?requestAccess,
      'restrictedExportConfig': ?pulumi.Input.mapOptionalInputValue<ListingRestrictedExportConfig, Map<String, dynamic>>(restrictedExportConfig, (value) => value.toMap()),
      'state': ?state,
    };
  }

  factory ListingState.fromMap(Map<String, dynamic> map) {
    return ListingState(
      allowOnlyMetadataSharing: map['allowOnlyMetadataSharing'] == null ? null : (map['allowOnlyMetadataSharing'] as bool).input(),
      bigqueryDataset: map['bigqueryDataset'] == null ? null : (ListingBigqueryDataset.fromMap((map['bigqueryDataset'] as Map).cast<String, dynamic>())).input(),
      categories: map['categories'] == null ? null : ((map['categories'] as List).cast<String>()).input(),
      commercialInfos: map['commercialInfos'] == null ? null : (pulumi.Input.decodeList<ListingCommercialInfo>(map['commercialInfos'], (value) => ListingCommercialInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dataExchangeId: map['dataExchangeId'] == null ? null : (map['dataExchangeId'] as String).input(),
      dataProvider: map['dataProvider'] == null ? null : (ListingDataProvider.fromMap((map['dataProvider'] as Map).cast<String, dynamic>())).input(),
      deleteCommercial: map['deleteCommercial'] == null ? null : (map['deleteCommercial'] as bool).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      discoveryType: map['discoveryType'] == null ? null : (map['discoveryType'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      documentation: map['documentation'] == null ? null : (map['documentation'] as String).input(),
      icon: map['icon'] == null ? null : (map['icon'] as String).input(),
      listingId: map['listingId'] == null ? null : (map['listingId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      logLinkedDatasetQueryUserEmail: map['logLinkedDatasetQueryUserEmail'] == null ? null : (map['logLinkedDatasetQueryUserEmail'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      primaryContact: map['primaryContact'] == null ? null : (map['primaryContact'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      publisher: map['publisher'] == null ? null : (ListingPublisher.fromMap((map['publisher'] as Map).cast<String, dynamic>())).input(),
      pubsubTopic: map['pubsubTopic'] == null ? null : (ListingPubsubTopic.fromMap((map['pubsubTopic'] as Map).cast<String, dynamic>())).input(),
      requestAccess: map['requestAccess'] == null ? null : (map['requestAccess'] as String).input(),
      restrictedExportConfig: map['restrictedExportConfig'] == null ? null : (ListingRestrictedExportConfig.fromMap((map['restrictedExportConfig'] as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
    );
  }
}

