// ignore_for_file: unused_element, unnecessary_cast

import 'queuing_configuration_patch.dart';

/// LimitResponse defines how to handle requests that can not be executed right now.
class LimitResponsePatch {
  /// `queuing` holds the configuration parameters for queuing. This field may be non-empty only if `type` is `"Queue"`.
  final QueuingConfigurationPatch? queuing;
  /// `type` is "Queue" or "Reject". "Queue" means that requests that can not be executed upon arrival are held in a queue until they can be executed or a queuing limit is reached. "Reject" means that requests that can not be executed upon arrival are rejected. Required.
  final String? type;

  /// Creates a new [LimitResponsePatch].
  /// [queuing] `queuing` holds the configuration parameters for queuing. This field may be non-empty only if `type` is `"Queue"`.
  /// [type] `type` is "Queue" or "Reject". "Queue" means that requests that can not be executed upon arrival are held in a queue until they can be executed or a queuing limit is reached. "Reject" means that requests that can not be executed upon arrival are rejected. Required.
  LimitResponsePatch({
    this.queuing,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queuing': ?queuing == null ? null : queuing!.toMap(),
      'type': ?type,
    };
  }

  factory LimitResponsePatch.fromMap(Map<String, dynamic> map) {
    return LimitResponsePatch(
      queuing: map['queuing'] == null ? null : QueuingConfigurationPatch.fromMap((map['queuing'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

