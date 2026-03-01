// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_lvp_config.dart';

/// Specifies the configs for local persistent volumes under a shared file system.
class BareMetalLvpShareConfig {
  /// Defines the machine path and storage class for the LVP Share.
  final BareMetalLvpConfig lvpConfig;
  /// The number of subdirectories to create under path.
  final int? sharedPathPvCount;

  /// Creates a new [BareMetalLvpShareConfig].
  /// [lvpConfig] Defines the machine path and storage class for the LVP Share.
  /// [sharedPathPvCount] The number of subdirectories to create under path.
  BareMetalLvpShareConfig({
    required this.lvpConfig,
    this.sharedPathPvCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lvpConfig': lvpConfig.toMap(),
      'sharedPathPvCount': ?sharedPathPvCount,
    };
  }

  factory BareMetalLvpShareConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalLvpShareConfig(
      lvpConfig: BareMetalLvpConfig.fromMap((map['lvpConfig'] as Map).cast<String, dynamic>()),
      sharedPathPvCount: map['sharedPathPvCount'] == null ? null : map['sharedPathPvCount'] as int,
    );
  }
}

