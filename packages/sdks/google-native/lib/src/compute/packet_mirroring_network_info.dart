// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PacketMirroringNetworkInfo {
  /// URL of the network resource.
  final pulumi.Input<String>? url;

  /// Creates a new [PacketMirroringNetworkInfo].
  /// [url] URL of the network resource.
  PacketMirroringNetworkInfo({this.url});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'url': ?url};
  }

  factory PacketMirroringNetworkInfo.fromMap(Map<String, dynamic> map) {
    return PacketMirroringNetworkInfo(
      url: (() {
        final guardedValue = map['url'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
