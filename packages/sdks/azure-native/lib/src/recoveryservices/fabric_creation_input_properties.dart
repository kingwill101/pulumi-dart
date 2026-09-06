// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of site details provided during the time of site creation.
class FabricCreationInputProperties {
  /// Fabric provider specific creation input.
  final pulumi.Input<dynamic>? customDetails;

  /// Creates a new [FabricCreationInputProperties].
  /// [customDetails] Fabric provider specific creation input.
  const FabricCreationInputProperties({
    this.customDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDetails': ?customDetails,
    };
  }

  factory FabricCreationInputProperties.fromMap(Map<String, dynamic> map) {
    return FabricCreationInputProperties(
      customDetails: (() { final guardedValue = map['customDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
