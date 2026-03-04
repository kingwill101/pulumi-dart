// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IntegrationRuntimeSsisCopyComputeScale {
  /// Specifies the data integration unit number setting reserved for copy activity execution. Supported values are multiples of `4` in range 4-256.
  final pulumi.Input<int>? dataIntegrationUnit;

  /// Specifies the time to live (in minutes) setting of integration runtime which will execute copy activity. Possible values are at least `5`.
  final pulumi.Input<int>? timeToLive;

  /// Creates a new [IntegrationRuntimeSsisCopyComputeScale].
  /// [dataIntegrationUnit] Specifies the data integration unit number setting reserved for copy activity execution. Supported values are multiples of `4` in range 4-256.
  /// [timeToLive] Specifies the time to live (in minutes) setting of integration runtime which will execute copy activity. Possible values are at least `5`.
  IntegrationRuntimeSsisCopyComputeScale({
    this.dataIntegrationUnit,
    this.timeToLive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataIntegrationUnit': ?dataIntegrationUnit,
      'timeToLive': ?timeToLive,
    };
  }

  factory IntegrationRuntimeSsisCopyComputeScale.fromMap(
    Map<String, dynamic> map,
  ) {
    return IntegrationRuntimeSsisCopyComputeScale(
      dataIntegrationUnit: (() {
        final guardedValue = map['dataIntegrationUnit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      timeToLive: (() {
        final guardedValue = map['timeToLive'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
