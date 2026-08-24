// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_worker_version_assets_config.dart';

class GetWorkerVersionAssets {
  /// Configuration for assets within a Worker.
  final pulumi.Input<GetWorkerVersionAssetsConfig> config;
  /// Token provided upon successful upload of all files from a registered manifest.
  final pulumi.Input<String> jwt;

  /// Creates a new [GetWorkerVersionAssets].
  /// [config] Configuration for assets within a Worker.
  /// [jwt] Token provided upon successful upload of all files from a registered manifest.
  const GetWorkerVersionAssets({
    required this.config,
    required this.jwt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<GetWorkerVersionAssetsConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'jwt': jwt,
    };
  }

  factory GetWorkerVersionAssets.fromMap(Map<String, dynamic> map) {
    return GetWorkerVersionAssets(
      config: pulumi.Input.fromValue(GetWorkerVersionAssetsConfig.fromMap((map['config']! as Map).cast<String, dynamic>())),
      jwt: pulumi.Input.fromValue(map['jwt'] as String),
    );
  }
}
