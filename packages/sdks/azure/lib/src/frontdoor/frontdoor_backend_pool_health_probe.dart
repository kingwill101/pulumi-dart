// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorBackendPoolHealthProbe {
  /// Is this health probe enabled? Defaults to `true`.
  final pulumi.Input<bool?>? enabled;
  /// The ID of the FrontDoor.
  final pulumi.Input<String?>? id;
  /// The number of seconds between each Health Probe. Defaults to `120`.
  final pulumi.Input<int?>? intervalInSeconds;
  /// Specifies the name of the Health Probe.
  final pulumi.Input<String> name;
  /// The path to use for the Health Probe. Default is `/`.
  final pulumi.Input<String?>? path;
  /// Specifies HTTP method the health probe uses when querying the backend pool instances. Possible values include: `GET` and `HEAD`. Defaults to `GET`.
  ///
  /// &gt; **NOTE:** Use the `HEAD` method if you do not need to check the response body of your health probe.
  final pulumi.Input<String?>? probeMethod;
  /// Protocol scheme to use for the Health Probe. Possible values are `Http` and `Https`. Defaults to `Http`.
  final pulumi.Input<String?>? protocol;

  /// Creates a new [FrontdoorBackendPoolHealthProbe].
  /// [enabled] Is this health probe enabled? Defaults to `true`.
  /// [id] The ID of the FrontDoor.
  /// [intervalInSeconds] The number of seconds between each Health Probe. Defaults to `120`.
  /// [name] Specifies the name of the Health Probe.
  /// [path] The path to use for the Health Probe. Default is `/`.
  /// [probeMethod] Specifies HTTP method the health probe uses when querying the backend pool instances. Possible values include: `GET` and `HEAD`. Defaults to `GET`.
  /// [protocol] Protocol scheme to use for the Health Probe. Possible values are `Http` and `Https`. Defaults to `Http`.
  const FrontdoorBackendPoolHealthProbe({
    this.enabled,
    this.id,
    this.intervalInSeconds,
    required this.name,
    this.path,
    this.probeMethod,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'id': ?id,
      'intervalInSeconds': ?intervalInSeconds,
      'name': name,
      'path': ?path,
      'probeMethod': ?probeMethod,
      'protocol': ?protocol,
    };
  }

  factory FrontdoorBackendPoolHealthProbe.fromMap(Map<String, dynamic> map) {
    return FrontdoorBackendPoolHealthProbe(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      intervalInSeconds: (() { final guardedValue = map['intervalInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      probeMethod: (() { final guardedValue = map['probeMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
