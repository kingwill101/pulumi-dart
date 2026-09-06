// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies a metric to load balance a service during runtime.
class ServiceLoadMetric {
  /// Used only for Stateless services. The default amount of load, as a number, that this service creates for this metric.
  final pulumi.Input<int?>? defaultLoad;
  /// The name of the metric. If the service chooses to report load during runtime, the load metric name should match the name that is specified in Name exactly. Note that metric names are case sensitive.
  final pulumi.Input<String> name;
  /// Used only for Stateful services. The default amount of load, as a number, that this service creates for this metric when it is a Primary replica.
  final pulumi.Input<int?>? primaryDefaultLoad;
  /// Used only for Stateful services. The default amount of load, as a number, that this service creates for this metric when it is a Secondary replica.
  final pulumi.Input<int?>? secondaryDefaultLoad;
  /// The service load metric relative weight, compared to other metrics configured for this service, as a number.
  final pulumi.Input<dynamic>? weight;

  /// Creates a new [ServiceLoadMetric].
  /// [defaultLoad] Used only for Stateless services. The default amount of load, as a number, that this service creates for this metric.
  /// [name] The name of the metric. If the service chooses to report load during runtime, the load metric name should match the name that is specified in Name exactly. Note that metric names are case sensitive.
  /// [primaryDefaultLoad] Used only for Stateful services. The default amount of load, as a number, that this service creates for this metric when it is a Primary replica.
  /// [secondaryDefaultLoad] Used only for Stateful services. The default amount of load, as a number, that this service creates for this metric when it is a Secondary replica.
  /// [weight] The service load metric relative weight, compared to other metrics configured for this service, as a number.
  const ServiceLoadMetric({
    this.defaultLoad,
    required this.name,
    this.primaryDefaultLoad,
    this.secondaryDefaultLoad,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultLoad': ?defaultLoad,
      'name': name,
      'primaryDefaultLoad': ?primaryDefaultLoad,
      'secondaryDefaultLoad': ?secondaryDefaultLoad,
      'weight': ?weight,
    };
  }

  factory ServiceLoadMetric.fromMap(Map<String, dynamic> map) {
    return ServiceLoadMetric(
      defaultLoad: (() { final guardedValue = map['defaultLoad']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      primaryDefaultLoad: (() { final guardedValue = map['primaryDefaultLoad']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      secondaryDefaultLoad: (() { final guardedValue = map['secondaryDefaultLoad']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
