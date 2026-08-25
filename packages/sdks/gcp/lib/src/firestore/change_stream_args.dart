// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'change_stream_collection_group_scope.dart';

/// {@template pulumi_firestore_change_stream_change_stream_args_doc}
/// The set of arguments for ChangeStream.
/// {@endtemplate}
/// {@macro pulumi_firestore_change_stream_change_stream_args_doc}
class ChangeStreamArgs {
  /// Tracks changes for a specific collection group.
  /// Structure is documented below.
  final pulumi.Input<ChangeStreamCollectionGroupScope?>? collectionGroupScope;
  /// The Firestore database ID. Defaults to `"(default)"`.
  final pulumi.Input<String?>? database;
  /// Tracks changes across all collections in the database.
  final pulumi.Input<Map<String, dynamic>?>? databaseScope;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The ID to use for the change stream, which will become the final component
  /// of the change stream's resource name.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The duration for which change stream data is retained.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "86400s".
  final pulumi.Input<String> retentionPeriod;

  /// Creates a new [ChangeStreamArgs].
  /// [collectionGroupScope] Tracks changes for a specific collection group.
  /// [database] The Firestore database ID. Defaults to `"(default)"`.
  /// [databaseScope] Tracks changes across all collections in the database.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [name] The ID to use for the change stream, which will become the final component
  /// [project] The ID of the project in which the resource belongs.
  /// [retentionPeriod] The duration for which change stream data is retained.
  const ChangeStreamArgs({
    this.collectionGroupScope,
    this.database,
    this.databaseScope,
    this.deletionPolicy,
    this.name,
    this.project,
    required this.retentionPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionGroupScope': ?pulumi.Input.mapOptionalInputValue<ChangeStreamCollectionGroupScope, Map<String, dynamic>>(collectionGroupScope, (value) => value.toMap()),
      'database': ?database,
      'databaseScope': ?databaseScope,
      'deletionPolicy': ?deletionPolicy,
      'name': ?name,
      'project': ?project,
      'retentionPeriod': retentionPeriod,
    };
  }

  factory ChangeStreamArgs.fromMap(Map<String, dynamic> map) {
    return ChangeStreamArgs(
      collectionGroupScope: (() { final guardedValue = map['collectionGroupScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChangeStreamCollectionGroupScope.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseScope: (() { final guardedValue = map['databaseScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionPeriod: pulumi.Input.fromValue(map['retentionPeriod'] as String),
    );
  }
}
