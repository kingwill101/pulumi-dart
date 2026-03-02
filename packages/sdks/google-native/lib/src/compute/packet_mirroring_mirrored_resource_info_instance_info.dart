// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PacketMirroringMirroredResourceInfoInstanceInfo {
  /// Resource URL to the virtual machine instance which is being mirrored.
  final pulumi.Input<String>? url;

  /// Creates a new [PacketMirroringMirroredResourceInfoInstanceInfo].
  /// [url] Resource URL to the virtual machine instance which is being mirrored.
  PacketMirroringMirroredResourceInfoInstanceInfo({
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': ?url,
    };
  }

  factory PacketMirroringMirroredResourceInfoInstanceInfo.fromMap(Map<String, dynamic> map) {
    return PacketMirroringMirroredResourceInfoInstanceInfo(
      url: map['url'] == null ? null : (map['url']! as String).input(),
    );
  }
}

