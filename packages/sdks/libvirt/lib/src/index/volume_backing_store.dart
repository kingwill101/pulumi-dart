// ignore_for_file: unused_element, unnecessary_cast

import 'volume_backing_store_format.dart';
import 'volume_backing_store_permissions.dart';

class VolumeBackingStore {
  /// Sets the format type for the backing store of the storage volume.
  final VolumeBackingStoreFormat? format;
  /// Defines the path to the backing store for the storage volume.
  final String path;
  /// Configures the permissions for the backing store of the storage volume.
  final VolumeBackingStorePermissions? permissions;

  /// Creates a new [VolumeBackingStore].
  /// [format] Sets the format type for the backing store of the storage volume.
  /// [path] Defines the path to the backing store for the storage volume.
  /// [permissions] Configures the permissions for the backing store of the storage volume.
  VolumeBackingStore({
    this.format,
    required this.path,
    this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': ?format == null ? null : format!.toMap(),
      'path': path,
      'permissions': ?permissions == null ? null : permissions!.toMap(),
    };
  }

  factory VolumeBackingStore.fromMap(Map<String, dynamic> map) {
    return VolumeBackingStore(
      format: map['format'] == null ? null : VolumeBackingStoreFormat.fromMap((map['format'] as Map).cast<String, dynamic>()),
      path: map['path'] as String,
      permissions: map['permissions'] == null ? null : VolumeBackingStorePermissions.fromMap((map['permissions'] as Map).cast<String, dynamic>()),
    );
  }
}

