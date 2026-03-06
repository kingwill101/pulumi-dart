// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_docker.dart';
import 'export_image.dart';
import 'export_local.dart';
import 'export_oci.dart';
import 'export_registry.dart';
import 'export_tar.dart';

class Export {
  /// A no-op export. Helpful for silencing the 'no exports' warning if you
  /// just want to populate caches.
  final pulumi.Input<Map<String, dynamic>>? cacheonly;
  /// When `true` this entry will be excluded. Defaults to `false`.
  final pulumi.Input<bool>? disabled;
  /// Export as a Docker image layout.
  final pulumi.Input<ExportDocker>? docker;
  /// Outputs the build result into a container image format.
  final pulumi.Input<ExportImage>? image;
  /// Export to a local directory as files and directories.
  final pulumi.Input<ExportLocal>? local;
  /// Identical to the Docker exporter but uses OCI media types by default.
  final pulumi.Input<ExportOCI>? oci;
  /// A raw string as you would provide it to the Docker CLI (e.g.,
  /// `type=docker`)
  final pulumi.Input<String>? raw;
  /// Identical to the Image exporter, but pushes by default.
  final pulumi.Input<ExportRegistry>? registry;
  /// Export to a local directory as a tarball.
  final pulumi.Input<ExportTar>? tar;

  /// Creates a new [Export].
  /// [cacheonly] A no-op export. Helpful for silencing the 'no exports' warning if you
  /// [disabled] When `true` this entry will be excluded. Defaults to `false`.
  /// [docker] Export as a Docker image layout.
  /// [image] Outputs the build result into a container image format.
  /// [local] Export to a local directory as files and directories.
  /// [oci] Identical to the Docker exporter but uses OCI media types by default.
  /// [raw] A raw string as you would provide it to the Docker CLI (e.g.,
  /// [registry] Identical to the Image exporter, but pushes by default.
  /// [tar] Export to a local directory as a tarball.
  const Export({
    this.cacheonly,
    this.disabled,
    this.docker,
    this.image,
    this.local,
    this.oci,
    this.raw,
    this.registry,
    this.tar,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheonly': ?cacheonly,
      'disabled': ?disabled,
      'docker': ?pulumi.Input.mapOptionalInputValue<ExportDocker, Map<String, dynamic>>(docker, (value) => value.toMap()),
      'image': ?pulumi.Input.mapOptionalInputValue<ExportImage, Map<String, dynamic>>(image, (value) => value.toMap()),
      'local': ?pulumi.Input.mapOptionalInputValue<ExportLocal, Map<String, dynamic>>(local, (value) => value.toMap()),
      'oci': ?pulumi.Input.mapOptionalInputValue<ExportOCI, Map<String, dynamic>>(oci, (value) => value.toMap()),
      'raw': ?raw,
      'registry': ?pulumi.Input.mapOptionalInputValue<ExportRegistry, Map<String, dynamic>>(registry, (value) => value.toMap()),
      'tar': ?pulumi.Input.mapOptionalInputValue<ExportTar, Map<String, dynamic>>(tar, (value) => value.toMap()),
    };
  }

  factory Export.fromMap(Map<String, dynamic> map) {
    return Export(
      cacheonly: (() { final guardedValue = map['cacheonly']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      docker: (() { final guardedValue = map['docker']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExportDocker.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExportImage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      local: (() { final guardedValue = map['local']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExportLocal.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oci: (() { final guardedValue = map['oci']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExportOCI.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      raw: (() { final guardedValue = map['raw']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registry: (() { final guardedValue = map['registry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExportRegistry.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tar: (() { final guardedValue = map['tar']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExportTar.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

