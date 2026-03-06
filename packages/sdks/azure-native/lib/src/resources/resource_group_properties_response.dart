// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The resource group properties.
class ResourceGroupPropertiesResponse {
  /// The provisioning state.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [ResourceGroupPropertiesResponse].
  /// [provisioningState] The provisioning state.
  const ResourceGroupPropertiesResponse({
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
    };
  }

  factory ResourceGroupPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ResourceGroupPropertiesResponse(
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}

