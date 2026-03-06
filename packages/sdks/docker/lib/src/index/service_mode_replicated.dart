// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceModeReplicated {
  /// The amount of replicas of the service. Defaults to `1`
  final pulumi.Input<int>? replicas;

  /// Creates a new [ServiceModeReplicated].
  /// [replicas] The amount of replicas of the service. Defaults to `1`
  const ServiceModeReplicated({
    this.replicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicas': ?replicas,
    };
  }

  factory ServiceModeReplicated.fromMap(Map<String, dynamic> map) {
    return ServiceModeReplicated(
      replicas: (() { final guardedValue = map['replicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

