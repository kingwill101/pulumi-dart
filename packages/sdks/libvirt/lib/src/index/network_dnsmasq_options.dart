// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_dnsmasq_options_option.dart';

class NetworkDnsmasqOptions {
  final pulumi.Input<List<NetworkDnsmasqOptionsOption>>? options;

  /// Creates a new [NetworkDnsmasqOptions].
  /// [options] Optional.
  const NetworkDnsmasqOptions({
    this.options,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'options': ?pulumi.Input.mapOptionalInputValue<List<NetworkDnsmasqOptionsOption>, List<Map<String, dynamic>>>(options, (value) => pulumi.Input.encodeList<NetworkDnsmasqOptionsOption, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkDnsmasqOptions.fromMap(Map<String, dynamic> map) {
    return NetworkDnsmasqOptions(
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkDnsmasqOptionsOption>(guardedValue, (value) => NetworkDnsmasqOptionsOption.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
