// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_version_migrations_step_renamed_class.dart';
import 'worker_version_migrations_step_transferred_class.dart';

class WorkerVersionMigrationsStep {
  /// A list of classes to delete Durable Object namespaces from.
  final pulumi.Input<List<String>?>? deletedClasses;
  /// A list of classes to create Durable Object namespaces from.
  final pulumi.Input<List<String>?>? newClasses;
  /// A list of classes to create Durable Object namespaces with SQLite from.
  final pulumi.Input<List<String>?>? newSqliteClasses;
  /// A list of classes with Durable Object namespaces that were renamed.
  final pulumi.Input<List<WorkerVersionMigrationsStepRenamedClass>?>? renamedClasses;
  /// A list of transfers for Durable Object namespaces from a different Worker and class to a class defined in this Worker.
  final pulumi.Input<List<WorkerVersionMigrationsStepTransferredClass>?>? transferredClasses;

  /// Creates a new [WorkerVersionMigrationsStep].
  /// [deletedClasses] A list of classes to delete Durable Object namespaces from.
  /// [newClasses] A list of classes to create Durable Object namespaces from.
  /// [newSqliteClasses] A list of classes to create Durable Object namespaces with SQLite from.
  /// [renamedClasses] A list of classes with Durable Object namespaces that were renamed.
  /// [transferredClasses] A list of transfers for Durable Object namespaces from a different Worker and class to a class defined in this Worker.
  const WorkerVersionMigrationsStep({
    this.deletedClasses,
    this.newClasses,
    this.newSqliteClasses,
    this.renamedClasses,
    this.transferredClasses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletedClasses': ?deletedClasses,
      'newClasses': ?newClasses,
      'newSqliteClasses': ?newSqliteClasses,
      'renamedClasses': ?pulumi.Input.mapOptionalInputValue<List<WorkerVersionMigrationsStepRenamedClass>, List<Map<String, dynamic>>>(renamedClasses, (value) => pulumi.Input.encodeList<WorkerVersionMigrationsStepRenamedClass, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transferredClasses': ?pulumi.Input.mapOptionalInputValue<List<WorkerVersionMigrationsStepTransferredClass>, List<Map<String, dynamic>>>(transferredClasses, (value) => pulumi.Input.encodeList<WorkerVersionMigrationsStepTransferredClass, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WorkerVersionMigrationsStep.fromMap(Map<String, dynamic> map) {
    return WorkerVersionMigrationsStep(
      deletedClasses: (() { final guardedValue = map['deletedClasses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      newClasses: (() { final guardedValue = map['newClasses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      newSqliteClasses: (() { final guardedValue = map['newSqliteClasses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      renamedClasses: (() { final guardedValue = map['renamedClasses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerVersionMigrationsStepRenamedClass>(guardedValue, (value) => WorkerVersionMigrationsStepRenamedClass.fromMap((value as Map).cast<String, dynamic>()))); })(),
      transferredClasses: (() { final guardedValue = map['transferredClasses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerVersionMigrationsStepTransferredClass>(guardedValue, (value) => WorkerVersionMigrationsStepTransferredClass.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
