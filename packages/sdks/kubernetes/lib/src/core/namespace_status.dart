// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_condition.dart';

/// NamespaceStatus is information about the current status of a Namespace.
class NamespaceStatus {
  /// Represents the latest available observations of a namespace's current state.
  final List<NamespaceCondition>? conditions;
  /// Phase is the current lifecycle phase of the namespace. More info: https://kubernetes.io/docs/tasks/administer-cluster/namespaces/
  final String? phase;

  /// Creates a new [NamespaceStatus].
  /// [conditions] Represents the latest available observations of a namespace's current state.
  /// [phase] Phase is the current lifecycle phase of the namespace. More info: https://kubernetes.io/docs/tasks/administer-cluster/namespaces/
  NamespaceStatus({
    this.conditions,
    this.phase,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<NamespaceCondition, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
      'phase': ?phase,
    };
  }

  factory NamespaceStatus.fromMap(Map<String, dynamic> map) {
    return NamespaceStatus(
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<NamespaceCondition>(map['conditions'], (value) => NamespaceCondition.fromMap((value as Map).cast<String, dynamic>())),
      phase: map['phase'] == null ? null : map['phase'] as String,
    );
  }
}

