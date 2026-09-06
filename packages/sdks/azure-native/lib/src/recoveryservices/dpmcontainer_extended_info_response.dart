// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional information of the DPMContainer.
class DPMContainerExtendedInfoResponse {
  /// Last refresh time of the DPMContainer.
  final pulumi.Input<String?>? lastRefreshedAt;

  /// Creates a new [DPMContainerExtendedInfoResponse].
  /// [lastRefreshedAt] Last refresh time of the DPMContainer.
  const DPMContainerExtendedInfoResponse({
    this.lastRefreshedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastRefreshedAt': ?lastRefreshedAt,
    };
  }

  factory DPMContainerExtendedInfoResponse.fromMap(Map<String, dynamic> map) {
    return DPMContainerExtendedInfoResponse(
      lastRefreshedAt: (() { final guardedValue = map['lastRefreshedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
