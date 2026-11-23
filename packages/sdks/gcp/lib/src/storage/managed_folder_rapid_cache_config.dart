// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_folder_rapid_cache_config_policy.dart';

class ManagedFolderRapidCacheConfig {
  /// A map of rapid cache IDs to the corresponding RapidCachePolicy
  /// configurations for a managed folder.
  /// Structure is documented below.
  final pulumi.Input<List<ManagedFolderRapidCacheConfigPolicy>> policies;

  /// Creates a new [ManagedFolderRapidCacheConfig].
  /// [policies] A map of rapid cache IDs to the corresponding RapidCachePolicy
  const ManagedFolderRapidCacheConfig({
    required this.policies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policies': pulumi.Input.mapInputValue<List<ManagedFolderRapidCacheConfigPolicy>, List<Map<String, dynamic>>>(policies, (value) => pulumi.Input.encodeList<ManagedFolderRapidCacheConfigPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedFolderRapidCacheConfig.fromMap(Map<String, dynamic> map) {
    return ManagedFolderRapidCacheConfig(
      policies: pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedFolderRapidCacheConfigPolicy>(map['policies']!, (value) => ManagedFolderRapidCacheConfigPolicy.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
