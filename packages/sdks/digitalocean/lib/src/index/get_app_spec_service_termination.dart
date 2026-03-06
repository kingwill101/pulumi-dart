// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppSpecServiceTermination {
  /// The number of seconds to wait between selecting a container instance for termination and issuing the TERM signal. Selecting a container instance for termination begins an asynchronous drain of new requests on upstream load-balancers. Default: 15 seconds, Minimum 1, Maximum 110.
  final pulumi.Input<int>? drainSeconds;
  /// The number of seconds to wait between sending a TERM signal to a container and issuing a KILL which causes immediate shutdown. Default: 120, Minimum 1, Maximum 600.
  final pulumi.Input<int>? gracePeriodSeconds;

  /// Creates a new [GetAppSpecServiceTermination].
  /// [drainSeconds] The number of seconds to wait between selecting a container instance for termination and issuing the TERM signal. Selecting a container instance for termination begins an asynchronous drain of new requests on upstream load-balancers. Default: 15 seconds, Minimum 1, Maximum 110.
  /// [gracePeriodSeconds] The number of seconds to wait between sending a TERM signal to a container and issuing a KILL which causes immediate shutdown. Default: 120, Minimum 1, Maximum 600.
  const GetAppSpecServiceTermination({
    this.drainSeconds,
    this.gracePeriodSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'drainSeconds': ?drainSeconds,
      'gracePeriodSeconds': ?gracePeriodSeconds,
    };
  }

  factory GetAppSpecServiceTermination.fromMap(Map<String, dynamic> map) {
    return GetAppSpecServiceTermination(
      drainSeconds: (() { final guardedValue = map['drainSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      gracePeriodSeconds: (() { final guardedValue = map['gracePeriodSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

