// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CompositeDisruptionMode defines how individual entities within a composite pod group can be disrupted. Exactly one mode must be set.
class CompositeDisruptionMode {
  /// all specifies that all children groups can only be disrupted together.
  final pulumi.Input<Map<String, dynamic>?>? all;
  /// single specifies that children groups can be disrupted independently from each other.
  final pulumi.Input<Map<String, dynamic>?>? single;

  /// Creates a new [CompositeDisruptionMode].
  /// [all] all specifies that all children groups can only be disrupted together.
  /// [single] single specifies that children groups can be disrupted independently from each other.
  const CompositeDisruptionMode({
    this.all,
    this.single,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': ?all,
      'single': ?single,
    };
  }

  factory CompositeDisruptionMode.fromMap(Map<String, dynamic> map) {
    return CompositeDisruptionMode(
      all: (() { final guardedValue = map['all']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      single: (() { final guardedValue = map['single']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
