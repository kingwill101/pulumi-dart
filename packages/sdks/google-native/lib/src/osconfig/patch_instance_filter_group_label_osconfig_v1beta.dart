// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a group of VMs that can be identified as having all these labels, for example "env=prod and app=web".
class PatchInstanceFilterGroupLabelOsconfigV1beta {
  /// Compute Engine instance labels that must be present for a VM instance to be targeted by this filter.
  final pulumi.Input<Map<String, String>>? labels;

  /// Creates a new [PatchInstanceFilterGroupLabelOsconfigV1beta].
  /// [labels] Compute Engine instance labels that must be present for a VM instance to be targeted by this filter.
  const PatchInstanceFilterGroupLabelOsconfigV1beta({
    this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
    };
  }

  factory PatchInstanceFilterGroupLabelOsconfigV1beta.fromMap(Map<String, dynamic> map) {
    return PatchInstanceFilterGroupLabelOsconfigV1beta(
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
