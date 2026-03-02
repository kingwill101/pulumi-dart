// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datalabeling_v1beta1_dataset_args_doc}
/// The set of arguments for Dataset.
/// {@endtemplate}
/// {@macro pulumi_datalabeling_v1beta1_dataset_args_doc}
class DatasetArgs {
  /// Optional. User-provided description of the annotation specification set. The description can be up to 10000 characters long.
  final pulumi.Input<String>? description;
  /// The display name of the dataset. Maximum of 64 characters.
  final pulumi.Input<String> displayName;
  /// Last time that the Dataset is migrated to AI Platform V2. If any of the AnnotatedDataset is migrated, the last_migration_time in Dataset is also updated.
  final pulumi.Input<String>? lastMigrateTime;
  final pulumi.Input<String>? project;

  /// Creates a new [DatasetArgs].
  /// [description] Optional. User-provided description of the annotation specification set. The description can be up to 10000 characters long.
  /// [displayName] The display name of the dataset. Maximum of 64 characters.
  /// [lastMigrateTime] Last time that the Dataset is migrated to AI Platform V2. If any of the AnnotatedDataset is migrated, the last_migration_time in Dataset is also updated.
  /// [project] Optional.
  DatasetArgs({
    this.description,
    required this.displayName,
    this.lastMigrateTime,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'lastMigrateTime': ?lastMigrateTime,
      'project': ?project,
    };
  }

  factory DatasetArgs.fromMap(Map<String, dynamic> map) {
    return DatasetArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      lastMigrateTime: map['lastMigrateTime'] == null ? null : (map['lastMigrateTime'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

