// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'big_query_dataset_source.dart';
import 'data_provider.dart';
import 'listing_categories_item.dart';
import 'publisher.dart';
import 'restricted_export_config.dart';

/// {@template pulumi_analyticshub_v1_listing_args_doc}
/// The set of arguments for Listing.
/// {@endtemplate}
/// {@macro pulumi_analyticshub_v1_listing_args_doc}
class ListingArgs {
  /// Shared dataset i.e. BigQuery dataset source.
  final pulumi.Input<BigQueryDatasetSource> bigqueryDataset;
  /// Optional. Categories of the listing. Up to two categories are allowed.
  final pulumi.Input<List<ListingCategoriesItem>>? categories;
  final pulumi.Input<String> dataExchangeId;
  /// Optional. Details of the data provider who owns the source data.
  final pulumi.Input<DataProvider>? dataProvider;
  /// Optional. Short description of the listing. The description must not contain Unicode non-characters and C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF). Default value is an empty string. Max length: 2000 bytes.
  final pulumi.Input<String>? description;
  /// Human-readable display name of the listing. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), ampersands (&) and can't start or end with spaces. Default value is an empty string. Max length: 63 bytes.
  final pulumi.Input<String> displayName;
  /// Optional. Documentation describing the listing.
  final pulumi.Input<String>? documentation;
  /// Optional. Base64 encoded image representing the listing. Max Size: 3.0MiB Expected image dimensions are 512x512 pixels, however the API only performs validation on size of the encoded data. Note: For byte fields, the contents of the field are base64-encoded (which increases the size of the data by 33-36%) when using JSON on the wire.
  final pulumi.Input<String>? icon;
  /// Required. The ID of the listing to create. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces. Max length: 100 bytes.
  final pulumi.Input<String> listingId;
  final pulumi.Input<String>? location;
  /// Optional. Email or URL of the primary point of contact of the listing. Max Length: 1000 bytes.
  final pulumi.Input<String>? primaryContact;
  final pulumi.Input<String>? project;
  /// Optional. Details of the publisher who owns the listing and who can share the source data.
  final pulumi.Input<Publisher>? publisher;
  /// Optional. Email or URL of the request access of the listing. Subscribers can use this reference to request access. Max Length: 1000 bytes.
  final pulumi.Input<String>? requestAccess;
  /// Optional. If set, restricted export configuration will be propagated and enforced on the linked dataset.
  final pulumi.Input<RestrictedExportConfig>? restrictedExportConfig;

  /// Creates a new [ListingArgs].
  /// [bigqueryDataset] Shared dataset i.e. BigQuery dataset source.
  /// [categories] Optional. Categories of the listing. Up to two categories are allowed.
  /// [dataExchangeId] Required.
  /// [dataProvider] Optional. Details of the data provider who owns the source data.
  /// [description] Optional. Short description of the listing. The description must not contain Unicode non-characters and C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF). Default value is an empty string. Max length: 2000 bytes.
  /// [displayName] Human-readable display name of the listing. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), ampersands (&) and can't start or end with spaces. Default value is an empty string. Max length: 63 bytes.
  /// [documentation] Optional. Documentation describing the listing.
  /// [icon] Optional. Base64 encoded image representing the listing. Max Size: 3.0MiB Expected image dimensions are 512x512 pixels, however the API only performs validation on size of the encoded data. Note: For byte fields, the contents of the field are base64-encoded (which increases the size of the data by 33-36%) when using JSON on the wire.
  /// [listingId] Required. The ID of the listing to create. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces. Max length: 100 bytes.
  /// [location] Optional.
  /// [primaryContact] Optional. Email or URL of the primary point of contact of the listing. Max Length: 1000 bytes.
  /// [project] Optional.
  /// [publisher] Optional. Details of the publisher who owns the listing and who can share the source data.
  /// [requestAccess] Optional. Email or URL of the request access of the listing. Subscribers can use this reference to request access. Max Length: 1000 bytes.
  /// [restrictedExportConfig] Optional. If set, restricted export configuration will be propagated and enforced on the linked dataset.
  ListingArgs({
    required this.bigqueryDataset,
    this.categories,
    required this.dataExchangeId,
    this.dataProvider,
    this.description,
    required this.displayName,
    this.documentation,
    this.icon,
    required this.listingId,
    this.location,
    this.primaryContact,
    this.project,
    this.publisher,
    this.requestAccess,
    this.restrictedExportConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryDataset': pulumi.Input.mapInputValue<BigQueryDatasetSource, Map<String, dynamic>>(bigqueryDataset, (value) => value.toMap()),
      'categories': ?pulumi.Input.mapOptionalInputValue<List<ListingCategoriesItem>, List<String>>(categories, (value) => pulumi.Input.encodeList<ListingCategoriesItem, String>(value, (value) => value.value)),
      'dataExchangeId': dataExchangeId,
      'dataProvider': ?pulumi.Input.mapOptionalInputValue<DataProvider, Map<String, dynamic>>(dataProvider, (value) => value.toMap()),
      'description': ?description,
      'displayName': displayName,
      'documentation': ?documentation,
      'icon': ?icon,
      'listingId': listingId,
      'location': ?location,
      'primaryContact': ?primaryContact,
      'project': ?project,
      'publisher': ?pulumi.Input.mapOptionalInputValue<Publisher, Map<String, dynamic>>(publisher, (value) => value.toMap()),
      'requestAccess': ?requestAccess,
      'restrictedExportConfig': ?pulumi.Input.mapOptionalInputValue<RestrictedExportConfig, Map<String, dynamic>>(restrictedExportConfig, (value) => value.toMap()),
    };
  }

  factory ListingArgs.fromMap(Map<String, dynamic> map) {
    return ListingArgs(
      bigqueryDataset: (BigQueryDatasetSource.fromMap((map['bigqueryDataset'] as Map).cast<String, dynamic>())).input(),
      categories: map['categories'] == null ? null : (pulumi.Input.decodeList<ListingCategoriesItem>(map['categories']!, (value) => ListingCategoriesItem.fromValue(value as String))).input(),
      dataExchangeId: (map['dataExchangeId'] as String).input(),
      dataProvider: map['dataProvider'] == null ? null : (DataProvider.fromMap((map['dataProvider']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: (map['displayName'] as String).input(),
      documentation: map['documentation'] == null ? null : (map['documentation']! as String).input(),
      icon: map['icon'] == null ? null : (map['icon']! as String).input(),
      listingId: (map['listingId'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      primaryContact: map['primaryContact'] == null ? null : (map['primaryContact']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      publisher: map['publisher'] == null ? null : (Publisher.fromMap((map['publisher']! as Map).cast<String, dynamic>())).input(),
      requestAccess: map['requestAccess'] == null ? null : (map['requestAccess']! as String).input(),
      restrictedExportConfig: map['restrictedExportConfig'] == null ? null : (RestrictedExportConfig.fromMap((map['restrictedExportConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

