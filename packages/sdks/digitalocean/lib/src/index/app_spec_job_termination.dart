// ignore_for_file: unused_element, unnecessary_cast


class AppSpecJobTermination {
  /// The number of seconds to wait between sending a TERM signal to a container and issuing a KILL which causes immediate shutdown. Default: 120, Minimum 1, Maximum 600.
  ///
  /// A `function` component can contain:
  final int? gracePeriodSeconds;

  /// Creates a new [AppSpecJobTermination].
  /// [gracePeriodSeconds] The number of seconds to wait between sending a TERM signal to a container and issuing a KILL which causes immediate shutdown. Default: 120, Minimum 1, Maximum 600.
  AppSpecJobTermination({
    this.gracePeriodSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gracePeriodSeconds': ?gracePeriodSeconds,
    };
  }

  factory AppSpecJobTermination.fromMap(Map<String, dynamic> map) {
    return AppSpecJobTermination(
      gracePeriodSeconds: map['gracePeriodSeconds'] == null ? null : map['gracePeriodSeconds'] as int,
    );
  }
}

