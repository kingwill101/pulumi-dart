// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_lvp_config_response.dart';

/// Specifies the configs for local persistent volumes under a shared file system.
class BareMetalLvpShareConfigResponse {
  /// Defines the machine path and storage class for the LVP Share.
  final pulumi.Input<BareMetalLvpConfigResponse> lvpConfig;
  /// The number of subdirectories to create under path.
  final pulumi.Input<int> sharedPathPvCount;

  /// Creates a new [BareMetalLvpShareConfigResponse].
  /// [lvpConfig] Defines the machine path and storage class for the LVP Share.
  /// [sharedPathPvCount] The number of subdirectories to create under path.
  const BareMetalLvpShareConfigResponse({
    required this.lvpConfig,
    required this.sharedPathPvCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lvpConfig': pulumi.Input.mapInputValue<BareMetalLvpConfigResponse, Map<String, dynamic>>(lvpConfig, (value) => value.toMap()),
      'sharedPathPvCount': sharedPathPvCount,
    };
  }

  factory BareMetalLvpShareConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalLvpShareConfigResponse(
      lvpConfig: pulumi.Input.fromValue(BareMetalLvpConfigResponse.fromMap((map['lvpConfig']! as Map).cast<String, dynamic>())),
      sharedPathPvCount: pulumi.Input.fromValue(map['sharedPathPvCount'] as int),
    );
  }
}
