import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_restriction_response.dart';
import 'facet_options_response.dart';
import 'query_interpretation_config_response.dart';
import 'scoring_config_response.dart';
import 'search_application_args.dart';
import 'sort_options_response.dart';
import 'source_config_response.dart';

/// Creates a search application. **Note:** This API requires an admin account to execute.
class SearchApplication extends pulumi.CustomResource {
  /// Retrictions applied to the configurations. The maximum number of elements is 10.
  late final pulumi.Output<List<DataSourceRestrictionResponse>> dataSourceRestrictions;
  /// The default fields for returning facet results. The sources specified here also have been included in data_source_restrictions above.
  late final pulumi.Output<List<FacetOptionsResponse>> defaultFacetOptions;
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
  late final pulumi.Output<List<SourceConfigResponse>> sourceConfig;

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
          pulumi.CustomResourceOptions(version: '0.32.0').merge(options),
        ) {
    dataSourceRestrictions = registerOutput<List<DataSourceRestrictionResponse>>('dataSourceRestrictions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataSourceRestrictionResponse>(guardedValue, (value) => DataSourceRestrictionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    defaultFacetOptions = registerOutput<List<FacetOptionsResponse>>('defaultFacetOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FacetOptionsResponse>(guardedValue, (value) => FacetOptionsResponse.fromMap((value as Map).cast<String, dynamic>())); });
    defaultSortOptions = registerOutput<SortOptionsResponse>('defaultSortOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SortOptionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String>('displayName');
    enableAuditLog = registerOutput<bool>('enableAuditLog');
    this.name = registerOutput<String>('name');
    operationIds = registerOutput<List<String>>('operationIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    queryInterpretationConfig = registerOutput<QueryInterpretationConfigResponse>('queryInterpretationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QueryInterpretationConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    returnResultThumbnailUrls = registerOutput<bool>('returnResultThumbnailUrls');
    scoringConfig = registerOutput<ScoringConfigResponse>('scoringConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScoringConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceConfig = registerOutput<List<SourceConfigResponse>>('sourceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SourceConfigResponse>(guardedValue, (value) => SourceConfigResponse.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [SearchApplication] resource.
  SearchApplication.reference(String urn)
    : super(
        'google-native:cloudsearch/v1:SearchApplication',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    dataSourceRestrictions = registerOutput<List<DataSourceRestrictionResponse>>('dataSourceRestrictions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataSourceRestrictionResponse>(guardedValue, (value) => DataSourceRestrictionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    defaultFacetOptions = registerOutput<List<FacetOptionsResponse>>('defaultFacetOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FacetOptionsResponse>(guardedValue, (value) => FacetOptionsResponse.fromMap((value as Map).cast<String, dynamic>())); });
    defaultSortOptions = registerOutput<SortOptionsResponse>('defaultSortOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SortOptionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String>('displayName');
    enableAuditLog = registerOutput<bool>('enableAuditLog');
    this.name = registerOutput<String>('name');
    operationIds = registerOutput<List<String>>('operationIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    queryInterpretationConfig = registerOutput<QueryInterpretationConfigResponse>('queryInterpretationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QueryInterpretationConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    returnResultThumbnailUrls = registerOutput<bool>('returnResultThumbnailUrls');
    scoringConfig = registerOutput<ScoringConfigResponse>('scoringConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScoringConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceConfig = registerOutput<List<SourceConfigResponse>>('sourceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SourceConfigResponse>(guardedValue, (value) => SourceConfigResponse.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
