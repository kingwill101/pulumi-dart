// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_v2_organization_scc_big_query_export_v2_organization_scc_big_query_export_args_doc}
/// The set of arguments for V2OrganizationSccBigQueryExport.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v2_organization_scc_big_query_export_v2_organization_scc_big_query_export_args_doc}
class V2OrganizationSccBigQueryExportArgs {
  /// This must be unique within the organization.
  final pulumi.Input<String> bigQueryExportId;
  /// The dataset to write findings' updates to.
  /// Its format is "projects/[projectId]/datasets/[bigquery_dataset_id]".
  /// BigQuery Dataset unique ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_).
  final pulumi.Input<String>? dataset;
  /// The description of the notification config (max of 1024 characters).
  final pulumi.Input<String>? description;
  /// Expression that defines the filter to apply across create/update
  /// events of findings. The
  /// expression is a list of zero or more restrictions combined via
  /// logical operators AND and OR. Parentheses are supported, and OR
  /// has higher precedence than AND.
  /// Restrictions have the form <field> <operator> <value> and may have
  /// a - character in front of them to indicate negation. The fields
  /// map to those defined in the corresponding resource.
  /// The supported operators are:
  /// * = for all value types.
  /// * >, <, >=, <= for integer values.
  /// * :, meaning substring matching, for strings.
  /// The supported value types are:
  /// * string literals in quotes.
  /// * integer literals without quotes.
  /// * boolean literals true and false without quotes.
  /// See
  /// [Filtering notifications](https://cloud.google.com/security-command-center/docs/how-to-api-filter-notifications)
  /// for information on how to write a filter.
  final pulumi.Input<String>? filter;
  /// location Id is provided by organization. If not provided, Use global as default.
  final pulumi.Input<String>? location;
  /// The resource name of this export, in the format
  /// `organizations/{{organization}}/locations/{{location}}/bigQueryExports/{{big_query_export_id}}`.
  /// This field is provided in responses, and is ignored when provided in create requests.
  final pulumi.Input<String>? name;
  /// The organization whose Cloud Security Command Center the Big Query Export
  /// Config lives in.
  final pulumi.Input<String> organization;

  /// Creates a new [V2OrganizationSccBigQueryExportArgs].
  /// [bigQueryExportId] This must be unique within the organization.
  /// [dataset] The dataset to write findings' updates to.
  /// [description] The description of the notification config (max of 1024 characters).
  /// [filter] Expression that defines the filter to apply across create/update
  /// [location] location Id is provided by organization. If not provided, Use global as default.
  /// [name] The resource name of this export, in the format
  /// [organization] The organization whose Cloud Security Command Center the Big Query Export
  V2OrganizationSccBigQueryExportArgs({
    required pulumi.Output<String> bigQueryExportId,
    pulumi.Output<String>? dataset,
    pulumi.Output<String>? description,
    pulumi.Output<String>? filter,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> organization,
  }) :
      bigQueryExportId = pulumi.Input.asInput<String>(bigQueryExportId),
      dataset = pulumi.Input.asOptionalInput<String>(dataset),
      description = pulumi.Input.asOptionalInput<String>(description),
      filter = pulumi.Input.asOptionalInput<String>(filter),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      organization = pulumi.Input.asInput<String>(organization);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigQueryExportId': bigQueryExportId,
      'dataset': ?dataset,
      'description': ?description,
      'filter': ?filter,
      'location': ?location,
      'name': ?name,
      'organization': organization,
    };
  }

  factory V2OrganizationSccBigQueryExportArgs.fromMap(Map<String, dynamic> map) {
    return V2OrganizationSccBigQueryExportArgs(
      bigQueryExportId: pulumi.Output.create<String>(map['bigQueryExportId'] as String),
      dataset: map['dataset'] == null ? null : pulumi.Output.create<String>(map['dataset'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      filter: map['filter'] == null ? null : pulumi.Output.create<String>(map['filter'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      organization: pulumi.Output.create<String>(map['organization'] as String),
    );
  }
}

