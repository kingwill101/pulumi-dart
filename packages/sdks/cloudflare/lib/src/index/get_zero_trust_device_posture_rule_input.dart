// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_device_posture_rule_input_locations.dart';

class GetZeroTrustDevicePostureRuleInput {
  /// The Number of active threats.
  final pulumi.Input<double> activeThreats;
  /// The set of Kolide device authentication states that pass the posture check. Device must match one of the specified states.
  final pulumi.Input<List<String>> authStates;
  /// UUID of Cloudflare managed certificate.
  final pulumi.Input<String> certificateId;
  /// List of volume names to be checked for encryption.
  final pulumi.Input<List<String>> checkDisks;
  /// Confirm the certificate was not imported from another device. We recommend keeping this enabled unless the certificate was deployed without a private key.
  final pulumi.Input<bool> checkPrivateKey;
  /// Common Name that is protected by the certificate.
  final pulumi.Input<String> cn;
  /// Compliance Status.
  /// Available values: "compliant", "noncompliant", "unknown", "notapplicable", "ingraceperiod", "error".
  final pulumi.Input<String> complianceStatus;
  /// Posture Integration ID.
  final pulumi.Input<String> connectionId;
  /// Count Operator.
  /// Available values: "&lt;", "&lt;=", "&gt;", "&gt;=", "==".
  final pulumi.Input<String> countOperator;
  /// Domain.
  final pulumi.Input<String> domain;
  /// For more details on eid last seen, refer to the Tanium documentation.
  final pulumi.Input<String> eidLastSeen;
  /// Enabled.
  final pulumi.Input<bool> enabled;
  /// Whether or not file exists.
  final pulumi.Input<bool> exists;
  /// List of values indicating purposes for which the certificate public key can be used.
  final pulumi.Input<List<String>> extendedKeyUsages;
  /// List ID.
  final pulumi.Input<String> id;
  /// Whether device is infected.
  final pulumi.Input<bool> infected;
  /// Whether device is active.
  final pulumi.Input<bool> isActive;
  /// The Number of Issues.
  final pulumi.Input<String> issueCount;
  /// For more details on last seen, please refer to the Crowdstrike documentation.
  final pulumi.Input<String> lastSeen;
  final pulumi.Input<GetZeroTrustDevicePostureRuleInputLocations> locations;
  /// Network status of device.
  /// Available values: "connected", "disconnected", "disconnecting", "connecting".
  final pulumi.Input<String> networkStatus;
  /// Operating system.
  /// Available values: "windows", "linux", "mac", "android", "ios", "chromeos".
  final pulumi.Input<String> operatingSystem;
  /// Agent operational state.
  /// Available values: "na", "partially*disabled", "auto*fully*disabled", "fully*disabled", "auto*partially*disabled", "disabled*error", "db*corruption".
  final pulumi.Input<String> operationalState;
  /// Operator.
  /// Available values: "&lt;", "&lt;=", "&gt;", "&gt;=", "==".
  final pulumi.Input<String> operator;
  /// Os Version.
  final pulumi.Input<String> os;
  /// Operating System Distribution Name (linux only).
  final pulumi.Input<String> osDistroName;
  /// Version of OS Distribution (linux only).
  final pulumi.Input<String> osDistroRevision;
  /// Additional operating system version details. For Windows, the UBR (Update Build Revision). For Mac or iOS, the Product Version Extra. For Linux, the distribution name and version.
  final pulumi.Input<String> osVersionExtra;
  /// Overall.
  final pulumi.Input<String> overall;
  /// File path.
  final pulumi.Input<String> path;
  /// Whether to check all disks for encryption.
  final pulumi.Input<bool> requireAll;
  /// For more details on risk level, refer to the Tanium documentation.
  /// Available values: "low", "medium", "high", "critical".
  final pulumi.Input<String> riskLevel;
  /// A value between 0-100 assigned to devices set by the 3rd party posture provider.
  final pulumi.Input<double> score;
  /// Score Operator.
  /// Available values: "&lt;", "&lt;=", "&gt;", "&gt;=", "==".
  final pulumi.Input<String> scoreOperator;
  /// SensorConfig.
  final pulumi.Input<String> sensorConfig;
  /// SHA-256.
  final pulumi.Input<String> sha256;
  /// For more details on state, please refer to the Crowdstrike documentation.
  /// Available values: "online", "offline", "unknown".
  final pulumi.Input<String> state;
  /// List of certificate Subject Alternative Names.
  final pulumi.Input<List<String>> subjectAlternativeNames;
  /// Signing certificate thumbprint.
  final pulumi.Input<String> thumbprint;
  /// For more details on total score, refer to the Tanium documentation.
  final pulumi.Input<double> totalScore;
  /// Number of days that the antivirus should be updated within.
  final pulumi.Input<double> updateWindowDays;
  /// Version of OS.
  final pulumi.Input<String> version;
  /// Version Operator.
  /// Available values: "&lt;", "&lt;=", "&gt;", "&gt;=", "==".
  final pulumi.Input<String> versionOperator;

  /// Creates a new [GetZeroTrustDevicePostureRuleInput].
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
  /// [locations] Required.
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
  const GetZeroTrustDevicePostureRuleInput({
    required this.activeThreats,
    required this.authStates,
    required this.certificateId,
    required this.checkDisks,
    required this.checkPrivateKey,
    required this.cn,
    required this.complianceStatus,
    required this.connectionId,
    required this.countOperator,
    required this.domain,
    required this.eidLastSeen,
    required this.enabled,
    required this.exists,
    required this.extendedKeyUsages,
    required this.id,
    required this.infected,
    required this.isActive,
    required this.issueCount,
    required this.lastSeen,
    required this.locations,
    required this.networkStatus,
    required this.operatingSystem,
    required this.operationalState,
    required this.operator,
    required this.os,
    required this.osDistroName,
    required this.osDistroRevision,
    required this.osVersionExtra,
    required this.overall,
    required this.path,
    required this.requireAll,
    required this.riskLevel,
    required this.score,
    required this.scoreOperator,
    required this.sensorConfig,
    required this.sha256,
    required this.state,
    required this.subjectAlternativeNames,
    required this.thumbprint,
    required this.totalScore,
    required this.updateWindowDays,
    required this.version,
    required this.versionOperator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeThreats': activeThreats,
      'authStates': authStates,
      'certificateId': certificateId,
      'checkDisks': checkDisks,
      'checkPrivateKey': checkPrivateKey,
      'cn': cn,
      'complianceStatus': complianceStatus,
      'connectionId': connectionId,
      'countOperator': countOperator,
      'domain': domain,
      'eidLastSeen': eidLastSeen,
      'enabled': enabled,
      'exists': exists,
      'extendedKeyUsages': extendedKeyUsages,
      'id': id,
      'infected': infected,
      'isActive': isActive,
      'issueCount': issueCount,
      'lastSeen': lastSeen,
      'locations': pulumi.Input.mapInputValue<GetZeroTrustDevicePostureRuleInputLocations, Map<String, dynamic>>(locations, (value) => value.toMap()),
      'networkStatus': networkStatus,
      'operatingSystem': operatingSystem,
      'operationalState': operationalState,
      'operator': operator,
      'os': os,
      'osDistroName': osDistroName,
      'osDistroRevision': osDistroRevision,
      'osVersionExtra': osVersionExtra,
      'overall': overall,
      'path': path,
      'requireAll': requireAll,
      'riskLevel': riskLevel,
      'score': score,
      'scoreOperator': scoreOperator,
      'sensorConfig': sensorConfig,
      'sha256': sha256,
      'state': state,
      'subjectAlternativeNames': subjectAlternativeNames,
      'thumbprint': thumbprint,
      'totalScore': totalScore,
      'updateWindowDays': updateWindowDays,
      'version': version,
      'versionOperator': versionOperator,
    };
  }

  factory GetZeroTrustDevicePostureRuleInput.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDevicePostureRuleInput(
      activeThreats: pulumi.Input.fromValue((map['activeThreats'] as num).toDouble()),
      authStates: pulumi.Input.fromValue((map['authStates'] as List).cast<String>()),
      certificateId: pulumi.Input.fromValue(map['certificateId'] as String),
      checkDisks: pulumi.Input.fromValue((map['checkDisks'] as List).cast<String>()),
      checkPrivateKey: pulumi.Input.fromValue(map['checkPrivateKey'] as bool),
      cn: pulumi.Input.fromValue(map['cn'] as String),
      complianceStatus: pulumi.Input.fromValue(map['complianceStatus'] as String),
      connectionId: pulumi.Input.fromValue(map['connectionId'] as String),
      countOperator: pulumi.Input.fromValue(map['countOperator'] as String),
      domain: pulumi.Input.fromValue(map['domain'] as String),
      eidLastSeen: pulumi.Input.fromValue(map['eidLastSeen'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      exists: pulumi.Input.fromValue(map['exists'] as bool),
      extendedKeyUsages: pulumi.Input.fromValue((map['extendedKeyUsages'] as List).cast<String>()),
      id: pulumi.Input.fromValue(map['id'] as String),
      infected: pulumi.Input.fromValue(map['infected'] as bool),
      isActive: pulumi.Input.fromValue(map['isActive'] as bool),
      issueCount: pulumi.Input.fromValue(map['issueCount'] as String),
      lastSeen: pulumi.Input.fromValue(map['lastSeen'] as String),
      locations: pulumi.Input.fromValue(GetZeroTrustDevicePostureRuleInputLocations.fromMap((map['locations']! as Map).cast<String, dynamic>())),
      networkStatus: pulumi.Input.fromValue(map['networkStatus'] as String),
      operatingSystem: pulumi.Input.fromValue(map['operatingSystem'] as String),
      operationalState: pulumi.Input.fromValue(map['operationalState'] as String),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      os: pulumi.Input.fromValue(map['os'] as String),
      osDistroName: pulumi.Input.fromValue(map['osDistroName'] as String),
      osDistroRevision: pulumi.Input.fromValue(map['osDistroRevision'] as String),
      osVersionExtra: pulumi.Input.fromValue(map['osVersionExtra'] as String),
      overall: pulumi.Input.fromValue(map['overall'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      requireAll: pulumi.Input.fromValue(map['requireAll'] as bool),
      riskLevel: pulumi.Input.fromValue(map['riskLevel'] as String),
      score: pulumi.Input.fromValue((map['score'] as num).toDouble()),
      scoreOperator: pulumi.Input.fromValue(map['scoreOperator'] as String),
      sensorConfig: pulumi.Input.fromValue(map['sensorConfig'] as String),
      sha256: pulumi.Input.fromValue(map['sha256'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      subjectAlternativeNames: pulumi.Input.fromValue((map['subjectAlternativeNames'] as List).cast<String>()),
      thumbprint: pulumi.Input.fromValue(map['thumbprint'] as String),
      totalScore: pulumi.Input.fromValue((map['totalScore'] as num).toDouble()),
      updateWindowDays: pulumi.Input.fromValue((map['updateWindowDays'] as num).toDouble()),
      version: pulumi.Input.fromValue(map['version'] as String),
      versionOperator: pulumi.Input.fromValue(map['versionOperator'] as String),
    );
  }
}
