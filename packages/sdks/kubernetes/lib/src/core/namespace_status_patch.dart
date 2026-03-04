// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_condition_patch.dart';

/// NamespaceStatus is information about the current status of a Namespace.
class NamespaceStatusPatch {
  /// Represents the latest available observations of a namespace's current state.
  final pulumi.Input<List<NamespaceConditionPatch>>? conditions;

  /// Phase is the current lifecycle phase of the namespace. More info: https://kubernetes.io/docs/tasks/administer-cluster/namespaces/
  final pulumi.Input<String>? phase;

  /// Creates a new [NamespaceStatusPatch].
  /// [conditions] Represents the latest available observations of a namespace's current state.
  /// [phase] Phase is the current lifecycle phase of the namespace. More info: https://kubernetes.io/docs/tasks/administer-cluster/namespaces/
  NamespaceStatusPatch({this.conditions, this.phase});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions':
          ?pulumi.Input.mapOptionalInputValue<
            List<NamespaceConditionPatch>,
            List<Map<String, dynamic>>
          >(
            conditions,
            (value) =>
                pulumi.Input.encodeList<
                  NamespaceConditionPatch,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'phase': ?phase,
    };
  }

  factory NamespaceStatusPatch.fromMap(Map<String, dynamic> map) {
    return NamespaceStatusPatch(
      conditions: (() {
        final guardedValue = map['conditions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NamespaceConditionPatch>(
            guardedValue,
            (value) => NamespaceConditionPatch.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      phase: (() {
        final guardedValue = map['phase'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
