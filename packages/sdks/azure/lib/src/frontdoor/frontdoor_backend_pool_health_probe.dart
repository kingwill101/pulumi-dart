// ignore_for_file: unused_element, unnecessary_cast


class FrontdoorBackendPoolHealthProbe {
  /// Is this health probe enabled? Defaults to `true`.
  final bool? enabled;
  /// The ID of the FrontDoor.
  final String? id;
  /// The number of seconds between each Health Probe. Defaults to `120`.
  final int? intervalInSeconds;
  /// Specifies the name of the Health Probe.
  final String name;
  /// The path to use for the Health Probe. Default is `/`.
  final String? path;
  /// Specifies HTTP method the health probe uses when querying the backend pool instances. Possible values include: `GET` and `HEAD`. Defaults to `GET`.
  ///
  /// > **NOTE:** Use the `HEAD` method if you do not need to check the response body of your health probe.
  final String? probeMethod;
  /// Protocol scheme to use for the Health Probe. Possible values are `Http` and `Https`. Defaults to `Http`.
  final String? protocol;

  /// Creates a new [FrontdoorBackendPoolHealthProbe].
  /// [enabled] Is this health probe enabled? Defaults to `true`.
  /// [id] The ID of the FrontDoor.
  /// [intervalInSeconds] The number of seconds between each Health Probe. Defaults to `120`.
  /// [name] Specifies the name of the Health Probe.
  /// [path] The path to use for the Health Probe. Default is `/`.
  /// [probeMethod] Specifies HTTP method the health probe uses when querying the backend pool instances. Possible values include: `GET` and `HEAD`. Defaults to `GET`.
  /// [protocol] Protocol scheme to use for the Health Probe. Possible values are `Http` and `Https`. Defaults to `Http`.
  FrontdoorBackendPoolHealthProbe({
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
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      id: map['id'] == null ? null : map['id'] as String,
      intervalInSeconds: map['intervalInSeconds'] == null ? null : map['intervalInSeconds'] as int,
      name: map['name'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      probeMethod: map['probeMethod'] == null ? null : map['probeMethod'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
    );
  }
}

