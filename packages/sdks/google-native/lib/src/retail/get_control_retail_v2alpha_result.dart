// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_retail_v2alpha_rule_response.dart';
import 'google_cloud_retail_v2alpha_search_request_facet_spec_response.dart';

/// Result data returned by getControl.
class GetControlRetailV2alphaResult {
  /// List of serving config ids that are associated with this control in the same Catalog. Note the association is managed via the ServingConfig, this is an output only denormalized view.
  final List<String> associatedServingConfigIds;
  /// The human readable control display name. Used in Retail UI. This field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is thrown.
  final String displayName;
  /// A facet specification to perform faceted search. Note that this field is deprecated and will throw NOT_IMPLEMENTED if used for creating a control.
  final GoogleCloudRetailV2alphaSearchRequestFacetSpecResponse facetSpec;
  /// Immutable. Fully qualified name `projects/*/locations/global/catalogs/*/controls/*`
  final String name;
  /// A rule control - a condition-action pair. Enacts a set action when the condition is triggered. For example: Boost "gShoe" when query full matches "Running Shoes".
  final GoogleCloudRetailV2alphaRuleResponse rule;
  /// Specifies the use case for the control. Affects what condition fields can be set. Only settable by search controls. Will default to SEARCH_SOLUTION_USE_CASE_SEARCH if not specified. Currently only allow one search_solution_use_case per control.
  final List<String> searchSolutionUseCase;
  /// Immutable. The solution types that the control is used for. Currently we support setting only one type of solution at creation time. Only `SOLUTION_TYPE_SEARCH` value is supported at the moment. If no solution type is provided at creation time, will default to SOLUTION_TYPE_SEARCH.
  final List<String> solutionTypes;

  /// Creates a new [GetControlRetailV2alphaResult].
  /// [associatedServingConfigIds] List of serving config ids that are associated with this control in the same Catalog. Note the association is managed via the ServingConfig, this is an output only denormalized view.
  /// [displayName] The human readable control display name. Used in Retail UI. This field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is thrown.
  /// [facetSpec] A facet specification to perform faceted search. Note that this field is deprecated and will throw NOT_IMPLEMENTED if used for creating a control.
  /// [name] Immutable. Fully qualified name `projects/*/locations/global/catalogs/*/controls/*`
  /// [rule] A rule control - a condition-action pair. Enacts a set action when the condition is triggered. For example: Boost "gShoe" when query full matches "Running Shoes".
  /// [searchSolutionUseCase] Specifies the use case for the control. Affects what condition fields can be set. Only settable by search controls. Will default to SEARCH_SOLUTION_USE_CASE_SEARCH if not specified. Currently only allow one search_solution_use_case per control.
  /// [solutionTypes] Immutable. The solution types that the control is used for. Currently we support setting only one type of solution at creation time. Only `SOLUTION_TYPE_SEARCH` value is supported at the moment. If no solution type is provided at creation time, will default to SOLUTION_TYPE_SEARCH.
  GetControlRetailV2alphaResult({
    required this.associatedServingConfigIds,
    required this.displayName,
    required this.facetSpec,
    required this.name,
    required this.rule,
    required this.searchSolutionUseCase,
    required this.solutionTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedServingConfigIds': associatedServingConfigIds,
      'displayName': displayName,
      'facetSpec': facetSpec.toMap(),
      'name': name,
      'rule': rule.toMap(),
      'searchSolutionUseCase': searchSolutionUseCase,
      'solutionTypes': solutionTypes,
    };
  }

  factory GetControlRetailV2alphaResult.fromMap(Map<String, dynamic> map) {
    return GetControlRetailV2alphaResult(
      associatedServingConfigIds: (map['associatedServingConfigIds'] as List).cast<String>(),
      displayName: map['displayName'] as String,
      facetSpec: GoogleCloudRetailV2alphaSearchRequestFacetSpecResponse.fromMap((map['facetSpec'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      rule: GoogleCloudRetailV2alphaRuleResponse.fromMap((map['rule'] as Map).cast<String, dynamic>()),
      searchSolutionUseCase: (map['searchSolutionUseCase'] as List).cast<String>(),
      solutionTypes: (map['solutionTypes'] as List).cast<String>(),
    );
  }
}

