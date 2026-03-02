// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppHostingTrafficTargetSplit {
  /// The build that traffic is being routed to.
  final pulumi.Input<String> build;
  /// The percentage of traffic to send to the build. Currently must be 100 or 0.
  final pulumi.Input<int> percent;

  /// Creates a new [AppHostingTrafficTargetSplit].
  /// [build] The build that traffic is being routed to.
  /// [percent] The percentage of traffic to send to the build. Currently must be 100 or 0.
  AppHostingTrafficTargetSplit({
    required this.build,
    required this.percent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'build': build,
      'percent': percent,
    };
  }

  factory AppHostingTrafficTargetSplit.fromMap(Map<String, dynamic> map) {
    return AppHostingTrafficTargetSplit(
      build: (map['build'] as String).input(),
      percent: (map['percent'] as int).input(),
    );
  }
}

