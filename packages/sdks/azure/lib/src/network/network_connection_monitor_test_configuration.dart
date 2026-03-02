// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_connection_monitor_test_configuration_http_configuration.dart';
import 'network_connection_monitor_test_configuration_icmp_configuration.dart';
import 'network_connection_monitor_test_configuration_success_threshold.dart';
import 'network_connection_monitor_test_configuration_tcp_configuration.dart';

class NetworkConnectionMonitorTestConfiguration {
  /// A `http_configuration` block as defined below.
  final pulumi.Input<NetworkConnectionMonitorTestConfigurationHttpConfiguration>? httpConfiguration;
  /// A `icmp_configuration` block as defined below.
  final pulumi.Input<NetworkConnectionMonitorTestConfigurationIcmpConfiguration>? icmpConfiguration;
  /// The name of test configuration for the Network Connection Monitor.
  final pulumi.Input<String> name;
  /// The preferred IP version which is used in the test evaluation. Possible values are `IPv4` and `IPv6`.
  final pulumi.Input<String>? preferredIpVersion;
  /// The protocol used to evaluate tests. Possible values are `Tcp`, `Http` and `Icmp`.
  final pulumi.Input<String> protocol;
  /// A `success_threshold` block as defined below.
  final pulumi.Input<NetworkConnectionMonitorTestConfigurationSuccessThreshold>? successThreshold;
  /// A `tcp_configuration` block as defined below.
  final pulumi.Input<NetworkConnectionMonitorTestConfigurationTcpConfiguration>? tcpConfiguration;
  /// The time interval in seconds at which the test evaluation will happen. Defaults to `60`.
  final pulumi.Input<int>? testFrequencyInSeconds;

  /// Creates a new [NetworkConnectionMonitorTestConfiguration].
  /// [httpConfiguration] A `http_configuration` block as defined below.
  /// [icmpConfiguration] A `icmp_configuration` block as defined below.
  /// [name] The name of test configuration for the Network Connection Monitor.
  /// [preferredIpVersion] The preferred IP version which is used in the test evaluation. Possible values are `IPv4` and `IPv6`.
  /// [protocol] The protocol used to evaluate tests. Possible values are `Tcp`, `Http` and `Icmp`.
  /// [successThreshold] A `success_threshold` block as defined below.
  /// [tcpConfiguration] A `tcp_configuration` block as defined below.
  /// [testFrequencyInSeconds] The time interval in seconds at which the test evaluation will happen. Defaults to `60`.
  NetworkConnectionMonitorTestConfiguration({
    this.httpConfiguration,
    this.icmpConfiguration,
    required this.name,
    this.preferredIpVersion,
    required this.protocol,
    this.successThreshold,
    this.tcpConfiguration,
    this.testFrequencyInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpConfiguration': ?pulumi.Input.mapOptionalInputValue<NetworkConnectionMonitorTestConfigurationHttpConfiguration, Map<String, dynamic>>(httpConfiguration, (value) => value.toMap()),
      'icmpConfiguration': ?pulumi.Input.mapOptionalInputValue<NetworkConnectionMonitorTestConfigurationIcmpConfiguration, Map<String, dynamic>>(icmpConfiguration, (value) => value.toMap()),
      'name': name,
      'preferredIpVersion': ?preferredIpVersion,
      'protocol': protocol,
      'successThreshold': ?pulumi.Input.mapOptionalInputValue<NetworkConnectionMonitorTestConfigurationSuccessThreshold, Map<String, dynamic>>(successThreshold, (value) => value.toMap()),
      'tcpConfiguration': ?pulumi.Input.mapOptionalInputValue<NetworkConnectionMonitorTestConfigurationTcpConfiguration, Map<String, dynamic>>(tcpConfiguration, (value) => value.toMap()),
      'testFrequencyInSeconds': ?testFrequencyInSeconds,
    };
  }

  factory NetworkConnectionMonitorTestConfiguration.fromMap(Map<String, dynamic> map) {
    return NetworkConnectionMonitorTestConfiguration(
      httpConfiguration: map['httpConfiguration'] == null ? null : (NetworkConnectionMonitorTestConfigurationHttpConfiguration.fromMap((map['httpConfiguration']! as Map).cast<String, dynamic>())).input(),
      icmpConfiguration: map['icmpConfiguration'] == null ? null : (NetworkConnectionMonitorTestConfigurationIcmpConfiguration.fromMap((map['icmpConfiguration']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      preferredIpVersion: map['preferredIpVersion'] == null ? null : (map['preferredIpVersion']! as String).input(),
      protocol: (map['protocol'] as String).input(),
      successThreshold: map['successThreshold'] == null ? null : (NetworkConnectionMonitorTestConfigurationSuccessThreshold.fromMap((map['successThreshold']! as Map).cast<String, dynamic>())).input(),
      tcpConfiguration: map['tcpConfiguration'] == null ? null : (NetworkConnectionMonitorTestConfigurationTcpConfiguration.fromMap((map['tcpConfiguration']! as Map).cast<String, dynamic>())).input(),
      testFrequencyInSeconds: map['testFrequencyInSeconds'] == null ? null : (map['testFrequencyInSeconds']! as int).input(),
    );
  }
}

