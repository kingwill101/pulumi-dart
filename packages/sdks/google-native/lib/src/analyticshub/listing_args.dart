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
    required pulumi.Output<BigQueryDatasetSource> bigqueryDataset,
    pulumi.Output<List<ListingCategoriesItem>>? categories,
    required pulumi.Output<String> dataExchangeId,
    pulumi.Output<DataProvider>? dataProvider,
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    pulumi.Output<String>? documentation,
    pulumi.Output<String>? icon,
    required pulumi.Output<String> listingId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? primaryContact,
    pulumi.Output<String>? project,
    pulumi.Output<Publisher>? publisher,
    pulumi.Output<String>? requestAccess,
    pulumi.Output<RestrictedExportConfig>? restrictedExportConfig,
  }) :
      bigqueryDataset = pulumi.Input.asInput<BigQueryDatasetSource>(bigqueryDataset),
      categories = pulumi.Input.asOptionalInput<List<ListingCategoriesItem>>(categories),
      dataExchangeId = pulumi.Input.asInput<String>(dataExchangeId),
      dataProvider = pulumi.Input.asOptionalInput<DataProvider>(dataProvider),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      documentation = pulumi.Input.asOptionalInput<String>(documentation),
      icon = pulumi.Input.asOptionalInput<String>(icon),
      listingId = pulumi.Input.asInput<String>(listingId),
      location = pulumi.Input.asOptionalInput<String>(location),
      primaryContact = pulumi.Input.asOptionalInput<String>(primaryContact),
      project = pulumi.Input.asOptionalInput<String>(project),
      publisher = pulumi.Input.asOptionalInput<Publisher>(publisher),
      requestAccess = pulumi.Input.asOptionalInput<String>(requestAccess),
      restrictedExportConfig = pulumi.Input.asOptionalInput<RestrictedExportConfig>(restrictedExportConfig);

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
      bigqueryDataset: pulumi.Output.create<BigQueryDatasetSource>(BigQueryDatasetSource.fromMap((map['bigqueryDataset'] as Map).cast<String, dynamic>())),
      categories: map['categories'] == null ? null : pulumi.Output.create<List<ListingCategoriesItem>>(pulumi.Input.decodeList<ListingCategoriesItem>(map['categories'], (value) => ListingCategoriesItem.fromValue(value as String))),
      dataExchangeId: pulumi.Output.create<String>(map['dataExchangeId'] as String),
      dataProvider: map['dataProvider'] == null ? null : pulumi.Output.create<DataProvider>(DataProvider.fromMap((map['dataProvider'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      documentation: map['documentation'] == null ? null : pulumi.Output.create<String>(map['documentation'] as String),
      icon: map['icon'] == null ? null : pulumi.Output.create<String>(map['icon'] as String),
      listingId: pulumi.Output.create<String>(map['listingId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      primaryContact: map['primaryContact'] == null ? null : pulumi.Output.create<String>(map['primaryContact'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      publisher: map['publisher'] == null ? null : pulumi.Output.create<Publisher>(Publisher.fromMap((map['publisher'] as Map).cast<String, dynamic>())),
      requestAccess: map['requestAccess'] == null ? null : pulumi.Output.create<String>(map['requestAccess'] as String),
      restrictedExportConfig: map['restrictedExportConfig'] == null ? null : pulumi.Output.create<RestrictedExportConfig>(RestrictedExportConfig.fromMap((map['restrictedExportConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

