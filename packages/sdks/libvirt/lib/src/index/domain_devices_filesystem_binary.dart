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
  DomainDevicesFilesystemBinary({
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
      cache: map['cache'] == null ? null : (DomainDevicesFilesystemBinaryCache.fromMap((map['cache'] as Map).cast<String, dynamic>())).input(),
      lock: map['lock'] == null ? null : (DomainDevicesFilesystemBinaryLock.fromMap((map['lock'] as Map).cast<String, dynamic>())).input(),
      openFiles: map['openFiles'] == null ? null : (DomainDevicesFilesystemBinaryOpenFiles.fromMap((map['openFiles'] as Map).cast<String, dynamic>())).input(),
      path: map['path'] == null ? null : (map['path'] as String).input(),
      sandbox: map['sandbox'] == null ? null : (DomainDevicesFilesystemBinarySandbox.fromMap((map['sandbox'] as Map).cast<String, dynamic>())).input(),
      threadPool: map['threadPool'] == null ? null : (DomainDevicesFilesystemBinaryThreadPool.fromMap((map['threadPool'] as Map).cast<String, dynamic>())).input(),
      xattr: map['xattr'] == null ? null : (map['xattr'] as String).input(),
    );
  }
}

