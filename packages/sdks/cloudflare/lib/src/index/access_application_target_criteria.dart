// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_application_target_criteria_exclude.dart';
import 'access_application_target_criteria_include.dart';
import 'access_application_target_criteria_require.dart';

class AccessApplicationTargetCriteria {
  /// Target is excluded when any selector in this rule matches.
  final pulumi.Input<AccessApplicationTargetCriteriaExclude?>? exclude;
  /// Target matches when any selector in this rule matches.
  final pulumi.Input<AccessApplicationTargetCriteriaInclude?>? include;
  /// The port that the targets use for the chosen communication protocol. A port cannot be assigned to multiple protocols.
  final pulumi.Input<int> port;
  /// The communication protocol your application secures.
  /// Available values: "SSH", "RDP".
  final pulumi.Input<String> protocol;
  /// Target matches only when every selector in this rule matches.
  final pulumi.Input<AccessApplicationTargetCriteriaRequire?>? require;
  /// Deprecated: use include.target_attributes for hostname selectors and rule tags for tag-based matching. New or changed maps may contain only hostname. The API accepts unchanged legacy maps on update, including non-hostname keys.
  final pulumi.Input<Map<String, List<String>>?>? targetAttributes;

  /// Creates a new [AccessApplicationTargetCriteria].
  /// [exclude] Target is excluded when any selector in this rule matches.
  /// [include] Target matches when any selector in this rule matches.
  /// [port] The port that the targets use for the chosen communication protocol. A port cannot be assigned to multiple protocols.
  /// [protocol] The communication protocol your application secures.
  /// [require] Target matches only when every selector in this rule matches.
  /// [targetAttributes] Deprecated: use include.target_attributes for hostname selectors and rule tags for tag-based matching. New or changed maps may contain only hostname. The API accepts unchanged legacy maps on update, including non-hostname keys.
  const AccessApplicationTargetCriteria({
    this.exclude,
    this.include,
    required this.port,
    required this.protocol,
    this.require,
    this.targetAttributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclude': ?pulumi.Input.mapOptionalInputValue<AccessApplicationTargetCriteriaExclude, Map<String, dynamic>>(exclude, (value) => value.toMap()),
      'include': ?pulumi.Input.mapOptionalInputValue<AccessApplicationTargetCriteriaInclude, Map<String, dynamic>>(include, (value) => value.toMap()),
      'port': port,
      'protocol': protocol,
      'require': ?pulumi.Input.mapOptionalInputValue<AccessApplicationTargetCriteriaRequire, Map<String, dynamic>>(require, (value) => value.toMap()),
      'targetAttributes': ?targetAttributes,
    };
  }

  factory AccessApplicationTargetCriteria.fromMap(Map<String, dynamic> map) {
    return AccessApplicationTargetCriteria(
      exclude: (() { final guardedValue = map['exclude']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationTargetCriteriaExclude.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      include: (() { final guardedValue = map['include']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationTargetCriteriaInclude.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      port: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['port'])),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      require: (() { final guardedValue = map['require']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationTargetCriteriaRequire.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetAttributes: (() { final guardedValue = map['targetAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>())); })(),
    );
  }
}
