// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Sets the number of 'Always Ready' instances for a function group or a specific function.
class FunctionsAlwaysReadyConfig {
  /// Sets the number of 'Always Ready' instances for a given function group or a specific function. For additional information see https://aka.ms/flexconsumption/alwaysready.
  final pulumi.Input<int>? instanceCount;
  /// Either a function group or a function name is required. For additional information see https://aka.ms/flexconsumption/alwaysready.
  final pulumi.Input<String>? name;

  /// Creates a new [FunctionsAlwaysReadyConfig].
  /// [instanceCount] Sets the number of 'Always Ready' instances for a given function group or a specific function. For additional information see https://aka.ms/flexconsumption/alwaysready.
  /// [name] Either a function group or a function name is required. For additional information see https://aka.ms/flexconsumption/alwaysready.
  FunctionsAlwaysReadyConfig({
    this.instanceCount,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceCount': ?instanceCount,
      'name': ?name,
    };
  }

  factory FunctionsAlwaysReadyConfig.fromMap(Map<String, dynamic> map) {
    return FunctionsAlwaysReadyConfig(
      instanceCount: map['instanceCount'] == null ? null : (map['instanceCount']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

