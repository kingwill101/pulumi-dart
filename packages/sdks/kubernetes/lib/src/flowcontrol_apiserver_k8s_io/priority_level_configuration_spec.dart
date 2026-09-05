// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exempt_priority_level_configuration.dart';
import 'limited_priority_level_configuration.dart';

/// PriorityLevelConfigurationSpec specifies the configuration of a priority level.
class PriorityLevelConfigurationSpec {
  /// `exempt` specifies how requests are handled for an exempt priority level. This field MUST be empty if `type` is `"Limited"`. This field MAY be non-empty if `type` is `"Exempt"`. If empty and `type` is `"Exempt"` then the default values for `ExemptPriorityLevelConfiguration` apply.
  final pulumi.Input<ExemptPriorityLevelConfiguration?>? exempt;
  /// `limited` specifies how requests are handled for a Limited priority level. This field must be non-empty if and only if `type` is `"Limited"`.
  final pulumi.Input<LimitedPriorityLevelConfiguration?>? limited;
  /// `type` indicates whether this priority level is subject to limitation on request execution.  A value of `"Exempt"` means that requests of this priority level are not subject to a limit (and thus are never queued) and do not detract from the capacity made available to other priority levels.  A value of `"Limited"` means that (a) requests of this priority level _are_ subject to limits and (b) some of the server's limited capacity is made available exclusively to this priority level. Required.
  final pulumi.Input<String> type;

  /// Creates a new [PriorityLevelConfigurationSpec].
  /// [exempt] `exempt` specifies how requests are handled for an exempt priority level. This field MUST be empty if `type` is `"Limited"`. This field MAY be non-empty if `type` is `"Exempt"`. If empty and `type` is `"Exempt"` then the default values for `ExemptPriorityLevelConfiguration` apply.
  /// [limited] `limited` specifies how requests are handled for a Limited priority level. This field must be non-empty if and only if `type` is `"Limited"`.
  /// [type] `type` indicates whether this priority level is subject to limitation on request execution.  A value of `"Exempt"` means that requests of this priority level are not subject to a limit (and thus are never queued) and do not detract from the capacity made available to other priority levels.  A value of `"Limited"` means that (a) requests of this priority level _are_ subject to limits and (b) some of the server's limited capacity is made available exclusively to this priority level. Required.
  const PriorityLevelConfigurationSpec({
    this.exempt,
    this.limited,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exempt': ?pulumi.Input.mapOptionalInputValue<ExemptPriorityLevelConfiguration, Map<String, dynamic>>(exempt, (value) => value.toMap()),
      'limited': ?pulumi.Input.mapOptionalInputValue<LimitedPriorityLevelConfiguration, Map<String, dynamic>>(limited, (value) => value.toMap()),
      'type': type,
    };
  }

  factory PriorityLevelConfigurationSpec.fromMap(Map<String, dynamic> map) {
    return PriorityLevelConfigurationSpec(
      exempt: (() { final guardedValue = map['exempt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExemptPriorityLevelConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      limited: (() { final guardedValue = map['limited']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LimitedPriorityLevelConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
