// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_host_config.dart';

/// Describes the http configuration for external connectivity for this network.
class HttpConfig {
  /// description for routing.
  final pulumi.Input<List<HttpHostConfig>> hosts;

  /// http gateway config name.
  final pulumi.Input<String> name;

  /// Specifies the port at which the service endpoint below needs to be exposed.
  final pulumi.Input<int> port;

  /// Creates a new [HttpConfig].
  /// [hosts] description for routing.
  /// [name] http gateway config name.
  /// [port] Specifies the port at which the service endpoint below needs to be exposed.
  HttpConfig({required this.hosts, required this.name, required this.port});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hosts':
          pulumi.Input.mapInputValue<
            List<HttpHostConfig>,
            List<Map<String, dynamic>>
          >(
            hosts,
            (value) =>
                pulumi.Input.encodeList<HttpHostConfig, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'name': name,
      'port': port,
    };
  }

  factory HttpConfig.fromMap(Map<String, dynamic> map) {
    return HttpConfig(
      hosts: pulumi.Input.fromValue(
        pulumi.Input.decodeList<HttpHostConfig>(
          map['hosts']!,
          (value) =>
              HttpHostConfig.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
    );
  }
}
