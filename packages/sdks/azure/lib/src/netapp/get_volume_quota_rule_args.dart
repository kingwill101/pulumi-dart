// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_get_volume_quota_rule_get_volume_quota_rule_args_doc}
/// Arguments for getVolumeQuotaRule.
/// {@endtemplate}
/// {@macro pulumi_netapp_get_volume_quota_rule_get_volume_quota_rule_args_doc}
class GetVolumeQuotaRuleArgs {
  /// The name of this Volume Quota Rule.
  final pulumi.Input<String> name;
  /// The NetApp volume ID where the Volume Quota Rule is assigned to.
  final pulumi.Input<String> volumeId;

  /// Creates a new [GetVolumeQuotaRuleArgs].
  /// [name] The name of this Volume Quota Rule.
  /// [volumeId] The NetApp volume ID where the Volume Quota Rule is assigned to.
  const GetVolumeQuotaRuleArgs({
    required this.name,
    required this.volumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'volumeId': volumeId,
    };
  }

  factory GetVolumeQuotaRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetVolumeQuotaRuleArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      volumeId: pulumi.Input.fromValue(map['volumeId'] as String),
    );
  }
}
