// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workers_script_migrations_renamed_class.dart';
import 'workers_script_migrations_step.dart';
import 'workers_script_migrations_transferred_class.dart';

class WorkersScriptMigrations {
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
  final pulumi.Input<List<WorkersScriptMigrationsRenamedClass>?>? renamedClasses;
  /// Migrations to apply in order.
  final pulumi.Input<List<WorkersScriptMigrationsStep>?>? steps;
  /// A list of transfers for Durable Object namespaces from a different Worker and class to a class defined in this Worker.
  final pulumi.Input<List<WorkersScriptMigrationsTransferredClass>?>? transferredClasses;

  /// Creates a new [WorkersScriptMigrations].
  /// [deletedClasses] A list of classes to delete Durable Object namespaces from.
  /// [newClasses] A list of classes to create Durable Object namespaces from.
  /// [newSqliteClasses] A list of classes to create Durable Object namespaces with SQLite from.
  /// [newTag] Tag to set as the latest migration tag.
  /// [oldTag] Tag used to verify against the latest migration tag for this Worker. If they don't match, the upload is rejected.
  /// [renamedClasses] A list of classes with Durable Object namespaces that were renamed.
  /// [steps] Migrations to apply in order.
  /// [transferredClasses] A list of transfers for Durable Object namespaces from a different Worker and class to a class defined in this Worker.
  const WorkersScriptMigrations({
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
      'renamedClasses': ?pulumi.Input.mapOptionalInputValue<List<WorkersScriptMigrationsRenamedClass>, List<Map<String, dynamic>>>(renamedClasses, (value) => pulumi.Input.encodeList<WorkersScriptMigrationsRenamedClass, Map<String, dynamic>>(value, (value) => value.toMap())),
      'steps': ?pulumi.Input.mapOptionalInputValue<List<WorkersScriptMigrationsStep>, List<Map<String, dynamic>>>(steps, (value) => pulumi.Input.encodeList<WorkersScriptMigrationsStep, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transferredClasses': ?pulumi.Input.mapOptionalInputValue<List<WorkersScriptMigrationsTransferredClass>, List<Map<String, dynamic>>>(transferredClasses, (value) => pulumi.Input.encodeList<WorkersScriptMigrationsTransferredClass, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WorkersScriptMigrations.fromMap(Map<String, dynamic> map) {
    return WorkersScriptMigrations(
      deletedClasses: (() { final guardedValue = map['deletedClasses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      newClasses: (() { final guardedValue = map['newClasses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      newSqliteClasses: (() { final guardedValue = map['newSqliteClasses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      newTag: (() { final guardedValue = map['newTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oldTag: (() { final guardedValue = map['oldTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      renamedClasses: (() { final guardedValue = map['renamedClasses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkersScriptMigrationsRenamedClass>(guardedValue, (value) => WorkersScriptMigrationsRenamedClass.fromMap((value as Map).cast<String, dynamic>()))); })(),
      steps: (() { final guardedValue = map['steps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkersScriptMigrationsStep>(guardedValue, (value) => WorkersScriptMigrationsStep.fromMap((value as Map).cast<String, dynamic>()))); })(),
      transferredClasses: (() { final guardedValue = map['transferredClasses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkersScriptMigrationsTransferredClass>(guardedValue, (value) => WorkersScriptMigrationsTransferredClass.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
