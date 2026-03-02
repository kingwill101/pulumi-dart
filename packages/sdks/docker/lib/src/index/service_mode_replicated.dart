// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceModeReplicated {
  /// The amount of replicas of the service. Defaults to `1`
  final pulumi.Input<int>? replicas;

  /// Creates a new [ServiceModeReplicated].
  /// [replicas] The amount of replicas of the service. Defaults to `1`
  ServiceModeReplicated({
    this.replicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicas': ?replicas,
    };
  }

  factory ServiceModeReplicated.fromMap(Map<String, dynamic> map) {
    return ServiceModeReplicated(
      replicas: map['replicas'] == null ? null : (map['replicas'] as int).input(),
    );
  }
}

