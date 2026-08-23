// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppHostingTrafficCurrentSplit {
  /// The build that traffic is being routed to.
  final pulumi.Input<String>? build;
  /// The percentage of traffic to send to the build. Currently must be 100 or 0.
  final pulumi.Input<int>? percent;

  /// Creates a new [AppHostingTrafficCurrentSplit].
  /// [build] The build that traffic is being routed to.
  /// [percent] The percentage of traffic to send to the build. Currently must be 100 or 0.
  const AppHostingTrafficCurrentSplit({
    this.build,
    this.percent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'build': ?build,
      'percent': ?percent,
    };
  }

  factory AppHostingTrafficCurrentSplit.fromMap(Map<String, dynamic> map) {
    return AppHostingTrafficCurrentSplit(
      build: (() { final guardedValue = map['build']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      percent: (() { final guardedValue = map['percent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
