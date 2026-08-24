// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_worker_versions_result_migrations_renamed_class.dart';
import 'get_worker_versions_result_migrations_step.dart';
import 'get_worker_versions_result_migrations_transferred_class.dart';

class GetWorkerVersionsResultMigrations {
  /// A list of classes to delete Durable Object namespaces from.
  final pulumi.Input<List<String>> deletedClasses;
  /// A list of classes to create Durable Object namespaces from.
  final pulumi.Input<List<String>> newClasses;
  /// A list of classes to create Durable Object namespaces with SQLite from.
  final pulumi.Input<List<String>> newSqliteClasses;
  /// Tag to set as the latest migration tag.
  final pulumi.Input<String> newTag;
  /// Tag used to verify against the latest migration tag for this Worker. If they don't match, the upload is rejected.
  final pulumi.Input<String> oldTag;
  /// A list of classes with Durable Object namespaces that were renamed.
  final pulumi.Input<List<GetWorkerVersionsResultMigrationsRenamedClass>> renamedClasses;
  /// Migrations to apply in order.
  final pulumi.Input<List<GetWorkerVersionsResultMigrationsStep>> steps;
  /// A list of transfers for Durable Object namespaces from a different Worker and class to a class defined in this Worker.
  final pulumi.Input<List<GetWorkerVersionsResultMigrationsTransferredClass>> transferredClasses;

  /// Creates a new [GetWorkerVersionsResultMigrations].
  /// [deletedClasses] A list of classes to delete Durable Object namespaces from.
  /// [newClasses] A list of classes to create Durable Object namespaces from.
  /// [newSqliteClasses] A list of classes to create Durable Object namespaces with SQLite from.
  /// [newTag] Tag to set as the latest migration tag.
  /// [oldTag] Tag used to verify against the latest migration tag for this Worker. If they don't match, the upload is rejected.
  /// [renamedClasses] A list of classes with Durable Object namespaces that were renamed.
  /// [steps] Migrations to apply in order.
  /// [transferredClasses] A list of transfers for Durable Object namespaces from a different Worker and class to a class defined in this Worker.
  const GetWorkerVersionsResultMigrations({
    required this.deletedClasses,
    required this.newClasses,
    required this.newSqliteClasses,
    required this.newTag,
    required this.oldTag,
    required this.renamedClasses,
    required this.steps,
    required this.transferredClasses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletedClasses': deletedClasses,
      'newClasses': newClasses,
      'newSqliteClasses': newSqliteClasses,
      'newTag': newTag,
      'oldTag': oldTag,
      'renamedClasses': pulumi.Input.mapInputValue<List<GetWorkerVersionsResultMigrationsRenamedClass>, List<Map<String, dynamic>>>(renamedClasses, (value) => pulumi.Input.encodeList<GetWorkerVersionsResultMigrationsRenamedClass, Map<String, dynamic>>(value, (value) => value.toMap())),
      'steps': pulumi.Input.mapInputValue<List<GetWorkerVersionsResultMigrationsStep>, List<Map<String, dynamic>>>(steps, (value) => pulumi.Input.encodeList<GetWorkerVersionsResultMigrationsStep, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transferredClasses': pulumi.Input.mapInputValue<List<GetWorkerVersionsResultMigrationsTransferredClass>, List<Map<String, dynamic>>>(transferredClasses, (value) => pulumi.Input.encodeList<GetWorkerVersionsResultMigrationsTransferredClass, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetWorkerVersionsResultMigrations.fromMap(Map<String, dynamic> map) {
    return GetWorkerVersionsResultMigrations(
      deletedClasses: pulumi.Input.fromValue((map['deletedClasses'] as List).cast<String>()),
      newClasses: pulumi.Input.fromValue((map['newClasses'] as List).cast<String>()),
      newSqliteClasses: pulumi.Input.fromValue((map['newSqliteClasses'] as List).cast<String>()),
      newTag: pulumi.Input.fromValue(map['newTag'] as String),
      oldTag: pulumi.Input.fromValue(map['oldTag'] as String),
      renamedClasses: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkerVersionsResultMigrationsRenamedClass>(map['renamedClasses']!, (value) => GetWorkerVersionsResultMigrationsRenamedClass.fromMap((value as Map).cast<String, dynamic>()))),
      steps: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkerVersionsResultMigrationsStep>(map['steps']!, (value) => GetWorkerVersionsResultMigrationsStep.fromMap((value as Map).cast<String, dynamic>()))),
      transferredClasses: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkerVersionsResultMigrationsTransferredClass>(map['transferredClasses']!, (value) => GetWorkerVersionsResultMigrationsTransferredClass.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
