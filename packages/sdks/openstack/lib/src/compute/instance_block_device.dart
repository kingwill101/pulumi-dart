// ignore_for_file: unused_element, unnecessary_cast


class InstanceBlockDevice {
  /// The boot index of the volume. It defaults to 0.
  /// Changing this creates a new server.
  final int? bootIndex;
  /// Delete the volume / block device upon
  /// termination of the instance. Defaults to false. Changing this creates a
  /// new server.
  final bool? deleteOnTermination;
  /// The type that gets created. Possible values
  /// are "volume" and "local". Changing this creates a new server.
  final String? destinationType;
  /// The low-level device type that will be used. Most
  /// common thing is to leave this empty. Changing this creates a new server.
  final String? deviceType;
  /// The low-level disk bus that will be used. Most common
  /// thing is to leave this empty. Changing this creates a new server.
  final String? diskBus;
  /// Specifies the guest server disk file system format,
  /// such as `ext2`, `ext3`, `ext4`, `xfs` or `swap`. Swap block device mappings
  /// have the following restrictions: source_type must be blank and destination_type
  /// must be local and only one swap disk per server and the size of the swap disk
  /// must be less than or equal to the swap size of the flavor. Changing this
  /// creates a new server.
  final String? guestFormat;
  /// Enable the attachment of multiattach-capable
  /// volumes.
  final bool? multiattach;
  /// The source type of the device. Must be one of
  /// "blank", "image", "volume", or "snapshot". Changing this creates a new
  /// server.
  final String sourceType;
  /// The UUID of
  /// the image, volume, or snapshot. Changing this creates a new server.
  final String? uuid;
  /// The size of the volume to create (in gigabytes). Required
  /// in the following combinations: source=image and destination=volume,
  /// source=blank and destination=local, and source=blank and destination=volume.
  /// Changing this creates a new server.
  final int? volumeSize;
  /// The volume type that will be used, for example SSD
  /// or HDD storage. The available options depend on how your specific OpenStack
  /// cloud is configured and what classes of storage are provided. Changing this
  /// creates a new server.
  final String? volumeType;

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
      bootIndex: map['bootIndex'] == null ? null : map['bootIndex'] as int,
      deleteOnTermination: map['deleteOnTermination'] == null ? null : map['deleteOnTermination'] as bool,
      destinationType: map['destinationType'] == null ? null : map['destinationType'] as String,
      deviceType: map['deviceType'] == null ? null : map['deviceType'] as String,
      diskBus: map['diskBus'] == null ? null : map['diskBus'] as String,
      guestFormat: map['guestFormat'] == null ? null : map['guestFormat'] as String,
      multiattach: map['multiattach'] == null ? null : map['multiattach'] as bool,
      sourceType: map['sourceType'] as String,
      uuid: map['uuid'] == null ? null : map['uuid'] as String,
      volumeSize: map['volumeSize'] == null ? null : map['volumeSize'] as int,
      volumeType: map['volumeType'] == null ? null : map['volumeType'] as String,
    );
  }
}

