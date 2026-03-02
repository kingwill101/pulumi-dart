// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppSpecJobTermination {
  /// The number of seconds to wait between sending a TERM signal to a container and issuing a KILL which causes immediate shutdown. Default: 120, Minimum 1, Maximum 600.
  final pulumi.Input<int>? gracePeriodSeconds;

  /// Creates a new [GetAppSpecJobTermination].
  /// [gracePeriodSeconds] The number of seconds to wait between sending a TERM signal to a container and issuing a KILL which causes immediate shutdown. Default: 120, Minimum 1, Maximum 600.
  GetAppSpecJobTermination({
    this.gracePeriodSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gracePeriodSeconds': ?gracePeriodSeconds,
    };
  }

  factory GetAppSpecJobTermination.fromMap(Map<String, dynamic> map) {
    return GetAppSpecJobTermination(
      gracePeriodSeconds: map['gracePeriodSeconds'] == null ? null : (map['gracePeriodSeconds'] as int).input(),
    );
  }
}

