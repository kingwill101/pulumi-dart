// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_selector.dart';

/// VolumeNodeAffinity defines constraints that limit what nodes this volume can be accessed from.
class VolumeNodeAffinity {
  /// required specifies hard node constraints that must be met.
  final pulumi.Input<NodeSelector>? required;

  /// Creates a new [VolumeNodeAffinity].
  /// [required] required specifies hard node constraints that must be met.
  VolumeNodeAffinity({this.required});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'required':
          ?pulumi.Input.mapOptionalInputValue<
            NodeSelector,
            Map<String, dynamic>
          >(required, (value) => value.toMap()),
    };
  }

  factory VolumeNodeAffinity.fromMap(Map<String, dynamic> map) {
    return VolumeNodeAffinity(
      required: (() {
        final guardedValue = map['required'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NodeSelector.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
