// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_restriction_response.dart';
import 'facet_options_response.dart';
import 'query_interpretation_config_response.dart';
import 'scoring_config_response.dart';
import 'sort_options_response.dart';
import 'source_config_response.dart';

/// Result data returned by getSearchApplication.
class GetSearchApplicationResult {
  /// Retrictions applied to the configurations. The maximum number of elements is 10.
  final List<DataSourceRestrictionResponse> dataSourceRestrictions;
  /// The default fields for returning facet results. The sources specified here also have been included in data_source_restrictions above.
  final List<FacetOptionsResponse> defaultFacetOptions;
  /// The default options for sorting the search results
  final SortOptionsResponse defaultSortOptions;
  /// Display name of the Search Application. The maximum length is 300 characters.
  final String displayName;
  /// Indicates whether audit logging is on/off for requests made for the search application in query APIs.
  final bool enableAuditLog;
  /// The name of the Search Application. Format: searchapplications/{application_id}.
  final String name;
  /// IDs of the Long Running Operations (LROs) currently running for this schema. Output only field.
  final List<String> operationIds;
  /// The default options for query interpretation
  final QueryInterpretationConfigResponse queryInterpretationConfig;
  /// With each result we should return the URI for its thumbnail (when applicable)
  final bool returnResultThumbnailUrls;
  /// Configuration for ranking results.
  final ScoringConfigResponse scoringConfig;
  /// Configuration for a sources specified in data_source_restrictions.
  final List<SourceConfigResponse> sourceConfig;

  /// Creates a new [GetSearchApplicationResult].
  /// [dataSourceRestrictions] Retrictions applied to the configurations. The maximum number of elements is 10.
  /// [defaultFacetOptions] The default fields for returning facet results. The sources specified here also have been included in data_source_restrictions above.
  /// [defaultSortOptions] The default options for sorting the search results
  /// [displayName] Display name of the Search Application. The maximum length is 300 characters.
  /// [enableAuditLog] Indicates whether audit logging is on/off for requests made for the search application in query APIs.
  /// [name] The name of the Search Application. Format: searchapplications/{application_id}.
  /// [operationIds] IDs of the Long Running Operations (LROs) currently running for this schema. Output only field.
  /// [queryInterpretationConfig] The default options for query interpretation
  /// [returnResultThumbnailUrls] With each result we should return the URI for its thumbnail (when applicable)
  /// [scoringConfig] Configuration for ranking results.
  /// [sourceConfig] Configuration for a sources specified in data_source_restrictions.
  const GetSearchApplicationResult({
    required this.dataSourceRestrictions,
    required this.defaultFacetOptions,
    required this.defaultSortOptions,
    required this.displayName,
    required this.enableAuditLog,
    required this.name,
    required this.operationIds,
    required this.queryInterpretationConfig,
    required this.returnResultThumbnailUrls,
    required this.scoringConfig,
    required this.sourceConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceRestrictions': pulumi.Input.encodeList<DataSourceRestrictionResponse, Map<String, dynamic>>(dataSourceRestrictions, (value) => value.toMap()),
      'defaultFacetOptions': pulumi.Input.encodeList<FacetOptionsResponse, Map<String, dynamic>>(defaultFacetOptions, (value) => value.toMap()),
      'defaultSortOptions': defaultSortOptions.toMap(),
      'displayName': displayName,
      'enableAuditLog': enableAuditLog,
      'name': name,
      'operationIds': operationIds,
      'queryInterpretationConfig': queryInterpretationConfig.toMap(),
      'returnResultThumbnailUrls': returnResultThumbnailUrls,
      'scoringConfig': scoringConfig.toMap(),
      'sourceConfig': pulumi.Input.encodeList<SourceConfigResponse, Map<String, dynamic>>(sourceConfig, (value) => value.toMap()),
    };
  }

  factory GetSearchApplicationResult.fromMap(Map<String, dynamic> map) {
    return GetSearchApplicationResult(
      dataSourceRestrictions: pulumi.Input.decodeList<DataSourceRestrictionResponse>(map['dataSourceRestrictions']!, (value) => DataSourceRestrictionResponse.fromMap((value as Map).cast<String, dynamic>())),
      defaultFacetOptions: pulumi.Input.decodeList<FacetOptionsResponse>(map['defaultFacetOptions']!, (value) => FacetOptionsResponse.fromMap((value as Map).cast<String, dynamic>())),
      defaultSortOptions: SortOptionsResponse.fromMap((map['defaultSortOptions']! as Map).cast<String, dynamic>()),
      displayName: map['displayName'] as String,
      enableAuditLog: map['enableAuditLog'] as bool,
      name: map['name'] as String,
      operationIds: (map['operationIds'] as List).cast<String>(),
      queryInterpretationConfig: QueryInterpretationConfigResponse.fromMap((map['queryInterpretationConfig']! as Map).cast<String, dynamic>()),
      returnResultThumbnailUrls: map['returnResultThumbnailUrls'] as bool,
      scoringConfig: ScoringConfigResponse.fromMap((map['scoringConfig']! as Map).cast<String, dynamic>()),
      sourceConfig: pulumi.Input.decodeList<SourceConfigResponse>(map['sourceConfig']!, (value) => SourceConfigResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

