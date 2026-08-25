// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_vm_extension_policy_instance_selector_label_selector.dart';

class GlobalVmExtensionPolicyInstanceSelector {
  /// LabelSelector matches VM labels.
  /// Structure is documented below.
  final pulumi.Input<GlobalVmExtensionPolicyInstanceSelectorLabelSelector?>? labelSelector;

  /// Creates a new [GlobalVmExtensionPolicyInstanceSelector].
  /// [labelSelector] LabelSelector matches VM labels.
  const GlobalVmExtensionPolicyInstanceSelector({
    this.labelSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelSelector': ?pulumi.Input.mapOptionalInputValue<GlobalVmExtensionPolicyInstanceSelectorLabelSelector, Map<String, dynamic>>(labelSelector, (value) => value.toMap()),
    };
  }

  factory GlobalVmExtensionPolicyInstanceSelector.fromMap(Map<String, dynamic> map) {
    return GlobalVmExtensionPolicyInstanceSelector(
      labelSelector: (() { final guardedValue = map['labelSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GlobalVmExtensionPolicyInstanceSelectorLabelSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
