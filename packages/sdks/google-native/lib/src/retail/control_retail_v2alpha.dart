import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_retail_v2alpha_args.dart';
import 'google_cloud_retail_v2alpha_rule_response.dart';
import 'google_cloud_retail_v2alpha_search_request_facet_spec_response.dart';

/// Creates a Control. If the Control to create already exists, an ALREADY_EXISTS error is returned.
/// Auto-naming is currently not supported for this resource.
class ControlRetailV2alpha extends pulumi.CustomResource {
  /// List of serving config ids that are associated with this control in the same Catalog. Note the association is managed via the ServingConfig, this is an output only denormalized view.
  late final pulumi.Output<List<String>> associatedServingConfigIds;
  late final pulumi.Output<String> catalogId;

  /// Required. The ID to use for the Control, which will become the final component of the Control's resource name. This value should be 4-63 characters, and valid characters are /a-z-_/.
  late final pulumi.Output<String> controlId;

  /// The human readable control display name. Used in Retail UI. This field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is thrown.
  late final pulumi.Output<String> displayName;

  /// A facet specification to perform faceted search. Note that this field is deprecated and will throw NOT_IMPLEMENTED if used for creating a control.
  late final pulumi.Output<
    GoogleCloudRetailV2alphaSearchRequestFacetSpecResponse
  >
  facetSpec;
  late final pulumi.Output<String> location;

  /// Immutable. Fully qualified name `projects/*/locations/global/catalogs/*/controls/*`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// A rule control - a condition-action pair. Enacts a set action when the condition is triggered. For example: Boost "gShoe" when query full matches "Running Shoes".
  late final pulumi.Output<GoogleCloudRetailV2alphaRuleResponse> rule;

  /// Specifies the use case for the control. Affects what condition fields can be set. Only settable by search controls. Will default to SEARCH_SOLUTION_USE_CASE_SEARCH if not specified. Currently only allow one search_solution_use_case per control.
  late final pulumi.Output<List<String>> searchSolutionUseCase;

  /// Immutable. The solution types that the control is used for. Currently we support setting only one type of solution at creation time. Only `SOLUTION_TYPE_SEARCH` value is supported at the moment. If no solution type is provided at creation time, will default to SOLUTION_TYPE_SEARCH.
  late final pulumi.Output<List<String>> solutionTypes;

  /// Creates a new [ControlRetailV2alpha].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ControlRetailV2alpha]. {@macro pulumi_retail_v2alpha_control_retail_v2alpha_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ControlRetailV2alpha(
    String name, {
    ControlRetailV2alphaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:retail/v2alpha:Control',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    associatedServingConfigIds = registerOutput<List<String>>(
      'associatedServingConfigIds',
    );
    catalogId = registerOutput<String>('catalogId');
    controlId = registerOutput<String>('controlId');
    displayName = registerOutput<String>('displayName');
    facetSpec =
        registerOutput<GoogleCloudRetailV2alphaSearchRequestFacetSpecResponse>(
          'facetSpec',
        );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    rule = registerOutput<GoogleCloudRetailV2alphaRuleResponse>('rule');
    searchSolutionUseCase = registerOutput<List<String>>(
      'searchSolutionUseCase',
    );
    solutionTypes = registerOutput<List<String>>('solutionTypes');
  }
}
