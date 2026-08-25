// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GlobalVmExtensionPolicyInstanceSelectorLabelSelector {
  /// Labels as key value pairs.
  final pulumi.Input<Map<String, String>?>? inclusionLabels;

  /// Creates a new [GlobalVmExtensionPolicyInstanceSelectorLabelSelector].
  /// [inclusionLabels] Labels as key value pairs.
  const GlobalVmExtensionPolicyInstanceSelectorLabelSelector({
    this.inclusionLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inclusionLabels': ?inclusionLabels,
    };
  }

  factory GlobalVmExtensionPolicyInstanceSelectorLabelSelector.fromMap(Map<String, dynamic> map) {
    return GlobalVmExtensionPolicyInstanceSelectorLabelSelector(
      inclusionLabels: (() { final guardedValue = map['inclusionLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
