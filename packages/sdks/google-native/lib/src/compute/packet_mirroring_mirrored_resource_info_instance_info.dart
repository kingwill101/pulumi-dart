// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PacketMirroringMirroredResourceInfoInstanceInfo {
  /// Resource URL to the virtual machine instance which is being mirrored.
  final pulumi.Input<String>? url;

  /// Creates a new [PacketMirroringMirroredResourceInfoInstanceInfo].
  /// [url] Resource URL to the virtual machine instance which is being mirrored.
  const PacketMirroringMirroredResourceInfoInstanceInfo({
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': ?url,
    };
  }

  factory PacketMirroringMirroredResourceInfoInstanceInfo.fromMap(Map<String, dynamic> map) {
    return PacketMirroringMirroredResourceInfoInstanceInfo(
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

