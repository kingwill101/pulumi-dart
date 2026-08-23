// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNfsAccessPointAccessPolicy {
  final pulumi.Input<int> anongid;
  final pulumi.Input<int> anonuid;
  final pulumi.Input<bool> identityEnforcementEnabled;
  final pulumi.Input<List<String>> protocols;
  final pulumi.Input<String> squashConfig;

  /// Creates a new [GetNfsAccessPointAccessPolicy].
  /// [anongid] Required.
  /// [anonuid] Required.
  /// [identityEnforcementEnabled] Required.
  /// [protocols] Required.
  /// [squashConfig] Required.
  const GetNfsAccessPointAccessPolicy({
    required this.anongid,
    required this.anonuid,
    required this.identityEnforcementEnabled,
    required this.protocols,
    required this.squashConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anongid': anongid,
      'anonuid': anonuid,
      'identityEnforcementEnabled': identityEnforcementEnabled,
      'protocols': protocols,
      'squashConfig': squashConfig,
    };
  }

  factory GetNfsAccessPointAccessPolicy.fromMap(Map<String, dynamic> map) {
    return GetNfsAccessPointAccessPolicy(
      anongid: pulumi.Input.fromValue(map['anongid'] as int),
      anonuid: pulumi.Input.fromValue(map['anonuid'] as int),
      identityEnforcementEnabled: pulumi.Input.fromValue(map['identityEnforcementEnabled'] as bool),
      protocols: pulumi.Input.fromValue((map['protocols'] as List).cast<String>()),
      squashConfig: pulumi.Input.fromValue(map['squashConfig'] as String),
    );
  }
}
