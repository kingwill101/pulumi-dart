// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ScaleStatus represents the current status of a scale subresource.
class ScaleStatus {
  /// replicas is the actual number of observed instances of the scaled object.
  final pulumi.Input<int> replicas;
  /// selector is the label query over pods that should match the replicas count. This is same as the label selector but in the string format to avoid introspection by clients. The string will be in the same format as the query-param syntax. More info about label selectors: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/
  final pulumi.Input<String>? selector;

  /// Creates a new [ScaleStatus].
  /// [replicas] replicas is the actual number of observed instances of the scaled object.
  /// [selector] selector is the label query over pods that should match the replicas count. This is same as the label selector but in the string format to avoid introspection by clients. The string will be in the same format as the query-param syntax. More info about label selectors: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/
  ScaleStatus({
    required this.replicas,
    this.selector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicas': replicas,
      'selector': ?selector,
    };
  }

  factory ScaleStatus.fromMap(Map<String, dynamic> map) {
    return ScaleStatus(
      replicas: (map['replicas'] as int).input(),
      selector: map['selector'] == null ? null : (map['selector'] as String).input(),
    );
  }
}

