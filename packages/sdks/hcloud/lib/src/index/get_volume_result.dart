// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVolume.
class GetVolumeResult {
  /// (bool) Whether delete protection is enabled.
  final bool deleteProtection;
  /// (int) Unique ID of the volume.
  final int id;
  /// (map) User-defined labels (key-value pairs).
  final Map<String, String> labels;
  /// (string) Device path on the file system for the Volume.
  final String linuxDevice;
  /// (string) The location name. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  final String? location;
  /// (string) Name of the volume.
  final String name;
  final String? selector;
  /// (Optional, int) Server ID the volume is attached to
  final int? serverId;
  /// (int) Size of the volume.
  final int size;
  final String? withSelector;
  final List<String>? withStatuses;

  /// Creates a new [GetVolumeResult].
  /// [deleteProtection] (bool) Whether delete protection is enabled.
  /// [id] (int) Unique ID of the volume.
  /// [labels] (map) User-defined labels (key-value pairs).
  /// [linuxDevice] (string) Device path on the file system for the Volume.
  /// [location] (string) The location name. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  /// [name] (string) Name of the volume.
  /// [selector] Optional.
  /// [serverId] (Optional, int) Server ID the volume is attached to
  /// [size] (int) Size of the volume.
  /// [withSelector] Optional.
  /// [withStatuses] Optional.
  const GetVolumeResult({
    required this.deleteProtection,
    required this.id,
    required this.labels,
    required this.linuxDevice,
    this.location,
    required this.name,
    this.selector,
    this.serverId,
    required this.size,
    this.withSelector,
    this.withStatuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteProtection': deleteProtection,
      'id': id,
      'labels': labels,
      'linuxDevice': linuxDevice,
      'location': ?location,
      'name': name,
      'selector': ?selector,
      'serverId': ?serverId,
      'size': size,
      'withSelector': ?withSelector,
      'withStatuses': ?withStatuses,
    };
  }

  factory GetVolumeResult.fromMap(Map<String, dynamic> map) {
    return GetVolumeResult(
      deleteProtection: map['deleteProtection'] as bool,
      id: map['id'] as int,
      labels: (map['labels'] as Map).cast<String, String>(),
      linuxDevice: map['linuxDevice'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverId: (() { final guardedValue = map['serverId']; if (guardedValue == null) return null; return guardedValue as int; })(),
      size: map['size'] as int,
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
      withStatuses: (() { final guardedValue = map['withStatuses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}

