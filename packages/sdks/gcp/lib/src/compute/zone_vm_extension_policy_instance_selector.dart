// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_vm_extension_policy_instance_selector_label_selector.dart';

class ZoneVmExtensionPolicyInstanceSelector {
  /// LabelSelector matches VM labels.
  /// Structure is documented below.
  final pulumi.Input<ZoneVmExtensionPolicyInstanceSelectorLabelSelector?>? labelSelector;

  /// Creates a new [ZoneVmExtensionPolicyInstanceSelector].
  /// [labelSelector] LabelSelector matches VM labels.
  const ZoneVmExtensionPolicyInstanceSelector({
    this.labelSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelSelector': ?pulumi.Input.mapOptionalInputValue<ZoneVmExtensionPolicyInstanceSelectorLabelSelector, Map<String, dynamic>>(labelSelector, (value) => value.toMap()),
    };
  }

  factory ZoneVmExtensionPolicyInstanceSelector.fromMap(Map<String, dynamic> map) {
    return ZoneVmExtensionPolicyInstanceSelector(
      labelSelector: (() { final guardedValue = map['labelSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZoneVmExtensionPolicyInstanceSelectorLabelSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
