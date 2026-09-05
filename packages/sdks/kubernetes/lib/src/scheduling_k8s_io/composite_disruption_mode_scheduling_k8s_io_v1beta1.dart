// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CompositeDisruptionMode defines how individual entities within a composite pod group can be disrupted. Exactly one mode must be set.
class CompositeDisruptionModeSchedulingK8sIoV1beta1 {
  /// all specifies that all children groups can only be disrupted together.
  final pulumi.Input<Map<String, dynamic>?>? all;
  /// single specifies that children groups can be disrupted independently from each other.
  final pulumi.Input<Map<String, dynamic>?>? single;

  /// Creates a new [CompositeDisruptionModeSchedulingK8sIoV1beta1].
  /// [all] all specifies that all children groups can only be disrupted together.
  /// [single] single specifies that children groups can be disrupted independently from each other.
  const CompositeDisruptionModeSchedulingK8sIoV1beta1({
    this.all,
    this.single,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': ?all,
      'single': ?single,
    };
  }

  factory CompositeDisruptionModeSchedulingK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return CompositeDisruptionModeSchedulingK8sIoV1beta1(
      all: (() { final guardedValue = map['all']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      single: (() { final guardedValue = map['single']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
