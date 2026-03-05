// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkConnectionMonitorTestGroup {
  /// A list of destination endpoint names.
  final pulumi.Input<List<String>> destinationEndpoints;
  /// Should the test group be enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The name of the test group for the Network Connection Monitor.
  final pulumi.Input<String> name;
  /// A list of source endpoint names.
  final pulumi.Input<List<String>> sourceEndpoints;
  /// A list of test configuration names.
  final pulumi.Input<List<String>> testConfigurationNames;

  /// Creates a new [NetworkConnectionMonitorTestGroup].
  /// [destinationEndpoints] A list of destination endpoint names.
  /// [enabled] Should the test group be enabled? Defaults to `true`.
  /// [name] The name of the test group for the Network Connection Monitor.
  /// [sourceEndpoints] A list of source endpoint names.
  /// [testConfigurationNames] A list of test configuration names.
  NetworkConnectionMonitorTestGroup({
    required this.destinationEndpoints,
    this.enabled,
    required this.name,
    required this.sourceEndpoints,
    required this.testConfigurationNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationEndpoints': destinationEndpoints,
      'enabled': ?enabled,
      'name': name,
      'sourceEndpoints': sourceEndpoints,
      'testConfigurationNames': testConfigurationNames,
    };
  }

  factory NetworkConnectionMonitorTestGroup.fromMap(Map<String, dynamic> map) {
    return NetworkConnectionMonitorTestGroup(
      destinationEndpoints: pulumi.Input.fromValue((map['destinationEndpoints'] as List).cast<String>()),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      sourceEndpoints: pulumi.Input.fromValue((map['sourceEndpoints'] as List).cast<String>()),
      testConfigurationNames: pulumi.Input.fromValue((map['testConfigurationNames'] as List).cast<String>()),
    );
  }
}

