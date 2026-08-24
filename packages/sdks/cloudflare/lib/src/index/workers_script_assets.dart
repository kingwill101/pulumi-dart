// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workers_script_assets_config.dart';

class WorkersScriptAssets {
  /// The SHA-256 hash of the asset manifest of files to upload.
  final pulumi.Input<String?>? assetManifestSha256;
  /// Configuration for assets within a Worker.
  final pulumi.Input<WorkersScriptAssetsConfig?>? config;
  /// Path to the directory containing asset files to upload.
  final pulumi.Input<String?>? directory;
  /// Token provided upon successful upload of all files from a registered manifest.
  final pulumi.Input<String?>? jwt;

  /// Creates a new [WorkersScriptAssets].
  /// [assetManifestSha256] The SHA-256 hash of the asset manifest of files to upload.
  /// [config] Configuration for assets within a Worker.
  /// [directory] Path to the directory containing asset files to upload.
  /// [jwt] Token provided upon successful upload of all files from a registered manifest.
  const WorkersScriptAssets({
    this.assetManifestSha256,
    this.config,
    this.directory,
    this.jwt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetManifestSha256': ?assetManifestSha256,
      'config': ?pulumi.Input.mapOptionalInputValue<WorkersScriptAssetsConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'directory': ?directory,
      'jwt': ?jwt,
    };
  }

  factory WorkersScriptAssets.fromMap(Map<String, dynamic> map) {
    return WorkersScriptAssets(
      assetManifestSha256: (() { final guardedValue = map['assetManifestSha256']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkersScriptAssetsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      directory: (() { final guardedValue = map['directory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jwt: (() { final guardedValue = map['jwt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
