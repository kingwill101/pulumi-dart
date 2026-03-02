// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The auto provisioning config.
class DefaultRolloutSpecificationAutoProvisionConfigResponse {
  /// Whether auto provisioning for resource graph is enabled.
  final pulumi.Input<bool>? resourceGraph;
  /// Whether auto provisioning for storage is enabled.
  final pulumi.Input<bool>? storage;

  /// Creates a new [DefaultRolloutSpecificationAutoProvisionConfigResponse].
  /// [resourceGraph] Whether auto provisioning for resource graph is enabled.
  /// [storage] Whether auto provisioning for storage is enabled.
  DefaultRolloutSpecificationAutoProvisionConfigResponse({
    this.resourceGraph,
    this.storage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGraph': ?resourceGraph,
      'storage': ?storage,
    };
  }

  factory DefaultRolloutSpecificationAutoProvisionConfigResponse.fromMap(Map<String, dynamic> map) {
    return DefaultRolloutSpecificationAutoProvisionConfigResponse(
      resourceGraph: map['resourceGraph'] == null ? null : (map['resourceGraph'] as bool).input(),
      storage: map['storage'] == null ? null : (map['storage'] as bool).input(),
    );
  }
}

