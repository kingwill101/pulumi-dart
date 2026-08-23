// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_filesystem_binary_cache.dart';
import 'domain_devices_filesystem_binary_lock.dart';
import 'domain_devices_filesystem_binary_open_files.dart';
import 'domain_devices_filesystem_binary_sandbox.dart';
import 'domain_devices_filesystem_binary_thread_pool.dart';

class DomainDevicesFilesystemBinary {
  /// Manages cache settings for the binary filesystem device.
  final pulumi.Input<DomainDevicesFilesystemBinaryCache>? cache;
  /// Specifies the locking behavior for the binary filesystem device.
  final pulumi.Input<DomainDevicesFilesystemBinaryLock>? lock;
  /// Sets the maximum number of open files for the binary filesystem.
  final pulumi.Input<DomainDevicesFilesystemBinaryOpenFiles>? openFiles;
  /// Specifies the file path for the binary filesystem.
  final pulumi.Input<String>? path;
  /// Controls whether the binary filesystem operates in sandbox mode.
  final pulumi.Input<DomainDevicesFilesystemBinarySandbox>? sandbox;
  /// Configures the usage of a thread pool for handling operations in the binary filesystem.
  final pulumi.Input<DomainDevicesFilesystemBinaryThreadPool>? threadPool;
  /// Configures extended attributes for the binary filesystem.
  final pulumi.Input<String>? xattr;

  /// Creates a new [DomainDevicesFilesystemBinary].
  /// [cache] Manages cache settings for the binary filesystem device.
  /// [lock] Specifies the locking behavior for the binary filesystem device.
  /// [openFiles] Sets the maximum number of open files for the binary filesystem.
  /// [path] Specifies the file path for the binary filesystem.
  /// [sandbox] Controls whether the binary filesystem operates in sandbox mode.
  /// [threadPool] Configures the usage of a thread pool for handling operations in the binary filesystem.
  /// [xattr] Configures extended attributes for the binary filesystem.
  const DomainDevicesFilesystemBinary({
    this.cache,
    this.lock,
    this.openFiles,
    this.path,
    this.sandbox,
    this.threadPool,
    this.xattr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cache': ?pulumi.Input.mapOptionalInputValue<DomainDevicesFilesystemBinaryCache, Map<String, dynamic>>(cache, (value) => value.toMap()),
      'lock': ?pulumi.Input.mapOptionalInputValue<DomainDevicesFilesystemBinaryLock, Map<String, dynamic>>(lock, (value) => value.toMap()),
      'openFiles': ?pulumi.Input.mapOptionalInputValue<DomainDevicesFilesystemBinaryOpenFiles, Map<String, dynamic>>(openFiles, (value) => value.toMap()),
      'path': ?path,
      'sandbox': ?pulumi.Input.mapOptionalInputValue<DomainDevicesFilesystemBinarySandbox, Map<String, dynamic>>(sandbox, (value) => value.toMap()),
      'threadPool': ?pulumi.Input.mapOptionalInputValue<DomainDevicesFilesystemBinaryThreadPool, Map<String, dynamic>>(threadPool, (value) => value.toMap()),
      'xattr': ?xattr,
    };
  }

  factory DomainDevicesFilesystemBinary.fromMap(Map<String, dynamic> map) {
    return DomainDevicesFilesystemBinary(
      cache: (() { final guardedValue = map['cache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesFilesystemBinaryCache.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lock: (() { final guardedValue = map['lock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesFilesystemBinaryLock.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      openFiles: (() { final guardedValue = map['openFiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesFilesystemBinaryOpenFiles.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sandbox: (() { final guardedValue = map['sandbox']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesFilesystemBinarySandbox.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      threadPool: (() { final guardedValue = map['threadPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesFilesystemBinaryThreadPool.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      xattr: (() { final guardedValue = map['xattr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
