// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The auto provisioning configuration.
class CustomRolloutSpecificationAutoProvisionConfigResponse {
  final pulumi.Input<bool>? resourceGraph;
  final pulumi.Input<bool>? storage;

  /// Creates a new [CustomRolloutSpecificationAutoProvisionConfigResponse].
  /// [resourceGraph] Optional.
  /// [storage] Optional.
  const CustomRolloutSpecificationAutoProvisionConfigResponse({
    this.resourceGraph,
    this.storage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGraph': ?resourceGraph,
      'storage': ?storage,
    };
  }

  factory CustomRolloutSpecificationAutoProvisionConfigResponse.fromMap(Map<String, dynamic> map) {
    return CustomRolloutSpecificationAutoProvisionConfigResponse(
      resourceGraph: (() { final guardedValue = map['resourceGraph']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      storage: (() { final guardedValue = map['storage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

