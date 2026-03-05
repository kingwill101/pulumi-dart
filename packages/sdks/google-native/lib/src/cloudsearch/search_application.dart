import 'package:pulumi/pulumi.dart' as pulumi;
import 'query_interpretation_config_response.dart';
import 'scoring_config_response.dart';
import 'search_application_args.dart';
import 'sort_options_response.dart';

/// Creates a search application. **Note:** This API requires an admin account to execute.
class SearchApplication extends pulumi.CustomResource {
  /// Retrictions applied to the configurations. The maximum number of elements is 10.
  late final pulumi.Output<List<Map<String, dynamic>>> dataSourceRestrictions;
  /// The default fields for returning facet results. The sources specified here also have been included in data_source_restrictions above.
  late final pulumi.Output<List<Map<String, dynamic>>> defaultFacetOptions;
  /// The default options for sorting the search results
  late final pulumi.Output<SortOptionsResponse> defaultSortOptions;
  /// Display name of the Search Application. The maximum length is 300 characters.
  late final pulumi.Output<String> displayName;
  /// Indicates whether audit logging is on/off for requests made for the search application in query APIs.
  late final pulumi.Output<bool> enableAuditLog;
  /// The name of the Search Application. Format: searchapplications/{application_id}.
  late final pulumi.Output<String> name;
  /// IDs of the Long Running Operations (LROs) currently running for this schema. Output only field.
  late final pulumi.Output<List<String>> operationIds;
  /// The default options for query interpretation
  late final pulumi.Output<QueryInterpretationConfigResponse> queryInterpretationConfig;
  /// With each result we should return the URI for its thumbnail (when applicable)
  late final pulumi.Output<bool> returnResultThumbnailUrls;
  /// Configuration for ranking results.
  late final pulumi.Output<ScoringConfigResponse> scoringConfig;
  /// Configuration for a sources specified in data_source_restrictions.
  late final pulumi.Output<List<Map<String, dynamic>>> sourceConfig;

  /// Creates a new [SearchApplication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SearchApplication]. {@macro pulumi_cloudsearch_v1_search_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SearchApplication(
    String name, {
    SearchApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:cloudsearch/v1:SearchApplication',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dataSourceRestrictions = registerOutput<List<Map<String, dynamic>>>('dataSourceRestrictions');
    defaultFacetOptions = registerOutput<List<Map<String, dynamic>>>('defaultFacetOptions');
    defaultSortOptions = registerOutput<SortOptionsResponse>('defaultSortOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SortOptionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String>('displayName');
    enableAuditLog = registerOutput<bool>('enableAuditLog');
    this.name = registerOutput<String>('name');
    operationIds = registerOutput<List<String>>('operationIds');
    queryInterpretationConfig = registerOutput<QueryInterpretationConfigResponse>('queryInterpretationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QueryInterpretationConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    returnResultThumbnailUrls = registerOutput<bool>('returnResultThumbnailUrls');
    scoringConfig = registerOutput<ScoringConfigResponse>('scoringConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScoringConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceConfig = registerOutput<List<Map<String, dynamic>>>('sourceConfig');
  }
}
