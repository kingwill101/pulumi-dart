// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_fabric_creation_input.dart';

/// Properties of site details provided during the time of site creation.
class FabricCreationInputProperties {
  /// Fabric provider specific creation input.
  final pulumi.Input<AzureFabricCreationInput>? customDetails;

  /// Creates a new [FabricCreationInputProperties].
  /// [customDetails] Fabric provider specific creation input.
  FabricCreationInputProperties({
    this.customDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDetails': ?pulumi.Input.mapOptionalInputValue<AzureFabricCreationInput, Map<String, dynamic>>(customDetails, (value) => value.toMap()),
    };
  }

  factory FabricCreationInputProperties.fromMap(Map<String, dynamic> map) {
    return FabricCreationInputProperties(
      customDetails: map['customDetails'] == null ? null : (AzureFabricCreationInput.fromMap((map['customDetails']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

