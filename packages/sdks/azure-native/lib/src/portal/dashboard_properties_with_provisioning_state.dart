// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_lens.dart';

/// Dashboard Properties with Provisioning state
class DashboardPropertiesWithProvisioningState {
  /// The dashboard lenses.
  final List<DashboardLens>? lenses;
  /// The dashboard metadata.
  final dynamic metadata;

  /// Creates a new [DashboardPropertiesWithProvisioningState].
  /// [lenses] The dashboard lenses.
  /// [metadata] The dashboard metadata.
  DashboardPropertiesWithProvisioningState({
    this.lenses,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lenses': ?lenses == null ? null : pulumi.Input.encodeList<DashboardLens, Map<String, dynamic>>(lenses!, (value) => value.toMap()),
      'metadata': ?metadata,
    };
  }

  factory DashboardPropertiesWithProvisioningState.fromMap(Map<String, dynamic> map) {
    return DashboardPropertiesWithProvisioningState(
      lenses: map['lenses'] == null ? null : pulumi.Input.decodeList<DashboardLens>(map['lenses'], (value) => DashboardLens.fromMap((value as Map).cast<String, dynamic>())),
      metadata: map['metadata'] == null ? null : map['metadata'],
    );
  }
}

