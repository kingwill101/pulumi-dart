// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceTune {
  /// Specifies the size of the sound buffer for the network interface.
  final pulumi.Input<double> sndBuf;

  /// Creates a new [DomainDevicesInterfaceTune].
  /// [sndBuf] Specifies the size of the sound buffer for the network interface.
  const DomainDevicesInterfaceTune({
    required this.sndBuf,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sndBuf': sndBuf,
    };
  }

  factory DomainDevicesInterfaceTune.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceTune(
      sndBuf: pulumi.Input.fromValue(map['sndBuf'] as double),
    );
  }
}

