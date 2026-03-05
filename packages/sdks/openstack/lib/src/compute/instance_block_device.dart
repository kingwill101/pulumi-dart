// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceBlockDevice {
  /// The boot index of the volume. It defaults to 0.
  /// Changing this creates a new server.
  final pulumi.Input<int>? bootIndex;
  /// Delete the volume / block device upon
  /// termination of the instance. Defaults to false. Changing this creates a
  /// new server.
  final pulumi.Input<bool>? deleteOnTermination;
  /// The type that gets created. Possible values
  /// are "volume" and "local". Changing this creates a new server.
  final pulumi.Input<String>? destinationType;
  /// The low-level device type that will be used. Most
  /// common thing is to leave this empty. Changing this creates a new server.
  final pulumi.Input<String>? deviceType;
  /// The low-level disk bus that will be used. Most common
  /// thing is to leave this empty. Changing this creates a new server.
  final pulumi.Input<String>? diskBus;
  /// Specifies the guest server disk file system format,
  /// such as `ext2`, `ext3`, `ext4`, `xfs` or `swap`. Swap block device mappings
  /// have the following restrictions: source_type must be blank and destination_type
  /// must be local and only one swap disk per server and the size of the swap disk
  /// must be less than or equal to the swap size of the flavor. Changing this
  /// creates a new server.
  final pulumi.Input<String>? guestFormat;
  /// Enable the attachment of multiattach-capable
  /// volumes.
  final pulumi.Input<bool>? multiattach;
  /// The source type of the device. Must be one of
  /// "blank", "image", "volume", or "snapshot". Changing this creates a new
  /// server.
  final pulumi.Input<String> sourceType;
  /// The UUID of
  /// the image, volume, or snapshot. Changing this creates a new server.
  final pulumi.Input<String>? uuid;
  /// The size of the volume to create (in gigabytes). Required
  /// in the following combinations: source=image and destination=volume,
  /// source=blank and destination=local, and source=blank and destination=volume.
  /// Changing this creates a new server.
  final pulumi.Input<int>? volumeSize;
  /// The volume type that will be used, for example SSD
  /// or HDD storage. The available options depend on how your specific OpenStack
  /// cloud is configured and what classes of storage are provided. Changing this
  /// creates a new server.
  final pulumi.Input<String>? volumeType;

  /// Creates a new [InstanceBlockDevice].
  /// [bootIndex] The boot index of the volume. It defaults to 0.
  /// [deleteOnTermination] Delete the volume / block device upon
  /// [destinationType] The type that gets created. Possible values
  /// [deviceType] The low-level device type that will be used. Most
  /// [diskBus] The low-level disk bus that will be used. Most common
  /// [guestFormat] Specifies the guest server disk file system format,
  /// [multiattach] Enable the attachment of multiattach-capable
  /// [sourceType] The source type of the device. Must be one of
  /// [uuid] The UUID of
  /// [volumeSize] The size of the volume to create (in gigabytes). Required
  /// [volumeType] The volume type that will be used, for example SSD
  InstanceBlockDevice({
    this.bootIndex,
    this.deleteOnTermination,
    this.destinationType,
    this.deviceType,
    this.diskBus,
    this.guestFormat,
    this.multiattach,
    required this.sourceType,
    this.uuid,
    this.volumeSize,
    this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootIndex': ?bootIndex,
      'deleteOnTermination': ?deleteOnTermination,
      'destinationType': ?destinationType,
      'deviceType': ?deviceType,
      'diskBus': ?diskBus,
      'guestFormat': ?guestFormat,
      'multiattach': ?multiattach,
      'sourceType': sourceType,
      'uuid': ?uuid,
      'volumeSize': ?volumeSize,
      'volumeType': ?volumeType,
    };
  }

  factory InstanceBlockDevice.fromMap(Map<String, dynamic> map) {
    return InstanceBlockDevice(
      bootIndex: (() { final guardedValue = map['bootIndex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      deleteOnTermination: (() { final guardedValue = map['deleteOnTermination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      destinationType: (() { final guardedValue = map['destinationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deviceType: (() { final guardedValue = map['deviceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskBus: (() { final guardedValue = map['diskBus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      guestFormat: (() { final guardedValue = map['guestFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiattach: (() { final guardedValue = map['multiattach']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sourceType: pulumi.Input.fromValue(map['sourceType'] as String),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeSize: (() { final guardedValue = map['volumeSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      volumeType: (() { final guardedValue = map['volumeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

