// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional information of the DPMContainer.
class DPMContainerExtendedInfo {
  /// Last refresh time of the DPMContainer.
  final pulumi.Input<String>? lastRefreshedAt;

  /// Creates a new [DPMContainerExtendedInfo].
  /// [lastRefreshedAt] Last refresh time of the DPMContainer.
  DPMContainerExtendedInfo({
    this.lastRefreshedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastRefreshedAt': ?lastRefreshedAt,
    };
  }

  factory DPMContainerExtendedInfo.fromMap(Map<String, dynamic> map) {
    return DPMContainerExtendedInfo(
      lastRefreshedAt: (() { final guardedValue = map['lastRefreshedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

