// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespaced_name.dart';

/// A list of namespaced Kubernetes resources.
class NamespacedNames {
  /// Optional. A list of namespaced Kubernetes resources.
  final pulumi.Input<List<NamespacedName>>? namespacedNames;

  /// Creates a new [NamespacedNames].
  /// [namespacedNames] Optional. A list of namespaced Kubernetes resources.
  NamespacedNames({
    this.namespacedNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespacedNames': ?pulumi.Input.mapOptionalInputValue<List<NamespacedName>, List<Map<String, dynamic>>>(namespacedNames, (value) => pulumi.Input.encodeList<NamespacedName, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NamespacedNames.fromMap(Map<String, dynamic> map) {
    return NamespacedNames(
      namespacedNames: (() { final guardedValue = map['namespacedNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NamespacedName>(guardedValue, (value) => NamespacedName.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

