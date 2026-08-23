// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_volume_quota_rule_volume_quota_rule_args_doc}
/// The set of arguments for VolumeQuotaRule.
/// {@endtemplate}
/// {@macro pulumi_netapp_volume_quota_rule_volume_quota_rule_args_doc}
class VolumeQuotaRuleArgs {
  /// The Azure Region where the Volume Quota Rule should exist. Changing this forces a new Volume Quota Rule to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Volume Quota Rule. Changing this forces a new Volume Quota Rule to be created.
  final pulumi.Input<String>? name;
  /// Quota size in kibibytes.
  final pulumi.Input<int> quotaSizeInKib;
  /// Quota Target. This can be Unix UID/GID for NFSv3/NFSv4.1 volumes and Windows User SID for CIFS based volumes. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `quotaTarget ` must be used when `quotaType` is `IndividualGroupQuota` or `IndividualUserQuota`
  ///
  /// &gt; **Note:** more information about this resource can be found at [Understand default and individual user and group quotas](https://learn.microsoft.com/en-us/azure/azure-netapp-files/default-individual-user-group-quotas-introduction)
  final pulumi.Input<String>? quotaTarget;
  /// Quota type. Possible values are `DefaultGroupQuota`, `DefaultUserQuota`, `IndividualGroupQuota` and `IndividualUserQuota`. Please note that `IndividualGroupQuota` and `DefaultGroupQuota` are not applicable to SMB and dual-protocol volumes. Changing this forces a new resource to be created.
  final pulumi.Input<String> quotaType;
  /// The NetApp volume ID where the Volume Quota Rule is assigned to. Changing this forces a new resource to be created.
  final pulumi.Input<String> volumeId;

  /// Creates a new [VolumeQuotaRuleArgs].
  /// [location] The Azure Region where the Volume Quota Rule should exist. Changing this forces a new Volume Quota Rule to be created.
  /// [name] The name which should be used for this Volume Quota Rule. Changing this forces a new Volume Quota Rule to be created.
  /// [quotaSizeInKib] Quota size in kibibytes.
  /// [quotaTarget] Quota Target. This can be Unix UID/GID for NFSv3/NFSv4.1 volumes and Windows User SID for CIFS based volumes. Changing this forces a new resource to be created.
  /// [quotaType] Quota type. Possible values are `DefaultGroupQuota`, `DefaultUserQuota`, `IndividualGroupQuota` and `IndividualUserQuota`. Please note that `IndividualGroupQuota` and `DefaultGroupQuota` are not applicable to SMB and dual-protocol volumes. Changing this forces a new resource to be created.
  /// [volumeId] The NetApp volume ID where the Volume Quota Rule is assigned to. Changing this forces a new resource to be created.
  const VolumeQuotaRuleArgs({
    this.location,
    this.name,
    required this.quotaSizeInKib,
    this.quotaTarget,
    required this.quotaType,
    required this.volumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'quotaSizeInKib': quotaSizeInKib,
      'quotaTarget': ?quotaTarget,
      'quotaType': quotaType,
      'volumeId': volumeId,
    };
  }

  factory VolumeQuotaRuleArgs.fromMap(Map<String, dynamic> map) {
    return VolumeQuotaRuleArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quotaSizeInKib: pulumi.Input.fromValue(map['quotaSizeInKib'] as int),
      quotaTarget: (() { final guardedValue = map['quotaTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quotaType: pulumi.Input.fromValue(map['quotaType'] as String),
      volumeId: pulumi.Input.fromValue(map['volumeId'] as String),
    );
  }
}
