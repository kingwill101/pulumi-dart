// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Datapolicyv2DataPolicyDataGovernanceTag {
  /// Tag keys are globally unique. Tag key is expected to be in the namespaced format, for example "parent-id/pii" where "parent-id" is the ID of the parent organization or project resource for this tag key.
  final pulumi.Input<String>? key;
  /// Tag value is expected to be the short name.
  final pulumi.Input<String>? value;

  /// Creates a new [Datapolicyv2DataPolicyDataGovernanceTag].
  /// [key] Tag keys are globally unique. Tag key is expected to be in the namespaced format, for example "parent-id/pii" where "parent-id" is the ID of the parent organization or project resource for this tag key.
  /// [value] Tag value is expected to be the short name.
  const Datapolicyv2DataPolicyDataGovernanceTag({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory Datapolicyv2DataPolicyDataGovernanceTag.fromMap(Map<String, dynamic> map) {
    return Datapolicyv2DataPolicyDataGovernanceTag(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
