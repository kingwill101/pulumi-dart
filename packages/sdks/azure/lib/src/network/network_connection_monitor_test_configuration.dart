// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_connection_monitor_test_configuration_http_configuration.dart';
import 'network_connection_monitor_test_configuration_icmp_configuration.dart';
import 'network_connection_monitor_test_configuration_success_threshold.dart';
import 'network_connection_monitor_test_configuration_tcp_configuration.dart';

class NetworkConnectionMonitorTestConfiguration {
  /// A `httpConfiguration` block as defined below.
  final pulumi.Input<NetworkConnectionMonitorTestConfigurationHttpConfiguration?>? httpConfiguration;
  /// A `icmpConfiguration` block as defined below.
  final pulumi.Input<NetworkConnectionMonitorTestConfigurationIcmpConfiguration?>? icmpConfiguration;
  /// The name of test configuration for the Network Connection Monitor.
  final pulumi.Input<String> name;
  /// The preferred IP version which is used in the test evaluation. Possible values are `IPv4` and `IPv6`.
  final pulumi.Input<String?>? preferredIpVersion;
  /// The protocol used to evaluate tests. Possible values are `Tcp`, `Http` and `Icmp`.
  final pulumi.Input<String> protocol;
  /// A `successThreshold` block as defined below.
  final pulumi.Input<NetworkConnectionMonitorTestConfigurationSuccessThreshold?>? successThreshold;
  /// A `tcpConfiguration` block as defined below.
  final pulumi.Input<NetworkConnectionMonitorTestConfigurationTcpConfiguration?>? tcpConfiguration;
  /// The time interval in seconds at which the test evaluation will happen. Defaults to `60`.
  final pulumi.Input<int?>? testFrequencyInSeconds;

  /// Creates a new [NetworkConnectionMonitorTestConfiguration].
  /// [httpConfiguration] A `httpConfiguration` block as defined below.
  /// [icmpConfiguration] A `icmpConfiguration` block as defined below.
  /// [name] The name of test configuration for the Network Connection Monitor.
  /// [preferredIpVersion] The preferred IP version which is used in the test evaluation. Possible values are `IPv4` and `IPv6`.
  /// [protocol] The protocol used to evaluate tests. Possible values are `Tcp`, `Http` and `Icmp`.
  /// [successThreshold] A `successThreshold` block as defined below.
  /// [tcpConfiguration] A `tcpConfiguration` block as defined below.
  /// [testFrequencyInSeconds] The time interval in seconds at which the test evaluation will happen. Defaults to `60`.
  const NetworkConnectionMonitorTestConfiguration({
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
      httpConfiguration: (() { final guardedValue = map['httpConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkConnectionMonitorTestConfigurationHttpConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      icmpConfiguration: (() { final guardedValue = map['icmpConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkConnectionMonitorTestConfigurationIcmpConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      preferredIpVersion: (() { final guardedValue = map['preferredIpVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      successThreshold: (() { final guardedValue = map['successThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkConnectionMonitorTestConfigurationSuccessThreshold.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tcpConfiguration: (() { final guardedValue = map['tcpConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkConnectionMonitorTestConfigurationTcpConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      testFrequencyInSeconds: (() { final guardedValue = map['testFrequencyInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
