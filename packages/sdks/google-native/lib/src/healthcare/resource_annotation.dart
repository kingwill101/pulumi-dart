// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource level annotation.
class ResourceAnnotation {
  /// A description of the annotation record.
  final pulumi.Input<String>? label;

  /// Creates a new [ResourceAnnotation].
  /// [label] A description of the annotation record.
  ResourceAnnotation({
    this.label,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': ?label,
    };
  }

  factory ResourceAnnotation.fromMap(Map<String, dynamic> map) {
    return ResourceAnnotation(
      label: map['label'] == null ? null : (map['label'] as String).input(),
    );
  }
}

