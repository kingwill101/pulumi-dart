// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_folder_scc_big_query_export_folder_scc_big_query_export_args_doc}
/// The set of arguments for FolderSccBigQueryExport.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_folder_scc_big_query_export_folder_scc_big_query_export_args_doc}
class FolderSccBigQueryExportArgs {
  /// This must be unique within the organization.
  final pulumi.Input<String> bigQueryExportId;
  /// The dataset to write findings' updates to.
  /// Its format is "projects/[projectId]/datasets/[bigqueryDatasetId]".
  /// BigQuery Dataset unique ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_).
  final pulumi.Input<String> dataset;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The description of the export (max of 1024 characters).
  final pulumi.Input<String> description;
  /// Expression that defines the filter to apply across create/update
  /// events of findings. The
  /// expression is a list of zero or more restrictions combined via
  /// logical operators AND and OR. Parentheses are supported, and OR
  /// has higher precedence than AND.
  /// Restrictions have the form &lt;field&gt; &lt;operator&gt; &lt;value&gt; and may have
  /// a - character in front of them to indicate negation. The fields
  /// map to those defined in the corresponding resource.
  /// The supported operators are:
  /// * = for all value types.
  /// * &gt;, &lt;, &gt;=, &lt;= for integer values.
  /// * :, meaning substring matching, for strings.
  /// The supported value types are:
  /// * string literals in quotes.
  /// * integer literals without quotes.
  /// * boolean literals true and false without quotes.
  /// See
  /// [Filtering notifications](https://cloud.google.com/security-command-center/docs/how-to-api-filter-notifications)
  /// for information on how to write a filter.
  final pulumi.Input<String> filter;
  /// The folder where Cloud Security Command Center Big Query Export
  /// Config lives in.
  final pulumi.Input<String> folder;

  /// Creates a new [FolderSccBigQueryExportArgs].
  /// [bigQueryExportId] This must be unique within the organization.
  /// [dataset] The dataset to write findings' updates to.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] The description of the export (max of 1024 characters).
  /// [filter] Expression that defines the filter to apply across create/update
  /// [folder] The folder where Cloud Security Command Center Big Query Export
  const FolderSccBigQueryExportArgs({
    required this.bigQueryExportId,
    required this.dataset,
    this.deletionPolicy,
    required this.description,
    required this.filter,
    required this.folder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigQueryExportId': bigQueryExportId,
      'dataset': dataset,
      'deletionPolicy': ?deletionPolicy,
      'description': description,
      'filter': filter,
      'folder': folder,
    };
  }

  factory FolderSccBigQueryExportArgs.fromMap(Map<String, dynamic> map) {
    return FolderSccBigQueryExportArgs(
      bigQueryExportId: pulumi.Input.fromValue(map['bigQueryExportId'] as String),
      dataset: pulumi.Input.fromValue(map['dataset'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      filter: pulumi.Input.fromValue(map['filter'] as String),
      folder: pulumi.Input.fromValue(map['folder'] as String),
    );
  }
}
