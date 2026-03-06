// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Sets the number of 'Always Ready' instances for a function group or a specific function.
class FunctionsAlwaysReadyConfigResponse {
  /// Sets the number of 'Always Ready' instances for a given function group or a specific function. For additional information see https://aka.ms/flexconsumption/alwaysready.
  final pulumi.Input<int>? instanceCount;
  /// Either a function group or a function name is required. For additional information see https://aka.ms/flexconsumption/alwaysready.
  final pulumi.Input<String>? name;

  /// Creates a new [FunctionsAlwaysReadyConfigResponse].
  /// [instanceCount] Sets the number of 'Always Ready' instances for a given function group or a specific function. For additional information see https://aka.ms/flexconsumption/alwaysready.
  /// [name] Either a function group or a function name is required. For additional information see https://aka.ms/flexconsumption/alwaysready.
  const FunctionsAlwaysReadyConfigResponse({
    this.instanceCount,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceCount': ?instanceCount,
      'name': ?name,
    };
  }

  factory FunctionsAlwaysReadyConfigResponse.fromMap(Map<String, dynamic> map) {
    return FunctionsAlwaysReadyConfigResponse(
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

