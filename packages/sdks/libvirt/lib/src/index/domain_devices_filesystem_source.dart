// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_filesystem_source_bind.dart';
import 'domain_devices_filesystem_source_block.dart';
import 'domain_devices_filesystem_source_file.dart';
import 'domain_devices_filesystem_source_mount.dart';
import 'domain_devices_filesystem_source_ram.dart';
import 'domain_devices_filesystem_source_template.dart';
import 'domain_devices_filesystem_source_volume.dart';

class DomainDevicesFilesystemSource {
  /// Configures the binding source for the filesystem.
  final pulumi.Input<DomainDevicesFilesystemSourceBind?>? bind;
  /// Specifies a block device as the source for the filesystem.
  final pulumi.Input<DomainDevicesFilesystemSourceBlock?>? block;
  /// Defines a file as the source for the filesystem.
  final pulumi.Input<DomainDevicesFilesystemSourceFile?>? file;
  /// Configures a mount point for the filesystem source.
  final pulumi.Input<DomainDevicesFilesystemSourceMount?>? mount;
  /// Configures a RAM source for the filesystem.
  final pulumi.Input<DomainDevicesFilesystemSourceRam?>? ram;
  /// Configures the template source for the filesystem.
  final pulumi.Input<DomainDevicesFilesystemSourceTemplate?>? template;
  /// Sets the volume element that specifies the source volume for the filesystem.
  final pulumi.Input<DomainDevicesFilesystemSourceVolume?>? volume;

  /// Creates a new [DomainDevicesFilesystemSource].
  /// [bind] Configures the binding source for the filesystem.
  /// [block] Specifies a block device as the source for the filesystem.
  /// [file] Defines a file as the source for the filesystem.
  /// [mount] Configures a mount point for the filesystem source.
  /// [ram] Configures a RAM source for the filesystem.
  /// [template] Configures the template source for the filesystem.
  /// [volume] Sets the volume element that specifies the source volume for the filesystem.
  const DomainDevicesFilesystemSource({
    this.bind,
    this.block,
    this.file,
    this.mount,
    this.ram,
    this.template,
    this.volume,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bind': ?pulumi.Input.mapOptionalInputValue<DomainDevicesFilesystemSourceBind, Map<String, dynamic>>(bind, (value) => value.toMap()),
      'block': ?pulumi.Input.mapOptionalInputValue<DomainDevicesFilesystemSourceBlock, Map<String, dynamic>>(block, (value) => value.toMap()),
      'file': ?pulumi.Input.mapOptionalInputValue<DomainDevicesFilesystemSourceFile, Map<String, dynamic>>(file, (value) => value.toMap()),
      'mount': ?pulumi.Input.mapOptionalInputValue<DomainDevicesFilesystemSourceMount, Map<String, dynamic>>(mount, (value) => value.toMap()),
      'ram': ?pulumi.Input.mapOptionalInputValue<DomainDevicesFilesystemSourceRam, Map<String, dynamic>>(ram, (value) => value.toMap()),
      'template': ?pulumi.Input.mapOptionalInputValue<DomainDevicesFilesystemSourceTemplate, Map<String, dynamic>>(template, (value) => value.toMap()),
      'volume': ?pulumi.Input.mapOptionalInputValue<DomainDevicesFilesystemSourceVolume, Map<String, dynamic>>(volume, (value) => value.toMap()),
    };
  }

  factory DomainDevicesFilesystemSource.fromMap(Map<String, dynamic> map) {
    return DomainDevicesFilesystemSource(
      bind: (() { final guardedValue = map['bind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesFilesystemSourceBind.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      block: (() { final guardedValue = map['block']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesFilesystemSourceBlock.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      file: (() { final guardedValue = map['file']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesFilesystemSourceFile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mount: (() { final guardedValue = map['mount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesFilesystemSourceMount.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ram: (() { final guardedValue = map['ram']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesFilesystemSourceRam.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      template: (() { final guardedValue = map['template']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesFilesystemSourceTemplate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      volume: (() { final guardedValue = map['volume']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesFilesystemSourceVolume.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
