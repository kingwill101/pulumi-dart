// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkDnsmasqOptionsOption {
  /// Sets the value associated with the TXT record.
  final pulumi.Input<String> value;

  /// Creates a new [NetworkDnsmasqOptionsOption].
  /// [value] Sets the value associated with the TXT record.
  const NetworkDnsmasqOptionsOption({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory NetworkDnsmasqOptionsOption.fromMap(Map<String, dynamic> map) {
    return NetworkDnsmasqOptionsOption(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
