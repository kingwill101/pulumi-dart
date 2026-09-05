// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DisruptionMode defines how individual entities within a group can be disrupted. Exactly one mode can be set.
class DisruptionModePatch {
  /// all specifies that all children can only be disrupted together.
  final pulumi.Input<Map<String, dynamic>?>? all;
  /// single specifies that children can be disrupted independently from each other.
  final pulumi.Input<Map<String, dynamic>?>? single;

  /// Creates a new [DisruptionModePatch].
  /// [all] all specifies that all children can only be disrupted together.
  /// [single] single specifies that children can be disrupted independently from each other.
  const DisruptionModePatch({
    this.all,
    this.single,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': ?all,
      'single': ?single,
    };
  }

  factory DisruptionModePatch.fromMap(Map<String, dynamic> map) {
    return DisruptionModePatch(
      all: (() { final guardedValue = map['all']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      single: (() { final guardedValue = map['single']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
