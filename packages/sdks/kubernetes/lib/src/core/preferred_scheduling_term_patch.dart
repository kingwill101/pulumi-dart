// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_selector_term_patch.dart';

/// An empty preferred scheduling term matches all objects with implicit weight 0 (i.e. it's a no-op). A null preferred scheduling term matches no objects (i.e. is also a no-op).
class PreferredSchedulingTermPatch {
  /// A node selector term, associated with the corresponding weight.
  final pulumi.Input<NodeSelectorTermPatch>? preference;
  /// Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.
  final pulumi.Input<int>? weight;

  /// Creates a new [PreferredSchedulingTermPatch].
  /// [preference] A node selector term, associated with the corresponding weight.
  /// [weight] Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.
  PreferredSchedulingTermPatch({
    this.preference,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preference': ?pulumi.Input.mapOptionalInputValue<NodeSelectorTermPatch, Map<String, dynamic>>(preference, (value) => value.toMap()),
      'weight': ?weight,
    };
  }

  factory PreferredSchedulingTermPatch.fromMap(Map<String, dynamic> map) {
    return PreferredSchedulingTermPatch(
      preference: (() { final guardedValue = map['preference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeSelectorTermPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

