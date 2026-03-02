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
  ServiceTaskSpecPlacement({
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
      constraints: map['constraints'] == null ? null : ((map['constraints'] as List).cast<String>()).input(),
      maxReplicas: map['maxReplicas'] == null ? null : (map['maxReplicas'] as int).input(),
      platforms: map['platforms'] == null ? null : (pulumi.Input.decodeList<ServiceTaskSpecPlacementPlatform>(map['platforms'], (value) => ServiceTaskSpecPlacementPlatform.fromMap((value as Map).cast<String, dynamic>()))).input(),
      prefs: map['prefs'] == null ? null : ((map['prefs'] as List).cast<String>()).input(),
    );
  }
}

