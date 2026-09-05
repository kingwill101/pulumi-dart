// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ResponderStatus represents the last observed status of the eviction process of the responder. It should be only updated by the designated responder whose name is .name field.
class ResponderStatus {
  /// completionTime tracks the time at which the Responder stopped processing the eviction request. Completion means that the responders has either fully or partially completed the eviction process, which may have resulted in target eviction (e.g. pod termination). It should reflect the present time when set. This field becomes immutable once set.
  final pulumi.Input<String?>? completionTime;
  /// expectedCompletionTime is the time at which the eviction process step is expected to end for the responder. The time cannot be set to the past. May be omitted if no estimate can be made.
  final pulumi.Input<String?>? expectedCompletionTime;
  /// heartbeatTime is the last time at which the eviction process was reported to be in progress by the responder. It should reflect the present time when set. Responders should avoid heartbeats more frequent than 20 seconds to avoid overloading the control-plane.
  final pulumi.Input<String?>? heartbeatTime;
  /// message provides human-readable details about the state of the responder and the eviction process. Maximum length is 4000 characters.
  final pulumi.Input<String?>? message;
  /// name allows you to identify the responder reacting to the Eviction.
  ///
  /// It must be a valid domain-prefixed key (such as "acme.io/foo"). This field is initialized by Kubernetes and must be unique for each responder. This field is required.
  final pulumi.Input<String> name;
  /// startTime tracks the time at which this responder was designated as active and should start processing the eviction request. It should reflect the present time when set. This field is initialized by Kubernetes when this responder becomes active. This field becomes immutable once set.
  final pulumi.Input<String?>? startTime;

  /// Creates a new [ResponderStatus].
  /// [completionTime] completionTime tracks the time at which the Responder stopped processing the eviction request. Completion means that the responders has either fully or partially completed the eviction process, which may have resulted in target eviction (e.g. pod termination). It should reflect the present time when set. This field becomes immutable once set.
  /// [expectedCompletionTime] expectedCompletionTime is the time at which the eviction process step is expected to end for the responder. The time cannot be set to the past. May be omitted if no estimate can be made.
  /// [heartbeatTime] heartbeatTime is the last time at which the eviction process was reported to be in progress by the responder. It should reflect the present time when set. Responders should avoid heartbeats more frequent than 20 seconds to avoid overloading the control-plane.
  /// [message] message provides human-readable details about the state of the responder and the eviction process. Maximum length is 4000 characters.
  /// [name] name allows you to identify the responder reacting to the Eviction.
  /// [startTime] startTime tracks the time at which this responder was designated as active and should start processing the eviction request. It should reflect the present time when set. This field is initialized by Kubernetes when this responder becomes active. This field becomes immutable once set.
  const ResponderStatus({
    this.completionTime,
    this.expectedCompletionTime,
    this.heartbeatTime,
    this.message,
    required this.name,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completionTime': ?completionTime,
      'expectedCompletionTime': ?expectedCompletionTime,
      'heartbeatTime': ?heartbeatTime,
      'message': ?message,
      'name': name,
      'startTime': ?startTime,
    };
  }

  factory ResponderStatus.fromMap(Map<String, dynamic> map) {
    return ResponderStatus(
      completionTime: (() { final guardedValue = map['completionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expectedCompletionTime: (() { final guardedValue = map['expectedCompletionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      heartbeatTime: (() { final guardedValue = map['heartbeatTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
