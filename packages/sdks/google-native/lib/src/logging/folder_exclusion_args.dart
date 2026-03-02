// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_folder_exclusion_args_doc}
/// The set of arguments for FolderExclusion.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_folder_exclusion_args_doc}
class FolderExclusionArgs {
  /// Optional. A description of this exclusion.
  final pulumi.Input<String>? description;
  /// Optional. If set to True, then this exclusion is disabled and it does not exclude any log entries. You can update an exclusion to change the value of this field.
  final pulumi.Input<bool>? disabled;
  /// An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced-queries) that matches the log entries to be excluded. By using the sample function (https://cloud.google.com/logging/docs/view/advanced-queries#sample), you can exclude less than 100% of the matching log entries.For example, the following query matches 99% of low-severity log entries from Google Cloud Storage buckets:resource.type=gcs_bucket severity<ERROR sample(insertId, 0.99)
  final pulumi.Input<String> filter;
  final pulumi.Input<String> folderId;
  /// A client-assigned identifier, such as "load-balancer-exclusion". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods. First character has to be alphanumeric.
  final pulumi.Input<String>? name;

  /// Creates a new [FolderExclusionArgs].
  /// [description] Optional. A description of this exclusion.
  /// [disabled] Optional. If set to True, then this exclusion is disabled and it does not exclude any log entries. You can update an exclusion to change the value of this field.
  /// [filter] An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced-queries) that matches the log entries to be excluded. By using the sample function (https://cloud.google.com/logging/docs/view/advanced-queries#sample), you can exclude less than 100% of the matching log entries.For example, the following query matches 99% of low-severity log entries from Google Cloud Storage buckets:resource.type=gcs_bucket severity<ERROR sample(insertId, 0.99)
  /// [folderId] Required.
  /// [name] A client-assigned identifier, such as "load-balancer-exclusion". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods. First character has to be alphanumeric.
  FolderExclusionArgs({
    this.description,
    this.disabled,
    required this.filter,
    required this.folderId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'disabled': ?disabled,
      'filter': filter,
      'folderId': folderId,
      'name': ?name,
    };
  }

  factory FolderExclusionArgs.fromMap(Map<String, dynamic> map) {
    return FolderExclusionArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      disabled: map['disabled'] == null ? null : (map['disabled']! as bool).input(),
      filter: (map['filter'] as String).input(),
      folderId: (map['folderId'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

