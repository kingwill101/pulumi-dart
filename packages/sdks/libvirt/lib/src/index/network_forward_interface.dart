// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkForwardInterface {
  /// Specifies the device for the forwarding interface.
  final pulumi.Input<String>? dev;

  /// Creates a new [NetworkForwardInterface].
  /// [dev] Specifies the device for the forwarding interface.
  NetworkForwardInterface({
    this.dev,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dev': ?dev,
    };
  }

  factory NetworkForwardInterface.fromMap(Map<String, dynamic> map) {
    return NetworkForwardInterface(
      dev: map['dev'] == null ? null : (map['dev'] as String).input(),
    );
  }
}

