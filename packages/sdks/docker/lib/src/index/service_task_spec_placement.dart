// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_task_spec_placement_platform.dart';

class ServiceTaskSpecPlacement {
  /// An array of constraints. e.g.: `node.role==manager`
  final pulumi.Input<List<String>>? constraints;
  /// Maximum number of replicas for per node (default value is `0`, which is unlimited)
  final pulumi.Input<int>? maxReplicas;
  /// Platforms stores all the platforms that the service's image can run on
  final pulumi.Input<List<ServiceTaskSpecPlacementPlatform>>? platforms;
  /// Preferences provide a way to make the scheduler aware of factors such as topology. They are provided in order from highest to lowest precedence, e.g.: `spread=node.role.manager`
  final pulumi.Input<List<String>>? prefs;

  /// Creates a new [ServiceTaskSpecPlacement].
  /// [constraints] An array of constraints. e.g.: `node.role==manager`
  /// [maxReplicas] Maximum number of replicas for per node (default value is `0`, which is unlimited)
  /// [platforms] Platforms stores all the platforms that the service's image can run on
  /// [prefs] Preferences provide a way to make the scheduler aware of factors such as topology. They are provided in order from highest to lowest precedence, e.g.: `spread=node.role.manager`
  const ServiceTaskSpecPlacement({
    this.constraints,
    this.maxReplicas,
    this.platforms,
    this.prefs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'constraints': ?constraints,
      'maxReplicas': ?maxReplicas,
      'platforms': ?pulumi.Input.mapOptionalInputValue<List<ServiceTaskSpecPlacementPlatform>, List<Map<String, dynamic>>>(platforms, (value) => pulumi.Input.encodeList<ServiceTaskSpecPlacementPlatform, Map<String, dynamic>>(value, (value) => value.toMap())),
      'prefs': ?prefs,
    };
  }

  factory ServiceTaskSpecPlacement.fromMap(Map<String, dynamic> map) {
    return ServiceTaskSpecPlacement(
      constraints: (() { final guardedValue = map['constraints']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      maxReplicas: (() { final guardedValue = map['maxReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      platforms: (() { final guardedValue = map['platforms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceTaskSpecPlacementPlatform>(guardedValue, (value) => ServiceTaskSpecPlacementPlatform.fromMap((value as Map).cast<String, dynamic>()))); })(),
      prefs: (() { final guardedValue = map['prefs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

