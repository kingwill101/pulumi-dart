// ignore_for_file: unused_element, unnecessary_cast


class IntegrationRuntimeSsisCopyComputeScale {
  /// Specifies the data integration unit number setting reserved for copy activity execution. Supported values are multiples of `4` in range 4-256.
  final int? dataIntegrationUnit;
  /// Specifies the time to live (in minutes) setting of integration runtime which will execute copy activity. Possible values are at least `5`.
  final int? timeToLive;

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

  factory IntegrationRuntimeSsisCopyComputeScale.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeSsisCopyComputeScale(
      dataIntegrationUnit: map['dataIntegrationUnit'] == null ? null : map['dataIntegrationUnit'] as int,
      timeToLive: map['timeToLive'] == null ? null : map['timeToLive'] as int,
    );
  }
}

