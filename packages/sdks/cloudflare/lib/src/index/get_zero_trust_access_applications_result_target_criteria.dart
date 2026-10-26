// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_applications_result_target_criteria_exclude.dart';
import 'get_zero_trust_access_applications_result_target_criteria_include.dart';
import 'get_zero_trust_access_applications_result_target_criteria_require.dart';

class GetZeroTrustAccessApplicationsResultTargetCriteria {
  /// Target is excluded when any selector in this rule matches.
  final pulumi.Input<GetZeroTrustAccessApplicationsResultTargetCriteriaExclude> exclude;
  /// Target matches when any selector in this rule matches.
  final pulumi.Input<GetZeroTrustAccessApplicationsResultTargetCriteriaInclude> include;
  /// The port that the targets use for the chosen communication protocol. A port cannot be assigned to multiple protocols.
  final pulumi.Input<int> port;
  /// The communication protocol your application secures.
  /// Available values: "SSH", "RDP".
  final pulumi.Input<String> protocol;
  /// Target matches only when every selector in this rule matches.
  final pulumi.Input<GetZeroTrustAccessApplicationsResultTargetCriteriaRequire> require;
  /// Deprecated: use include.target_attributes for hostname selectors and rule tags for tag-based matching. New or changed maps may contain only hostname. The API accepts unchanged legacy maps on update, including non-hostname keys.
  final pulumi.Input<Map<String, List<String>>> targetAttributes;

  /// Creates a new [GetZeroTrustAccessApplicationsResultTargetCriteria].
  /// [exclude] Target is excluded when any selector in this rule matches.
  /// [include] Target matches when any selector in this rule matches.
  /// [port] The port that the targets use for the chosen communication protocol. A port cannot be assigned to multiple protocols.
  /// [protocol] The communication protocol your application secures.
  /// [require] Target matches only when every selector in this rule matches.
  /// [targetAttributes] Deprecated: use include.target_attributes for hostname selectors and rule tags for tag-based matching. New or changed maps may contain only hostname. The API accepts unchanged legacy maps on update, including non-hostname keys.
  const GetZeroTrustAccessApplicationsResultTargetCriteria({
    required this.exclude,
    required this.include,
    required this.port,
    required this.protocol,
    required this.require,
    required this.targetAttributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclude': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultTargetCriteriaExclude, Map<String, dynamic>>(exclude, (value) => value.toMap()),
      'include': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultTargetCriteriaInclude, Map<String, dynamic>>(include, (value) => value.toMap()),
      'port': port,
      'protocol': protocol,
      'require': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultTargetCriteriaRequire, Map<String, dynamic>>(require, (value) => value.toMap()),
      'targetAttributes': targetAttributes,
    };
  }

  factory GetZeroTrustAccessApplicationsResultTargetCriteria.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationsResultTargetCriteria(
      exclude: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultTargetCriteriaExclude.fromMap((map['exclude']! as Map).cast<String, dynamic>())),
      include: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultTargetCriteriaInclude.fromMap((map['include']! as Map).cast<String, dynamic>())),
      port: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['port'])),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      require: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultTargetCriteriaRequire.fromMap((map['require']! as Map).cast<String, dynamic>())),
      targetAttributes: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(map['targetAttributes']!, (value) => (value as List).cast<String>())),
    );
  }
}
