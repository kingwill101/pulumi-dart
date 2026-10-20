// ignore_for_file: unused_element, unnecessary_cast

import 'big_query_dataset_source_response.dart';
import 'data_provider_response.dart';
import 'publisher_response.dart';
import 'restricted_export_config_response.dart';

/// Result data returned by getListing.
class GetListingResult {
  /// Shared dataset i.e. BigQuery dataset source.
  final BigQueryDatasetSourceResponse? bigqueryDataset;
  /// Optional. Categories of the listing. Up to two categories are allowed.
  final List<String>? categories;
  /// Optional. Details of the data provider who owns the source data.
  final DataProviderResponse? dataProvider;
  /// Optional. Short description of the listing. The description must not contain Unicode non-characters and C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF). Default value is an empty string. Max length: 2000 bytes.
  final String? description;
  /// Human-readable display name of the listing. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), ampersands (&) and can't start or end with spaces. Default value is an empty string. Max length: 63 bytes.
  final String? displayName;
  /// Optional. Documentation describing the listing.
  final String? documentation;
  /// Optional. Base64 encoded image representing the listing. Max Size: 3.0MiB Expected image dimensions are 512x512 pixels, however the API only performs validation on size of the encoded data. Note: For byte fields, the contents of the field are base64-encoded (which increases the size of the data by 33-36%) when using JSON on the wire.
  final String? icon;
  /// The resource name of the listing. e.g. `projects/myproject/locations/US/dataExchanges/123/listings/456`
  final String? name;
  /// Optional. Email or URL of the primary point of contact of the listing. Max Length: 1000 bytes.
  final String? primaryContact;
  /// Optional. Details of the publisher who owns the listing and who can share the source data.
  final PublisherResponse? publisher;
  /// Optional. Email or URL of the request access of the listing. Subscribers can use this reference to request access. Max Length: 1000 bytes.
  final String? requestAccess;
  /// Optional. If set, restricted export configuration will be propagated and enforced on the linked dataset.
  final RestrictedExportConfigResponse? restrictedExportConfig;
  /// Current state of the listing.
  final String? state;

  /// Creates a new [GetListingResult].
  /// [bigqueryDataset] Shared dataset i.e. BigQuery dataset source.
  /// [categories] Optional. Categories of the listing. Up to two categories are allowed.
  /// [dataProvider] Optional. Details of the data provider who owns the source data.
  /// [description] Optional. Short description of the listing. The description must not contain Unicode non-characters and C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF). Default value is an empty string. Max length: 2000 bytes.
  /// [displayName] Human-readable display name of the listing. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), ampersands (&) and can't start or end with spaces. Default value is an empty string. Max length: 63 bytes.
  /// [documentation] Optional. Documentation describing the listing.
  /// [icon] Optional. Base64 encoded image representing the listing. Max Size: 3.0MiB Expected image dimensions are 512x512 pixels, however the API only performs validation on size of the encoded data. Note: For byte fields, the contents of the field are base64-encoded (which increases the size of the data by 33-36%) when using JSON on the wire.
  /// [name] The resource name of the listing. e.g. `projects/myproject/locations/US/dataExchanges/123/listings/456`
  /// [primaryContact] Optional. Email or URL of the primary point of contact of the listing. Max Length: 1000 bytes.
  /// [publisher] Optional. Details of the publisher who owns the listing and who can share the source data.
  /// [requestAccess] Optional. Email or URL of the request access of the listing. Subscribers can use this reference to request access. Max Length: 1000 bytes.
  /// [restrictedExportConfig] Optional. If set, restricted export configuration will be propagated and enforced on the linked dataset.
  /// [state] Current state of the listing.
  const GetListingResult({
    this.bigqueryDataset,
    this.categories,
    this.dataProvider,
    this.description,
    this.displayName,
    this.documentation,
    this.icon,
    this.name,
    this.primaryContact,
    this.publisher,
    this.requestAccess,
    this.restrictedExportConfig,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryDataset': ?bigqueryDataset?.toMap(),
      'categories': ?categories,
      'dataProvider': ?dataProvider?.toMap(),
      'description': ?description,
      'displayName': ?displayName,
      'documentation': ?documentation,
      'icon': ?icon,
      'name': ?name,
      'primaryContact': ?primaryContact,
      'publisher': ?publisher?.toMap(),
      'requestAccess': ?requestAccess,
      'restrictedExportConfig': ?restrictedExportConfig?.toMap(),
      'state': ?state,
    };
  }

  factory GetListingResult.fromMap(Map<String, dynamic> map) {
    return GetListingResult(
      bigqueryDataset: (() { final guardedValue = map['bigqueryDataset']; if (guardedValue == null) return null; return BigQueryDatasetSourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      categories: (() { final guardedValue = map['categories']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      dataProvider: (() { final guardedValue = map['dataProvider']; if (guardedValue == null) return null; return DataProviderResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      documentation: (() { final guardedValue = map['documentation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      icon: (() { final guardedValue = map['icon']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryContact: (() { final guardedValue = map['primaryContact']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publisher: (() { final guardedValue = map['publisher']; if (guardedValue == null) return null; return PublisherResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      requestAccess: (() { final guardedValue = map['requestAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      restrictedExportConfig: (() { final guardedValue = map['restrictedExportConfig']; if (guardedValue == null) return null; return RestrictedExportConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
