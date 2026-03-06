// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_backend_pool_backend.dart';

class FrontdoorBackendPool {
  /// A `backend` block as defined below.
  final pulumi.Input<List<FrontdoorBackendPoolBackend>> backends;
  /// Specifies the name of the `backend_pool_health_probe` block within this resource to use for this `Backend Pool`.
  final pulumi.Input<String> healthProbeName;
  /// The ID of the FrontDoor.
  final pulumi.Input<String>? id;
  /// Specifies the name of the `backend_pool_load_balancing` block within this resource to use for this `Backend Pool`.
  final pulumi.Input<String> loadBalancingName;
  /// Specifies the name of the Backend Pool.
  final pulumi.Input<String> name;

  /// Creates a new [FrontdoorBackendPool].
  /// [backends] A `backend` block as defined below.
  /// [healthProbeName] Specifies the name of the `backend_pool_health_probe` block within this resource to use for this `Backend Pool`.
  /// [id] The ID of the FrontDoor.
  /// [loadBalancingName] Specifies the name of the `backend_pool_load_balancing` block within this resource to use for this `Backend Pool`.
  /// [name] Specifies the name of the Backend Pool.
  const FrontdoorBackendPool({
    required this.backends,
    required this.healthProbeName,
    this.id,
    required this.loadBalancingName,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backends': pulumi.Input.mapInputValue<List<FrontdoorBackendPoolBackend>, List<Map<String, dynamic>>>(backends, (value) => pulumi.Input.encodeList<FrontdoorBackendPoolBackend, Map<String, dynamic>>(value, (value) => value.toMap())),
      'healthProbeName': healthProbeName,
      'id': ?id,
      'loadBalancingName': loadBalancingName,
      'name': name,
    };
  }

  factory FrontdoorBackendPool.fromMap(Map<String, dynamic> map) {
    return FrontdoorBackendPool(
      backends: pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorBackendPoolBackend>(map['backends']!, (value) => FrontdoorBackendPoolBackend.fromMap((value as Map).cast<String, dynamic>()))),
      healthProbeName: pulumi.Input.fromValue(map['healthProbeName'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancingName: pulumi.Input.fromValue(map['loadBalancingName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

