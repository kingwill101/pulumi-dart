// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_device_posture_rule_input_locations.dart';

class ZeroTrustDevicePostureRuleInput {
  /// The Number of active threats.
  final pulumi.Input<double?>? activeThreats;
  /// The set of Kolide device authentication states that pass the posture check. Device must match one of the specified states.
  final pulumi.Input<List<String>?>? authStates;
  /// UUID of Cloudflare managed certificate.
  final pulumi.Input<String?>? certificateId;
  /// List of volume names to be checked for encryption.
  final pulumi.Input<List<String>?>? checkDisks;
  /// Confirm the certificate was not imported from another device. We recommend keeping this enabled unless the certificate was deployed without a private key.
  final pulumi.Input<bool?>? checkPrivateKey;
  /// Common Name that is protected by the certificate.
  final pulumi.Input<String?>? cn;
  /// Compliance Status.
  /// Available values: "compliant", "noncompliant", "unknown", "notapplicable", "ingraceperiod", "error".
  final pulumi.Input<String?>? complianceStatus;
  /// Posture Integration ID.
  final pulumi.Input<String?>? connectionId;
  /// Count Operator.
  /// Available values: "&lt;", "&lt;=", "&gt;", "&gt;=", "==".
  final pulumi.Input<String?>? countOperator;
  /// Domain.
  final pulumi.Input<String?>? domain;
  /// For more details on eid last seen, refer to the Tanium documentation.
  final pulumi.Input<String?>? eidLastSeen;
  /// Enabled.
  final pulumi.Input<bool?>? enabled;
  /// Whether or not file exists.
  final pulumi.Input<bool?>? exists;
  /// List of values indicating purposes for which the certificate public key can be used.
  final pulumi.Input<List<String>?>? extendedKeyUsages;
  /// List ID.
  final pulumi.Input<String?>? id;
  /// Whether device is infected.
  final pulumi.Input<bool?>? infected;
  /// Whether device is active.
  final pulumi.Input<bool?>? isActive;
  /// The Number of Issues.
  final pulumi.Input<String?>? issueCount;
  /// For more details on last seen, please refer to the Crowdstrike documentation.
  final pulumi.Input<String?>? lastSeen;
  final pulumi.Input<ZeroTrustDevicePostureRuleInputLocations?>? locations;
  /// Network status of device.
  /// Available values: "connected", "disconnected", "disconnecting", "connecting".
  final pulumi.Input<String?>? networkStatus;
  /// Operating system.
  /// Available values: "windows", "linux", "mac", "android", "ios", "chromeos".
  final pulumi.Input<String?>? operatingSystem;
  /// Agent operational state.
  /// Available values: "na", "partially*disabled", "auto*fully*disabled", "fully*disabled", "auto*partially*disabled", "disabled*error", "db*corruption".
  final pulumi.Input<String?>? operationalState;
  /// Operator.
  /// Available values: "&lt;", "&lt;=", "&gt;", "&gt;=", "==".
  final pulumi.Input<String?>? operator;
  /// Os Version.
  final pulumi.Input<String?>? os;
  /// Operating System Distribution Name (linux only).
  final pulumi.Input<String?>? osDistroName;
  /// Version of OS Distribution (linux only).
  final pulumi.Input<String?>? osDistroRevision;
  /// Additional operating system version details. For Windows, the UBR (Update Build Revision). For Mac or iOS, the Product Version Extra. For Linux, the distribution name and version.
  final pulumi.Input<String?>? osVersionExtra;
  /// Overall.
  final pulumi.Input<String?>? overall;
  /// File path.
  final pulumi.Input<String?>? path;
  /// Whether to check all disks for encryption.
  final pulumi.Input<bool?>? requireAll;
  /// For more details on risk level, refer to the Tanium documentation.
  /// Available values: "low", "medium", "high", "critical".
  final pulumi.Input<String?>? riskLevel;
  /// A value between 0-100 assigned to devices set by the 3rd party posture provider.
  final pulumi.Input<double?>? score;
  /// Score Operator.
  /// Available values: "&lt;", "&lt;=", "&gt;", "&gt;=", "==".
  final pulumi.Input<String?>? scoreOperator;
  /// SensorConfig.
  final pulumi.Input<String?>? sensorConfig;
  /// SHA-256.
  final pulumi.Input<String?>? sha256;
  /// For more details on state, please refer to the Crowdstrike documentation.
  /// Available values: "online", "offline", "unknown".
  final pulumi.Input<String?>? state;
  /// List of certificate Subject Alternative Names.
  final pulumi.Input<List<String>?>? subjectAlternativeNames;
  /// Signing certificate thumbprint.
  final pulumi.Input<String?>? thumbprint;
  /// For more details on total score, refer to the Tanium documentation.
  final pulumi.Input<double?>? totalScore;
  /// Number of days that the antivirus should be updated within.
  final pulumi.Input<double?>? updateWindowDays;
  /// Version of OS.
  final pulumi.Input<String?>? version;
  /// Version Operator.
  /// Available values: "&lt;", "&lt;=", "&gt;", "&gt;=", "==".
  final pulumi.Input<String?>? versionOperator;

  /// Creates a new [ZeroTrustDevicePostureRuleInput].
  /// [activeThreats] The Number of active threats.
  /// [authStates] The set of Kolide device authentication states that pass the posture check. Device must match one of the specified states.
  /// [certificateId] UUID of Cloudflare managed certificate.
  /// [checkDisks] List of volume names to be checked for encryption.
  /// [checkPrivateKey] Confirm the certificate was not imported from another device. We recommend keeping this enabled unless the certificate was deployed without a private key.
  /// [cn] Common Name that is protected by the certificate.
  /// [complianceStatus] Compliance Status.
  /// [connectionId] Posture Integration ID.
  /// [countOperator] Count Operator.
  /// [domain] Domain.
  /// [eidLastSeen] For more details on eid last seen, refer to the Tanium documentation.
  /// [enabled] Enabled.
  /// [exists] Whether or not file exists.
  /// [extendedKeyUsages] List of values indicating purposes for which the certificate public key can be used.
  /// [id] List ID.
  /// [infected] Whether device is infected.
  /// [isActive] Whether device is active.
  /// [issueCount] The Number of Issues.
  /// [lastSeen] For more details on last seen, please refer to the Crowdstrike documentation.
  /// [locations] Optional.
  /// [networkStatus] Network status of device.
  /// [operatingSystem] Operating system.
  /// [operationalState] Agent operational state.
  /// [operator] Operator.
  /// [os] Os Version.
  /// [osDistroName] Operating System Distribution Name (linux only).
  /// [osDistroRevision] Version of OS Distribution (linux only).
  /// [osVersionExtra] Additional operating system version details. For Windows, the UBR (Update Build Revision). For Mac or iOS, the Product Version Extra. For Linux, the distribution name and version.
  /// [overall] Overall.
  /// [path] File path.
  /// [requireAll] Whether to check all disks for encryption.
  /// [riskLevel] For more details on risk level, refer to the Tanium documentation.
  /// [score] A value between 0-100 assigned to devices set by the 3rd party posture provider.
  /// [scoreOperator] Score Operator.
  /// [sensorConfig] SensorConfig.
  /// [sha256] SHA-256.
  /// [state] For more details on state, please refer to the Crowdstrike documentation.
  /// [subjectAlternativeNames] List of certificate Subject Alternative Names.
  /// [thumbprint] Signing certificate thumbprint.
  /// [totalScore] For more details on total score, refer to the Tanium documentation.
  /// [updateWindowDays] Number of days that the antivirus should be updated within.
  /// [version] Version of OS.
  /// [versionOperator] Version Operator.
  const ZeroTrustDevicePostureRuleInput({
    this.activeThreats,
    this.authStates,
    this.certificateId,
    this.checkDisks,
    this.checkPrivateKey,
    this.cn,
    this.complianceStatus,
    this.connectionId,
    this.countOperator,
    this.domain,
    this.eidLastSeen,
    this.enabled,
    this.exists,
    this.extendedKeyUsages,
    this.id,
    this.infected,
    this.isActive,
    this.issueCount,
    this.lastSeen,
    this.locations,
    this.networkStatus,
    this.operatingSystem,
    this.operationalState,
    this.operator,
    this.os,
    this.osDistroName,
    this.osDistroRevision,
    this.osVersionExtra,
    this.overall,
    this.path,
    this.requireAll,
    this.riskLevel,
    this.score,
    this.scoreOperator,
    this.sensorConfig,
    this.sha256,
    this.state,
    this.subjectAlternativeNames,
    this.thumbprint,
    this.totalScore,
    this.updateWindowDays,
    this.version,
    this.versionOperator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeThreats': ?activeThreats,
      'authStates': ?authStates,
      'certificateId': ?certificateId,
      'checkDisks': ?checkDisks,
      'checkPrivateKey': ?checkPrivateKey,
      'cn': ?cn,
      'complianceStatus': ?complianceStatus,
      'connectionId': ?connectionId,
      'countOperator': ?countOperator,
      'domain': ?domain,
      'eidLastSeen': ?eidLastSeen,
      'enabled': ?enabled,
      'exists': ?exists,
      'extendedKeyUsages': ?extendedKeyUsages,
      'id': ?id,
      'infected': ?infected,
      'isActive': ?isActive,
      'issueCount': ?issueCount,
      'lastSeen': ?lastSeen,
      'locations': ?pulumi.Input.mapOptionalInputValue<ZeroTrustDevicePostureRuleInputLocations, Map<String, dynamic>>(locations, (value) => value.toMap()),
      'networkStatus': ?networkStatus,
      'operatingSystem': ?operatingSystem,
      'operationalState': ?operationalState,
      'operator': ?operator,
      'os': ?os,
      'osDistroName': ?osDistroName,
      'osDistroRevision': ?osDistroRevision,
      'osVersionExtra': ?osVersionExtra,
      'overall': ?overall,
      'path': ?path,
      'requireAll': ?requireAll,
      'riskLevel': ?riskLevel,
      'score': ?score,
      'scoreOperator': ?scoreOperator,
      'sensorConfig': ?sensorConfig,
      'sha256': ?sha256,
      'state': ?state,
      'subjectAlternativeNames': ?subjectAlternativeNames,
      'thumbprint': ?thumbprint,
      'totalScore': ?totalScore,
      'updateWindowDays': ?updateWindowDays,
      'version': ?version,
      'versionOperator': ?versionOperator,
    };
  }

  factory ZeroTrustDevicePostureRuleInput.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDevicePostureRuleInput(
      activeThreats: (() { final guardedValue = map['activeThreats']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      authStates: (() { final guardedValue = map['authStates']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      certificateId: (() { final guardedValue = map['certificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      checkDisks: (() { final guardedValue = map['checkDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      checkPrivateKey: (() { final guardedValue = map['checkPrivateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cn: (() { final guardedValue = map['cn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      complianceStatus: (() { final guardedValue = map['complianceStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionId: (() { final guardedValue = map['connectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      countOperator: (() { final guardedValue = map['countOperator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eidLastSeen: (() { final guardedValue = map['eidLastSeen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      exists: (() { final guardedValue = map['exists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      extendedKeyUsages: (() { final guardedValue = map['extendedKeyUsages']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      infected: (() { final guardedValue = map['infected']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isActive: (() { final guardedValue = map['isActive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      issueCount: (() { final guardedValue = map['issueCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastSeen: (() { final guardedValue = map['lastSeen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustDevicePostureRuleInputLocations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkStatus: (() { final guardedValue = map['networkStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operatingSystem: (() { final guardedValue = map['operatingSystem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationalState: (() { final guardedValue = map['operationalState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operator: (() { final guardedValue = map['operator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      os: (() { final guardedValue = map['os']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osDistroName: (() { final guardedValue = map['osDistroName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osDistroRevision: (() { final guardedValue = map['osDistroRevision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osVersionExtra: (() { final guardedValue = map['osVersionExtra']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      overall: (() { final guardedValue = map['overall']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requireAll: (() { final guardedValue = map['requireAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      riskLevel: (() { final guardedValue = map['riskLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      score: (() { final guardedValue = map['score']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      scoreOperator: (() { final guardedValue = map['scoreOperator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sensorConfig: (() { final guardedValue = map['sensorConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sha256: (() { final guardedValue = map['sha256']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subjectAlternativeNames: (() { final guardedValue = map['subjectAlternativeNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      totalScore: (() { final guardedValue = map['totalScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      updateWindowDays: (() { final guardedValue = map['updateWindowDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionOperator: (() { final guardedValue = map['versionOperator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
