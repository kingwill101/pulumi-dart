// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_restriction.dart';
import 'facet_options.dart';
import 'query_interpretation_config.dart';
import 'scoring_config.dart';
import 'sort_options.dart';
import 'source_config.dart';

/// {@template pulumi_cloudsearch_v1_search_application_args_doc}
/// The set of arguments for SearchApplication.
/// {@endtemplate}
/// {@macro pulumi_cloudsearch_v1_search_application_args_doc}
class SearchApplicationArgs {
  /// Retrictions applied to the configurations. The maximum number of elements is 10.
  final pulumi.Input<List<DataSourceRestriction>>? dataSourceRestrictions;
  /// The default fields for returning facet results. The sources specified here also have been included in data_source_restrictions above.
  final pulumi.Input<List<FacetOptions>>? defaultFacetOptions;
  /// The default options for sorting the search results
  final pulumi.Input<SortOptions>? defaultSortOptions;
  /// Display name of the Search Application. The maximum length is 300 characters.
  final pulumi.Input<String>? displayName;
  /// Indicates whether audit logging is on/off for requests made for the search application in query APIs.
  final pulumi.Input<bool>? enableAuditLog;
  /// The name of the Search Application. Format: searchapplications/{application_id}.
  final pulumi.Input<String>? name;
  /// The default options for query interpretation
  final pulumi.Input<QueryInterpretationConfig>? queryInterpretationConfig;
  /// With each result we should return the URI for its thumbnail (when applicable)
  final pulumi.Input<bool>? returnResultThumbnailUrls;
  /// Configuration for ranking results.
  final pulumi.Input<ScoringConfig>? scoringConfig;
  /// Configuration for a sources specified in data_source_restrictions.
  final pulumi.Input<List<SourceConfig>>? sourceConfig;

  /// Creates a new [SearchApplicationArgs].
  /// [dataSourceRestrictions] Retrictions applied to the configurations. The maximum number of elements is 10.
  /// [defaultFacetOptions] The default fields for returning facet results. The sources specified here also have been included in data_source_restrictions above.
  /// [defaultSortOptions] The default options for sorting the search results
  /// [displayName] Display name of the Search Application. The maximum length is 300 characters.
  /// [enableAuditLog] Indicates whether audit logging is on/off for requests made for the search application in query APIs.
  /// [name] The name of the Search Application. Format: searchapplications/{application_id}.
  /// [queryInterpretationConfig] The default options for query interpretation
  /// [returnResultThumbnailUrls] With each result we should return the URI for its thumbnail (when applicable)
  /// [scoringConfig] Configuration for ranking results.
  /// [sourceConfig] Configuration for a sources specified in data_source_restrictions.
  const SearchApplicationArgs({
    this.dataSourceRestrictions,
    this.defaultFacetOptions,
    this.defaultSortOptions,
    this.displayName,
    this.enableAuditLog,
    this.name,
    this.queryInterpretationConfig,
    this.returnResultThumbnailUrls,
    this.scoringConfig,
    this.sourceConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceRestrictions': ?pulumi.Input.mapOptionalInputValue<List<DataSourceRestriction>, List<Map<String, dynamic>>>(dataSourceRestrictions, (value) => pulumi.Input.encodeList<DataSourceRestriction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultFacetOptions': ?pulumi.Input.mapOptionalInputValue<List<FacetOptions>, List<Map<String, dynamic>>>(defaultFacetOptions, (value) => pulumi.Input.encodeList<FacetOptions, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultSortOptions': ?pulumi.Input.mapOptionalInputValue<SortOptions, Map<String, dynamic>>(defaultSortOptions, (value) => value.toMap()),
      'displayName': ?displayName,
      'enableAuditLog': ?enableAuditLog,
      'name': ?name,
      'queryInterpretationConfig': ?pulumi.Input.mapOptionalInputValue<QueryInterpretationConfig, Map<String, dynamic>>(queryInterpretationConfig, (value) => value.toMap()),
      'returnResultThumbnailUrls': ?returnResultThumbnailUrls,
      'scoringConfig': ?pulumi.Input.mapOptionalInputValue<ScoringConfig, Map<String, dynamic>>(scoringConfig, (value) => value.toMap()),
      'sourceConfig': ?pulumi.Input.mapOptionalInputValue<List<SourceConfig>, List<Map<String, dynamic>>>(sourceConfig, (value) => pulumi.Input.encodeList<SourceConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SearchApplicationArgs.fromMap(Map<String, dynamic> map) {
    return SearchApplicationArgs(
      dataSourceRestrictions: (() { final guardedValue = map['dataSourceRestrictions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataSourceRestriction>(guardedValue, (value) => DataSourceRestriction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultFacetOptions: (() { final guardedValue = map['defaultFacetOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FacetOptions>(guardedValue, (value) => FacetOptions.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultSortOptions: (() { final guardedValue = map['defaultSortOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SortOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableAuditLog: (() { final guardedValue = map['enableAuditLog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryInterpretationConfig: (() { final guardedValue = map['queryInterpretationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QueryInterpretationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      returnResultThumbnailUrls: (() { final guardedValue = map['returnResultThumbnailUrls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      scoringConfig: (() { final guardedValue = map['scoringConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScoringConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceConfig: (() { final guardedValue = map['sourceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SourceConfig>(guardedValue, (value) => SourceConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
