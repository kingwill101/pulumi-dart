// ignore_for_file: unused_element, unnecessary_cast

import 'queuing_configuration.dart';

/// LimitResponse defines how to handle requests that can not be executed right now.
class LimitResponse {
  /// `queuing` holds the configuration parameters for queuing. This field may be non-empty only if `type` is `"Queue"`.
  final QueuingConfiguration? queuing;
  /// `type` is "Queue" or "Reject". "Queue" means that requests that can not be executed upon arrival are held in a queue until they can be executed or a queuing limit is reached. "Reject" means that requests that can not be executed upon arrival are rejected. Required.
  final String type;

  /// Creates a new [LimitResponse].
  /// [queuing] `queuing` holds the configuration parameters for queuing. This field may be non-empty only if `type` is `"Queue"`.
  /// [type] `type` is "Queue" or "Reject". "Queue" means that requests that can not be executed upon arrival are held in a queue until they can be executed or a queuing limit is reached. "Reject" means that requests that can not be executed upon arrival are rejected. Required.
  LimitResponse({
    this.queuing,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queuing': ?queuing == null ? null : queuing!.toMap(),
      'type': type,
    };
  }

  factory LimitResponse.fromMap(Map<String, dynamic> map) {
    return LimitResponse(
      queuing: map['queuing'] == null ? null : QueuingConfiguration.fromMap((map['queuing'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

