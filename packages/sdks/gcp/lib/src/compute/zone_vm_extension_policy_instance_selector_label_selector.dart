// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZoneVmExtensionPolicyInstanceSelectorLabelSelector {
  /// A map of key-value pairs representing VM labels.
  final pulumi.Input<Map<String, String>>? inclusionLabels;

  /// Creates a new [ZoneVmExtensionPolicyInstanceSelectorLabelSelector].
  /// [inclusionLabels] A map of key-value pairs representing VM labels.
  const ZoneVmExtensionPolicyInstanceSelectorLabelSelector({
    this.inclusionLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inclusionLabels': ?inclusionLabels,
    };
  }

  factory ZoneVmExtensionPolicyInstanceSelectorLabelSelector.fromMap(Map<String, dynamic> map) {
    return ZoneVmExtensionPolicyInstanceSelectorLabelSelector(
      inclusionLabels: (() { final guardedValue = map['inclusionLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
