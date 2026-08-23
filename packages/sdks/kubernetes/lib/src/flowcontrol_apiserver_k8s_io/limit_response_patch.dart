// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'queuing_configuration_patch.dart';

/// LimitResponse defines how to handle requests that can not be executed right now.
class LimitResponsePatch {
  /// `queuing` holds the configuration parameters for queuing. This field may be non-empty only if `type` is `"Queue"`.
  final pulumi.Input<QueuingConfigurationPatch>? queuing;
  /// `type` is "Queue" or "Reject". "Queue" means that requests that can not be executed upon arrival are held in a queue until they can be executed or a queuing limit is reached. "Reject" means that requests that can not be executed upon arrival are rejected. Required.
  final pulumi.Input<String>? type;

  /// Creates a new [LimitResponsePatch].
  /// [queuing] `queuing` holds the configuration parameters for queuing. This field may be non-empty only if `type` is `"Queue"`.
  /// [type] `type` is "Queue" or "Reject". "Queue" means that requests that can not be executed upon arrival are held in a queue until they can be executed or a queuing limit is reached. "Reject" means that requests that can not be executed upon arrival are rejected. Required.
  const LimitResponsePatch({
    this.queuing,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queuing': ?pulumi.Input.mapOptionalInputValue<QueuingConfigurationPatch, Map<String, dynamic>>(queuing, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory LimitResponsePatch.fromMap(Map<String, dynamic> map) {
    return LimitResponsePatch(
      queuing: (() { final guardedValue = map['queuing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QueuingConfigurationPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
