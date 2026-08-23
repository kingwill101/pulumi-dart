// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// KPI Resource Health Details
class KPIResourceHealthDetails {
  /// Resource Health Status
  final pulumi.Input<String>? resourceHealthStatus;

  /// Creates a new [KPIResourceHealthDetails].
  /// [resourceHealthStatus] Resource Health Status
  const KPIResourceHealthDetails({
    this.resourceHealthStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceHealthStatus': ?resourceHealthStatus,
    };
  }

  factory KPIResourceHealthDetails.fromMap(Map<String, dynamic> map) {
    return KPIResourceHealthDetails(
      resourceHealthStatus: (() { final guardedValue = map['resourceHealthStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
