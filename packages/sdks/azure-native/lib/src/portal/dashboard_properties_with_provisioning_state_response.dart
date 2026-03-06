// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_lens_response.dart';

/// Dashboard Properties with Provisioning state
class DashboardPropertiesWithProvisioningStateResponse {
  /// The dashboard lenses.
  final pulumi.Input<List<DashboardLensResponse>>? lenses;
  /// The dashboard metadata.
  final pulumi.Input<dynamic>? metadata;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [DashboardPropertiesWithProvisioningStateResponse].
  /// [lenses] The dashboard lenses.
  /// [metadata] The dashboard metadata.
  /// [provisioningState] The status of the last operation.
  const DashboardPropertiesWithProvisioningStateResponse({
    this.lenses,
    this.metadata,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lenses': ?pulumi.Input.mapOptionalInputValue<List<DashboardLensResponse>, List<Map<String, dynamic>>>(lenses, (value) => pulumi.Input.encodeList<DashboardLensResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metadata': ?metadata,
      'provisioningState': provisioningState,
    };
  }

  factory DashboardPropertiesWithProvisioningStateResponse.fromMap(Map<String, dynamic> map) {
    return DashboardPropertiesWithProvisioningStateResponse(
      lenses: (() { final guardedValue = map['lenses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DashboardLensResponse>(guardedValue, (value) => DashboardLensResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}

