// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PacketMirroringMirroredResourcesInstance {
  /// The URL of the instances where this rule should be active.
  final pulumi.Input<String> url;

  /// Creates a new [PacketMirroringMirroredResourcesInstance].
  /// [url] The URL of the instances where this rule should be active.
  PacketMirroringMirroredResourcesInstance({required this.url});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'url': url};
  }

  factory PacketMirroringMirroredResourcesInstance.fromMap(
    Map<String, dynamic> map,
  ) {
    return PacketMirroringMirroredResourcesInstance(
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
