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
    pulumi.Output<bool>? allowOnlyMetadataSharing,
    pulumi.Output<ListingBigqueryDataset>? bigqueryDataset,
    pulumi.Output<List<String>>? categories,
    pulumi.Output<List<ListingCommercialInfo>>? commercialInfos,
    pulumi.Output<String>? dataExchangeId,
    pulumi.Output<ListingDataProvider>? dataProvider,
    pulumi.Output<bool>? deleteCommercial,
    pulumi.Output<String>? description,
    pulumi.Output<String>? discoveryType,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? documentation,
    pulumi.Output<String>? icon,
    pulumi.Output<String>? listingId,
    pulumi.Output<String>? location,
    pulumi.Output<bool>? logLinkedDatasetQueryUserEmail,
    pulumi.Output<String>? name,
    pulumi.Output<String>? primaryContact,
    pulumi.Output<String>? project,
    pulumi.Output<ListingPublisher>? publisher,
    pulumi.Output<ListingPubsubTopic>? pubsubTopic,
    pulumi.Output<String>? requestAccess,
    pulumi.Output<ListingRestrictedExportConfig>? restrictedExportConfig,
    pulumi.Output<String>? state,
  }) :
      allowOnlyMetadataSharing = pulumi.Input.asOptionalInput<bool>(allowOnlyMetadataSharing),
      bigqueryDataset = pulumi.Input.asOptionalInput<ListingBigqueryDataset>(bigqueryDataset),
      categories = pulumi.Input.asOptionalInput<List<String>>(categories),
      commercialInfos = pulumi.Input.asOptionalInput<List<ListingCommercialInfo>>(commercialInfos),
      dataExchangeId = pulumi.Input.asOptionalInput<String>(dataExchangeId),
      dataProvider = pulumi.Input.asOptionalInput<ListingDataProvider>(dataProvider),
      deleteCommercial = pulumi.Input.asOptionalInput<bool>(deleteCommercial),
      description = pulumi.Input.asOptionalInput<String>(description),
      discoveryType = pulumi.Input.asOptionalInput<String>(discoveryType),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      documentation = pulumi.Input.asOptionalInput<String>(documentation),
      icon = pulumi.Input.asOptionalInput<String>(icon),
      listingId = pulumi.Input.asOptionalInput<String>(listingId),
      location = pulumi.Input.asOptionalInput<String>(location),
      logLinkedDatasetQueryUserEmail = pulumi.Input.asOptionalInput<bool>(logLinkedDatasetQueryUserEmail),
      name = pulumi.Input.asOptionalInput<String>(name),
      primaryContact = pulumi.Input.asOptionalInput<String>(primaryContact),
      project = pulumi.Input.asOptionalInput<String>(project),
      publisher = pulumi.Input.asOptionalInput<ListingPublisher>(publisher),
      pubsubTopic = pulumi.Input.asOptionalInput<ListingPubsubTopic>(pubsubTopic),
      requestAccess = pulumi.Input.asOptionalInput<String>(requestAccess),
      restrictedExportConfig = pulumi.Input.asOptionalInput<ListingRestrictedExportConfig>(restrictedExportConfig),
      state = pulumi.Input.asOptionalInput<String>(state);

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
      allowOnlyMetadataSharing: map['allowOnlyMetadataSharing'] == null ? null : pulumi.Output.create<bool>(map['allowOnlyMetadataSharing'] as bool),
      bigqueryDataset: map['bigqueryDataset'] == null ? null : pulumi.Output.create<ListingBigqueryDataset>(ListingBigqueryDataset.fromMap((map['bigqueryDataset'] as Map).cast<String, dynamic>())),
      categories: map['categories'] == null ? null : pulumi.Output.create<List<String>>((map['categories'] as List).cast<String>()),
      commercialInfos: map['commercialInfos'] == null ? null : pulumi.Output.create<List<ListingCommercialInfo>>(pulumi.Input.decodeList<ListingCommercialInfo>(map['commercialInfos'], (value) => ListingCommercialInfo.fromMap((value as Map).cast<String, dynamic>()))),
      dataExchangeId: map['dataExchangeId'] == null ? null : pulumi.Output.create<String>(map['dataExchangeId'] as String),
      dataProvider: map['dataProvider'] == null ? null : pulumi.Output.create<ListingDataProvider>(ListingDataProvider.fromMap((map['dataProvider'] as Map).cast<String, dynamic>())),
      deleteCommercial: map['deleteCommercial'] == null ? null : pulumi.Output.create<bool>(map['deleteCommercial'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      discoveryType: map['discoveryType'] == null ? null : pulumi.Output.create<String>(map['discoveryType'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      documentation: map['documentation'] == null ? null : pulumi.Output.create<String>(map['documentation'] as String),
      icon: map['icon'] == null ? null : pulumi.Output.create<String>(map['icon'] as String),
      listingId: map['listingId'] == null ? null : pulumi.Output.create<String>(map['listingId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      logLinkedDatasetQueryUserEmail: map['logLinkedDatasetQueryUserEmail'] == null ? null : pulumi.Output.create<bool>(map['logLinkedDatasetQueryUserEmail'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      primaryContact: map['primaryContact'] == null ? null : pulumi.Output.create<String>(map['primaryContact'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      publisher: map['publisher'] == null ? null : pulumi.Output.create<ListingPublisher>(ListingPublisher.fromMap((map['publisher'] as Map).cast<String, dynamic>())),
      pubsubTopic: map['pubsubTopic'] == null ? null : pulumi.Output.create<ListingPubsubTopic>(ListingPubsubTopic.fromMap((map['pubsubTopic'] as Map).cast<String, dynamic>())),
      requestAccess: map['requestAccess'] == null ? null : pulumi.Output.create<String>(map['requestAccess'] as String),
      restrictedExportConfig: map['restrictedExportConfig'] == null ? null : pulumi.Output.create<ListingRestrictedExportConfig>(ListingRestrictedExportConfig.fromMap((map['restrictedExportConfig'] as Map).cast<String, dynamic>())),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
    );
  }
}

