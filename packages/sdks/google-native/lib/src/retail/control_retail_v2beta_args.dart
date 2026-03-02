// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_search_solution_use_case_item_retail_v2beta.dart';
import 'control_solution_types_item_retail_v2beta.dart';
import 'google_cloud_retail_v2beta_rule.dart';
import 'google_cloud_retail_v2beta_search_request_facet_spec.dart';

/// {@template pulumi_retail_v2beta_control_retail_v2beta_args_doc}
/// The set of arguments for Control.
/// {@endtemplate}
/// {@macro pulumi_retail_v2beta_control_retail_v2beta_args_doc}
class ControlRetailV2betaArgs {
  final pulumi.Input<String> catalogId;
  /// Required. The ID to use for the Control, which will become the final component of the Control's resource name. This value should be 4-63 characters, and valid characters are /a-z-_/.
  final pulumi.Input<String> controlId;
  /// The human readable control display name. Used in Retail UI. This field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is thrown.
  final pulumi.Input<String> displayName;
  /// A facet specification to perform faceted search. Note that this field is deprecated and will throw NOT_IMPLEMENTED if used for creating a control.
  final pulumi.Input<GoogleCloudRetailV2betaSearchRequestFacetSpec>? facetSpec;
  final pulumi.Input<String>? location;
  /// Immutable. Fully qualified name `projects/*/locations/global/catalogs/*/controls/*`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// A rule control - a condition-action pair. Enacts a set action when the condition is triggered. For example: Boost "gShoe" when query full matches "Running Shoes".
  final pulumi.Input<GoogleCloudRetailV2betaRule>? rule;
  /// Specifies the use case for the control. Affects what condition fields can be set. Only settable by search controls. Will default to SEARCH_SOLUTION_USE_CASE_SEARCH if not specified. Currently only allow one search_solution_use_case per control.
  final pulumi.Input<List<ControlSearchSolutionUseCaseItemRetailV2beta>>? searchSolutionUseCase;
  /// Immutable. The solution types that the control is used for. Currently we support setting only one type of solution at creation time. Only `SOLUTION_TYPE_SEARCH` value is supported at the moment. If no solution type is provided at creation time, will default to SOLUTION_TYPE_SEARCH.
  final pulumi.Input<List<ControlSolutionTypesItemRetailV2beta>> solutionTypes;

  /// Creates a new [ControlRetailV2betaArgs].
  /// [catalogId] Required.
  /// [controlId] Required. The ID to use for the Control, which will become the final component of the Control's resource name. This value should be 4-63 characters, and valid characters are /a-z-_/.
  /// [displayName] The human readable control display name. Used in Retail UI. This field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is thrown.
  /// [facetSpec] A facet specification to perform faceted search. Note that this field is deprecated and will throw NOT_IMPLEMENTED if used for creating a control.
  /// [location] Optional.
  /// [name] Immutable. Fully qualified name `projects/*/locations/global/catalogs/*/controls/*`
  /// [project] Optional.
  /// [rule] A rule control - a condition-action pair. Enacts a set action when the condition is triggered. For example: Boost "gShoe" when query full matches "Running Shoes".
  /// [searchSolutionUseCase] Specifies the use case for the control. Affects what condition fields can be set. Only settable by search controls. Will default to SEARCH_SOLUTION_USE_CASE_SEARCH if not specified. Currently only allow one search_solution_use_case per control.
  /// [solutionTypes] Immutable. The solution types that the control is used for. Currently we support setting only one type of solution at creation time. Only `SOLUTION_TYPE_SEARCH` value is supported at the moment. If no solution type is provided at creation time, will default to SOLUTION_TYPE_SEARCH.
  ControlRetailV2betaArgs({
    required this.catalogId,
    required this.controlId,
    required this.displayName,
    this.facetSpec,
    this.location,
    this.name,
    this.project,
    this.rule,
    this.searchSolutionUseCase,
    required this.solutionTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'controlId': controlId,
      'displayName': displayName,
      'facetSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2betaSearchRequestFacetSpec, Map<String, dynamic>>(facetSpec, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'rule': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2betaRule, Map<String, dynamic>>(rule, (value) => value.toMap()),
      'searchSolutionUseCase': ?pulumi.Input.mapOptionalInputValue<List<ControlSearchSolutionUseCaseItemRetailV2beta>, List<String>>(searchSolutionUseCase, (value) => pulumi.Input.encodeList<ControlSearchSolutionUseCaseItemRetailV2beta, String>(value, (value) => value.value)),
      'solutionTypes': pulumi.Input.mapInputValue<List<ControlSolutionTypesItemRetailV2beta>, List<String>>(solutionTypes, (value) => pulumi.Input.encodeList<ControlSolutionTypesItemRetailV2beta, String>(value, (value) => value.value)),
    };
  }

  factory ControlRetailV2betaArgs.fromMap(Map<String, dynamic> map) {
    return ControlRetailV2betaArgs(
      catalogId: (map['catalogId'] as String).input(),
      controlId: (map['controlId'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      facetSpec: map['facetSpec'] == null ? null : (GoogleCloudRetailV2betaSearchRequestFacetSpec.fromMap((map['facetSpec']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      rule: map['rule'] == null ? null : (GoogleCloudRetailV2betaRule.fromMap((map['rule']! as Map).cast<String, dynamic>())).input(),
      searchSolutionUseCase: map['searchSolutionUseCase'] == null ? null : (pulumi.Input.decodeList<ControlSearchSolutionUseCaseItemRetailV2beta>(map['searchSolutionUseCase']!, (value) => ControlSearchSolutionUseCaseItemRetailV2beta.fromValue(value as String))).input(),
      solutionTypes: (pulumi.Input.decodeList<ControlSolutionTypesItemRetailV2beta>(map['solutionTypes'], (value) => ControlSolutionTypesItemRetailV2beta.fromValue(value as String))).input(),
    );
  }
}

