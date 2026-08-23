// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalystAgentPersonaExternalDataSource {
  /// Configurations for the AirQuality external data source.
  final pulumi.Input<Map<String, dynamic>>? airQuality;
  /// Configurations for the BureauLaborStatistics external data source.
  final pulumi.Input<Map<String, dynamic>>? bureauLaborStatistics;
  /// Configurations for the Coindesk external data source.
  final pulumi.Input<Map<String, dynamic>>? coindesk;
  /// Whether this external data source is enabled for the current analysis.
  final pulumi.Input<bool> enabled;
  /// Configurations for the Finnhub external data source.
  final pulumi.Input<Map<String, dynamic>>? finnhub;
  /// Configurations for the Fred external data source.
  final pulumi.Input<Map<String, dynamic>>? fred;
  /// Configurations for the SecEdgar external data source.
  final pulumi.Input<Map<String, dynamic>>? secEdgar;
  /// The name of the external data source, used for custom org policy
  /// evaluation. Output-only (populated automatically with the selection case
  /// name).
  final pulumi.Input<String>? selectionName;
  /// Configurations for the TreasurySecuritiesAuctions external data source.
  final pulumi.Input<Map<String, dynamic>>? treasurySecuritiesAuctions;
  /// Configurations for the USDA external data source.
  final pulumi.Input<Map<String, dynamic>>? usda;

  /// Creates a new [AnalystAgentPersonaExternalDataSource].
  /// [airQuality] Configurations for the AirQuality external data source.
  /// [bureauLaborStatistics] Configurations for the BureauLaborStatistics external data source.
  /// [coindesk] Configurations for the Coindesk external data source.
  /// [enabled] Whether this external data source is enabled for the current analysis.
  /// [finnhub] Configurations for the Finnhub external data source.
  /// [fred] Configurations for the Fred external data source.
  /// [secEdgar] Configurations for the SecEdgar external data source.
  /// [selectionName] The name of the external data source, used for custom org policy
  /// [treasurySecuritiesAuctions] Configurations for the TreasurySecuritiesAuctions external data source.
  /// [usda] Configurations for the USDA external data source.
  const AnalystAgentPersonaExternalDataSource({
    this.airQuality,
    this.bureauLaborStatistics,
    this.coindesk,
    required this.enabled,
    this.finnhub,
    this.fred,
    this.secEdgar,
    this.selectionName,
    this.treasurySecuritiesAuctions,
    this.usda,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'airQuality': ?airQuality,
      'bureauLaborStatistics': ?bureauLaborStatistics,
      'coindesk': ?coindesk,
      'enabled': enabled,
      'finnhub': ?finnhub,
      'fred': ?fred,
      'secEdgar': ?secEdgar,
      'selectionName': ?selectionName,
      'treasurySecuritiesAuctions': ?treasurySecuritiesAuctions,
      'usda': ?usda,
    };
  }

  factory AnalystAgentPersonaExternalDataSource.fromMap(Map<String, dynamic> map) {
    return AnalystAgentPersonaExternalDataSource(
      airQuality: (() { final guardedValue = map['airQuality']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      bureauLaborStatistics: (() { final guardedValue = map['bureauLaborStatistics']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      coindesk: (() { final guardedValue = map['coindesk']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      finnhub: (() { final guardedValue = map['finnhub']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      fred: (() { final guardedValue = map['fred']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      secEdgar: (() { final guardedValue = map['secEdgar']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      selectionName: (() { final guardedValue = map['selectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      treasurySecuritiesAuctions: (() { final guardedValue = map['treasurySecuritiesAuctions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      usda: (() { final guardedValue = map['usda']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
