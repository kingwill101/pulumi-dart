// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_worker_versions_result_migrations_step_renamed_class.dart';
import 'get_worker_versions_result_migrations_step_transferred_class.dart';

class GetWorkerVersionsResultMigrationsStep {
  /// A list of classes to delete Durable Object namespaces from.
  final pulumi.Input<List<String>> deletedClasses;
  /// A list of classes to create Durable Object namespaces from.
  final pulumi.Input<List<String>> newClasses;
  /// A list of classes to create Durable Object namespaces with SQLite from.
  final pulumi.Input<List<String>> newSqliteClasses;
  /// A list of classes with Durable Object namespaces that were renamed.
  final pulumi.Input<List<GetWorkerVersionsResultMigrationsStepRenamedClass>> renamedClasses;
  /// A list of transfers for Durable Object namespaces from a different Worker and class to a class defined in this Worker.
  final pulumi.Input<List<GetWorkerVersionsResultMigrationsStepTransferredClass>> transferredClasses;

  /// Creates a new [GetWorkerVersionsResultMigrationsStep].
  /// [deletedClasses] A list of classes to delete Durable Object namespaces from.
  /// [newClasses] A list of classes to create Durable Object namespaces from.
  /// [newSqliteClasses] A list of classes to create Durable Object namespaces with SQLite from.
  /// [renamedClasses] A list of classes with Durable Object namespaces that were renamed.
  /// [transferredClasses] A list of transfers for Durable Object namespaces from a different Worker and class to a class defined in this Worker.
  const GetWorkerVersionsResultMigrationsStep({
    required this.deletedClasses,
    required this.newClasses,
    required this.newSqliteClasses,
    required this.renamedClasses,
    required this.transferredClasses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletedClasses': deletedClasses,
      'newClasses': newClasses,
      'newSqliteClasses': newSqliteClasses,
      'renamedClasses': pulumi.Input.mapInputValue<List<GetWorkerVersionsResultMigrationsStepRenamedClass>, List<Map<String, dynamic>>>(renamedClasses, (value) => pulumi.Input.encodeList<GetWorkerVersionsResultMigrationsStepRenamedClass, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transferredClasses': pulumi.Input.mapInputValue<List<GetWorkerVersionsResultMigrationsStepTransferredClass>, List<Map<String, dynamic>>>(transferredClasses, (value) => pulumi.Input.encodeList<GetWorkerVersionsResultMigrationsStepTransferredClass, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetWorkerVersionsResultMigrationsStep.fromMap(Map<String, dynamic> map) {
    return GetWorkerVersionsResultMigrationsStep(
      deletedClasses: pulumi.Input.fromValue((map['deletedClasses'] as List).cast<String>()),
      newClasses: pulumi.Input.fromValue((map['newClasses'] as List).cast<String>()),
      newSqliteClasses: pulumi.Input.fromValue((map['newSqliteClasses'] as List).cast<String>()),
      renamedClasses: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkerVersionsResultMigrationsStepRenamedClass>(map['renamedClasses']!, (value) => GetWorkerVersionsResultMigrationsStepRenamedClass.fromMap((value as Map).cast<String, dynamic>()))),
      transferredClasses: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkerVersionsResultMigrationsStepTransferredClass>(map['transferredClasses']!, (value) => GetWorkerVersionsResultMigrationsStepTransferredClass.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
