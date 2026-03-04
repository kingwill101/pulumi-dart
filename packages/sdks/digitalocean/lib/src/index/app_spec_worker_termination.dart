// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppSpecWorkerTermination {
  /// The number of seconds to wait between sending a TERM signal to a container and issuing a KILL which causes immediate shutdown. Default: 120, Minimum 1, Maximum 600.
  ///
  /// A `function` component can contain:
  final pulumi.Input<int>? gracePeriodSeconds;

  /// Creates a new [AppSpecWorkerTermination].
  /// [gracePeriodSeconds] The number of seconds to wait between sending a TERM signal to a container and issuing a KILL which causes immediate shutdown. Default: 120, Minimum 1, Maximum 600.
  AppSpecWorkerTermination({this.gracePeriodSeconds});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'gracePeriodSeconds': ?gracePeriodSeconds};
  }

  factory AppSpecWorkerTermination.fromMap(Map<String, dynamic> map) {
    return AppSpecWorkerTermination(
      gracePeriodSeconds: (() {
        final guardedValue = map['gracePeriodSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
