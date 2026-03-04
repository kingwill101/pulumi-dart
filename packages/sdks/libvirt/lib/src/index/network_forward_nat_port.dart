// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkForwardNatPort {
  /// Sets the ending port number for the NAT port range.
  final pulumi.Input<double> end;

  /// Specifies the starting port number for the NAT port range.
  final pulumi.Input<double> start;

  /// Creates a new [NetworkForwardNatPort].
  /// [end] Sets the ending port number for the NAT port range.
  /// [start] Specifies the starting port number for the NAT port range.
  NetworkForwardNatPort({required this.end, required this.start});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'end': end, 'start': start};
  }

  factory NetworkForwardNatPort.fromMap(Map<String, dynamic> map) {
    return NetworkForwardNatPort(
      end: pulumi.Input.fromValue(map['end'] as double),
      start: pulumi.Input.fromValue(map['start'] as double),
    );
  }
}
