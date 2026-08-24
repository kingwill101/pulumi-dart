// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_worker_versions_result_assets_config.dart';

class GetWorkerVersionsResultAssets {
  /// Configuration for assets within a Worker.
  final pulumi.Input<GetWorkerVersionsResultAssetsConfig> config;
  /// Token provided upon successful upload of all files from a registered manifest.
  final pulumi.Input<String> jwt;

  /// Creates a new [GetWorkerVersionsResultAssets].
  /// [config] Configuration for assets within a Worker.
  /// [jwt] Token provided upon successful upload of all files from a registered manifest.
  const GetWorkerVersionsResultAssets({
    required this.config,
    required this.jwt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<GetWorkerVersionsResultAssetsConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'jwt': jwt,
    };
  }

  factory GetWorkerVersionsResultAssets.fromMap(Map<String, dynamic> map) {
    return GetWorkerVersionsResultAssets(
      config: pulumi.Input.fromValue(GetWorkerVersionsResultAssetsConfig.fromMap((map['config']! as Map).cast<String, dynamic>())),
      jwt: pulumi.Input.fromValue(map['jwt'] as String),
    );
  }
}
