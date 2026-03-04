// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exempt_priority_level_configuration_patch.dart';
import 'limited_priority_level_configuration_patch.dart';

/// PriorityLevelConfigurationSpec specifies the configuration of a priority level.
class PriorityLevelConfigurationSpecPatch {
  /// `exempt` specifies how requests are handled for an exempt priority level. This field MUST be empty if `type` is `"Limited"`. This field MAY be non-empty if `type` is `"Exempt"`. If empty and `type` is `"Exempt"` then the default values for `ExemptPriorityLevelConfiguration` apply.
  final pulumi.Input<ExemptPriorityLevelConfigurationPatch>? exempt;

  /// `limited` specifies how requests are handled for a Limited priority level. This field must be non-empty if and only if `type` is `"Limited"`.
  final pulumi.Input<LimitedPriorityLevelConfigurationPatch>? limited;

  /// `type` indicates whether this priority level is subject to limitation on request execution.  A value of `"Exempt"` means that requests of this priority level are not subject to a limit (and thus are never queued) and do not detract from the capacity made available to other priority levels.  A value of `"Limited"` means that (a) requests of this priority level _are_ subject to limits and (b) some of the server's limited capacity is made available exclusively to this priority level. Required.
  final pulumi.Input<String>? type;

  /// Creates a new [PriorityLevelConfigurationSpecPatch].
  /// [exempt] `exempt` specifies how requests are handled for an exempt priority level. This field MUST be empty if `type` is `"Limited"`. This field MAY be non-empty if `type` is `"Exempt"`. If empty and `type` is `"Exempt"` then the default values for `ExemptPriorityLevelConfiguration` apply.
  /// [limited] `limited` specifies how requests are handled for a Limited priority level. This field must be non-empty if and only if `type` is `"Limited"`.
  /// [type] `type` indicates whether this priority level is subject to limitation on request execution.  A value of `"Exempt"` means that requests of this priority level are not subject to a limit (and thus are never queued) and do not detract from the capacity made available to other priority levels.  A value of `"Limited"` means that (a) requests of this priority level _are_ subject to limits and (b) some of the server's limited capacity is made available exclusively to this priority level. Required.
  PriorityLevelConfigurationSpecPatch({this.exempt, this.limited, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exempt':
          ?pulumi.Input.mapOptionalInputValue<
            ExemptPriorityLevelConfigurationPatch,
            Map<String, dynamic>
          >(exempt, (value) => value.toMap()),
      'limited':
          ?pulumi.Input.mapOptionalInputValue<
            LimitedPriorityLevelConfigurationPatch,
            Map<String, dynamic>
          >(limited, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory PriorityLevelConfigurationSpecPatch.fromMap(
    Map<String, dynamic> map,
  ) {
    return PriorityLevelConfigurationSpecPatch(
      exempt: (() {
        final guardedValue = map['exempt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExemptPriorityLevelConfigurationPatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      limited: (() {
        final guardedValue = map['limited'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LimitedPriorityLevelConfigurationPatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
