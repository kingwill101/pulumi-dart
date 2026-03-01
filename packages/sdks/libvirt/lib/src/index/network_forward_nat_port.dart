// ignore_for_file: unused_element, unnecessary_cast


class NetworkForwardNatPort {
  /// Sets the ending port number for the NAT port range.
  final double end;
  /// Specifies the starting port number for the NAT port range.
  final double start;

  /// Creates a new [NetworkForwardNatPort].
  /// [end] Sets the ending port number for the NAT port range.
  /// [start] Specifies the starting port number for the NAT port range.
  NetworkForwardNatPort({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': end,
      'start': start,
    };
  }

  factory NetworkForwardNatPort.fromMap(Map<String, dynamic> map) {
    return NetworkForwardNatPort(
      end: map['end'] as double,
      start: map['start'] as double,
    );
  }
}

