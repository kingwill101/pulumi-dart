// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterPscServiceAttachment {
  /// (Output)
  /// Type of a PSC connection targeting this service attachment.
  final pulumi.Input<String>? connectionType;
  /// (Output)
  /// Service attachment URI which your self-created PscConnection should use as
  final pulumi.Input<String>? serviceAttachment;

  /// Creates a new [ClusterPscServiceAttachment].
  /// [connectionType] (Output)
  /// [serviceAttachment] (Output)
  ClusterPscServiceAttachment({
    this.connectionType,
    this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionType': ?connectionType,
      'serviceAttachment': ?serviceAttachment,
    };
  }

  factory ClusterPscServiceAttachment.fromMap(Map<String, dynamic> map) {
    return ClusterPscServiceAttachment(
      connectionType: (() { final guardedValue = map['connectionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAttachment: (() { final guardedValue = map['serviceAttachment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

