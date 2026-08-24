// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_version_migrations_renamed_class.dart';
import 'worker_version_migrations_step.dart';
import 'worker_version_migrations_transferred_class.dart';

class WorkerVersionMigrations {
  /// A list of classes to delete Durable Object namespaces from.
  final pulumi.Input<List<String>?>? deletedClasses;
  /// A list of classes to create Durable Object namespaces from.
  final pulumi.Input<List<String>?>? newClasses;
  /// A list of classes to create Durable Object namespaces with SQLite from.
  final pulumi.Input<List<String>?>? newSqliteClasses;
  /// Tag to set as the latest migration tag.
  final pulumi.Input<String?>? newTag;
  /// Tag used to verify against the latest migration tag for this Worker. If they don't match, the upload is rejected.
  final pulumi.Input<String?>? oldTag;
  /// A list of classes with Durable Object namespaces that were renamed.
  final pulumi.Input<List<WorkerVersionMigrationsRenamedClass>?>? renamedClasses;
  /// Migrations to apply in order.
  final pulumi.Input<List<WorkerVersionMigrationsStep>?>? steps;
  /// A list of transfers for Durable Object namespaces from a different Worker and class to a class defined in this Worker.
  final pulumi.Input<List<WorkerVersionMigrationsTransferredClass>?>? transferredClasses;

  /// Creates a new [WorkerVersionMigrations].
  /// [deletedClasses] A list of classes to delete Durable Object namespaces from.
  /// [newClasses] A list of classes to create Durable Object namespaces from.
  /// [newSqliteClasses] A list of classes to create Durable Object namespaces with SQLite from.
  /// [newTag] Tag to set as the latest migration tag.
  /// [oldTag] Tag used to verify against the latest migration tag for this Worker. If they don't match, the upload is rejected.
  /// [renamedClasses] A list of classes with Durable Object namespaces that were renamed.
  /// [steps] Migrations to apply in order.
  /// [transferredClasses] A list of transfers for Durable Object namespaces from a different Worker and class to a class defined in this Worker.
  const WorkerVersionMigrations({
    this.deletedClasses,
    this.newClasses,
    this.newSqliteClasses,
    this.newTag,
    this.oldTag,
    this.renamedClasses,
    this.steps,
    this.transferredClasses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletedClasses': ?deletedClasses,
      'newClasses': ?newClasses,
      'newSqliteClasses': ?newSqliteClasses,
      'newTag': ?newTag,
      'oldTag': ?oldTag,
      'renamedClasses': ?pulumi.Input.mapOptionalInputValue<List<WorkerVersionMigrationsRenamedClass>, List<Map<String, dynamic>>>(renamedClasses, (value) => pulumi.Input.encodeList<WorkerVersionMigrationsRenamedClass, Map<String, dynamic>>(value, (value) => value.toMap())),
      'steps': ?pulumi.Input.mapOptionalInputValue<List<WorkerVersionMigrationsStep>, List<Map<String, dynamic>>>(steps, (value) => pulumi.Input.encodeList<WorkerVersionMigrationsStep, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transferredClasses': ?pulumi.Input.mapOptionalInputValue<List<WorkerVersionMigrationsTransferredClass>, List<Map<String, dynamic>>>(transferredClasses, (value) => pulumi.Input.encodeList<WorkerVersionMigrationsTransferredClass, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WorkerVersionMigrations.fromMap(Map<String, dynamic> map) {
    return WorkerVersionMigrations(
      deletedClasses: (() { final guardedValue = map['deletedClasses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      newClasses: (() { final guardedValue = map['newClasses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      newSqliteClasses: (() { final guardedValue = map['newSqliteClasses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      newTag: (() { final guardedValue = map['newTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oldTag: (() { final guardedValue = map['oldTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      renamedClasses: (() { final guardedValue = map['renamedClasses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerVersionMigrationsRenamedClass>(guardedValue, (value) => WorkerVersionMigrationsRenamedClass.fromMap((value as Map).cast<String, dynamic>()))); })(),
      steps: (() { final guardedValue = map['steps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerVersionMigrationsStep>(guardedValue, (value) => WorkerVersionMigrationsStep.fromMap((value as Map).cast<String, dynamic>()))); })(),
      transferredClasses: (() { final guardedValue = map['transferredClasses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerVersionMigrationsTransferredClass>(guardedValue, (value) => WorkerVersionMigrationsTransferredClass.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
