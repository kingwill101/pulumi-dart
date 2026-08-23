// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_attribute.dart';

/// AutomationResourceSelector contains the information to select the resources to which an Automation is going to be applied.
class AutomationResourceSelector {
  /// Contains attributes about a target.
  final pulumi.Input<List<TargetAttribute>>? targets;

  /// Creates a new [AutomationResourceSelector].
  /// [targets] Contains attributes about a target.
  const AutomationResourceSelector({
    this.targets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targets': ?pulumi.Input.mapOptionalInputValue<List<TargetAttribute>, List<Map<String, dynamic>>>(targets, (value) => pulumi.Input.encodeList<TargetAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AutomationResourceSelector.fromMap(Map<String, dynamic> map) {
    return AutomationResourceSelector(
      targets: (() { final guardedValue = map['targets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TargetAttribute>(guardedValue, (value) => TargetAttribute.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
