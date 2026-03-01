// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesInterfaceTune {
  /// Specifies the size of the sound buffer for the network interface.
  final double sndBuf;

  /// Creates a new [DomainDevicesInterfaceTune].
  /// [sndBuf] Specifies the size of the sound buffer for the network interface.
  DomainDevicesInterfaceTune({
    required this.sndBuf,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sndBuf': sndBuf,
    };
  }

  factory DomainDevicesInterfaceTune.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceTune(
      sndBuf: map['sndBuf'] as double,
    );
  }
}

