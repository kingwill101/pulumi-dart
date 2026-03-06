// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'big_query_dataset_source_analyticshub_v1beta1.dart';
import 'data_provider_analyticshub_v1beta1.dart';
import 'listing_categories_item_analyticshub_v1beta1.dart';
import 'publisher_analyticshub_v1beta1.dart';
import 'restricted_export_config_analyticshub_v1beta1.dart';

/// {@template pulumi_analyticshub_v1beta1_listing_analyticshub_v1beta1_args_doc}
/// The set of arguments for Listing.
/// {@endtemplate}
/// {@macro pulumi_analyticshub_v1beta1_listing_analyticshub_v1beta1_args_doc}
class ListingAnalyticshubV1beta1Args {
  /// Shared dataset i.e. BigQuery dataset source.
  final pulumi.Input<BigQueryDatasetSourceAnalyticshubV1beta1> bigqueryDataset;
  /// Optional. Categories of the listing. Up to two categories are allowed.
  final pulumi.Input<List<ListingCategoriesItemAnalyticshubV1beta1>>? categories;
  final pulumi.Input<String> dataExchangeId;
  /// Optional. Details of the data provider who owns the source data.
  final pulumi.Input<DataProviderAnalyticshubV1beta1>? dataProvider;
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
  final pulumi.Input<PublisherAnalyticshubV1beta1>? publisher;
  /// Optional. Email or URL of the request access of the listing. Subscribers can use this reference to request access. Max Length: 1000 bytes.
  final pulumi.Input<String>? requestAccess;
  /// Optional. If set, restricted export configuration will be propagated and enforced on the linked dataset.
  final pulumi.Input<RestrictedExportConfigAnalyticshubV1beta1>? restrictedExportConfig;

  /// Creates a new [ListingAnalyticshubV1beta1Args].
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
  const ListingAnalyticshubV1beta1Args({
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
      'bigqueryDataset': pulumi.Input.mapInputValue<BigQueryDatasetSourceAnalyticshubV1beta1, Map<String, dynamic>>(bigqueryDataset, (value) => value.toMap()),
      'categories': ?pulumi.Input.mapOptionalInputValue<List<ListingCategoriesItemAnalyticshubV1beta1>, List<String>>(categories, (value) => pulumi.Input.encodeList<ListingCategoriesItemAnalyticshubV1beta1, String>(value, (value) => value.wireValue)),
      'dataExchangeId': dataExchangeId,
      'dataProvider': ?pulumi.Input.mapOptionalInputValue<DataProviderAnalyticshubV1beta1, Map<String, dynamic>>(dataProvider, (value) => value.toMap()),
      'description': ?description,
      'displayName': displayName,
      'documentation': ?documentation,
      'icon': ?icon,
      'listingId': listingId,
      'location': ?location,
      'primaryContact': ?primaryContact,
      'project': ?project,
      'publisher': ?pulumi.Input.mapOptionalInputValue<PublisherAnalyticshubV1beta1, Map<String, dynamic>>(publisher, (value) => value.toMap()),
      'requestAccess': ?requestAccess,
      'restrictedExportConfig': ?pulumi.Input.mapOptionalInputValue<RestrictedExportConfigAnalyticshubV1beta1, Map<String, dynamic>>(restrictedExportConfig, (value) => value.toMap()),
    };
  }

  factory ListingAnalyticshubV1beta1Args.fromMap(Map<String, dynamic> map) {
    return ListingAnalyticshubV1beta1Args(
      bigqueryDataset: pulumi.Input.fromValue(BigQueryDatasetSourceAnalyticshubV1beta1.fromMap((map['bigqueryDataset']! as Map).cast<String, dynamic>())),
      categories: (() { final guardedValue = map['categories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ListingCategoriesItemAnalyticshubV1beta1>(guardedValue, (value) => ListingCategoriesItemAnalyticshubV1beta1.fromValue(value as String))); })(),
      dataExchangeId: pulumi.Input.fromValue(map['dataExchangeId'] as String),
      dataProvider: (() { final guardedValue = map['dataProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataProviderAnalyticshubV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      documentation: (() { final guardedValue = map['documentation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      icon: (() { final guardedValue = map['icon']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      listingId: pulumi.Input.fromValue(map['listingId'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryContact: (() { final guardedValue = map['primaryContact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publisher: (() { final guardedValue = map['publisher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PublisherAnalyticshubV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requestAccess: (() { final guardedValue = map['requestAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restrictedExportConfig: (() { final guardedValue = map['restrictedExportConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RestrictedExportConfigAnalyticshubV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

