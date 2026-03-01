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
    required pulumi.Output<String> catalogId,
    required pulumi.Output<String> controlId,
    required pulumi.Output<String> displayName,
    pulumi.Output<GoogleCloudRetailV2betaSearchRequestFacetSpec>? facetSpec,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<GoogleCloudRetailV2betaRule>? rule,
    pulumi.Output<List<ControlSearchSolutionUseCaseItemRetailV2beta>>? searchSolutionUseCase,
    required pulumi.Output<List<ControlSolutionTypesItemRetailV2beta>> solutionTypes,
  }) :
      catalogId = pulumi.Input.asInput<String>(catalogId),
      controlId = pulumi.Input.asInput<String>(controlId),
      displayName = pulumi.Input.asInput<String>(displayName),
      facetSpec = pulumi.Input.asOptionalInput<GoogleCloudRetailV2betaSearchRequestFacetSpec>(facetSpec),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      rule = pulumi.Input.asOptionalInput<GoogleCloudRetailV2betaRule>(rule),
      searchSolutionUseCase = pulumi.Input.asOptionalInput<List<ControlSearchSolutionUseCaseItemRetailV2beta>>(searchSolutionUseCase),
      solutionTypes = pulumi.Input.asInput<List<ControlSolutionTypesItemRetailV2beta>>(solutionTypes);

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
      catalogId: pulumi.Output.create<String>(map['catalogId'] as String),
      controlId: pulumi.Output.create<String>(map['controlId'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      facetSpec: map['facetSpec'] == null ? null : pulumi.Output.create<GoogleCloudRetailV2betaSearchRequestFacetSpec>(GoogleCloudRetailV2betaSearchRequestFacetSpec.fromMap((map['facetSpec'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      rule: map['rule'] == null ? null : pulumi.Output.create<GoogleCloudRetailV2betaRule>(GoogleCloudRetailV2betaRule.fromMap((map['rule'] as Map).cast<String, dynamic>())),
      searchSolutionUseCase: map['searchSolutionUseCase'] == null ? null : pulumi.Output.create<List<ControlSearchSolutionUseCaseItemRetailV2beta>>(pulumi.Input.decodeList<ControlSearchSolutionUseCaseItemRetailV2beta>(map['searchSolutionUseCase'], (value) => ControlSearchSolutionUseCaseItemRetailV2beta.fromValue(value as String))),
      solutionTypes: pulumi.Output.create<List<ControlSolutionTypesItemRetailV2beta>>(pulumi.Input.decodeList<ControlSolutionTypesItemRetailV2beta>(map['solutionTypes'], (value) => ControlSolutionTypesItemRetailV2beta.fromValue(value as String))),
    );
  }
}

