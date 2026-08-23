// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VolumeQuotaRule resources.
class VolumeQuotaRuleState {
  /// The Azure Region where the Volume Quota Rule should exist. Changing this forces a new Volume Quota Rule to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Volume Quota Rule. Changing this forces a new Volume Quota Rule to be created.
  final pulumi.Input<String>? name;
  /// Quota size in kibibytes.
  final pulumi.Input<int>? quotaSizeInKib;
  /// Quota Target. This can be Unix UID/GID for NFSv3/NFSv4.1 volumes and Windows User SID for CIFS based volumes. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `quotaTarget ` must be used when `quotaType` is `IndividualGroupQuota` or `IndividualUserQuota`
  ///
  /// &gt; **Note:** more information about this resource can be found at [Understand default and individual user and group quotas](https://learn.microsoft.com/en-us/azure/azure-netapp-files/default-individual-user-group-quotas-introduction)
  final pulumi.Input<String>? quotaTarget;
  /// Quota type. Possible values are `DefaultGroupQuota`, `DefaultUserQuota`, `IndividualGroupQuota` and `IndividualUserQuota`. Please note that `IndividualGroupQuota` and `DefaultGroupQuota` are not applicable to SMB and dual-protocol volumes. Changing this forces a new resource to be created.
  final pulumi.Input<String>? quotaType;
  /// The NetApp volume ID where the Volume Quota Rule is assigned to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? volumeId;

  /// Creates a new [VolumeQuotaRuleState].
  /// [location] The Azure Region where the Volume Quota Rule should exist. Changing this forces a new Volume Quota Rule to be created.
  /// [name] The name which should be used for this Volume Quota Rule. Changing this forces a new Volume Quota Rule to be created.
  /// [quotaSizeInKib] Quota size in kibibytes.
  /// [quotaTarget] Quota Target. This can be Unix UID/GID for NFSv3/NFSv4.1 volumes and Windows User SID for CIFS based volumes. Changing this forces a new resource to be created.
  /// [quotaType] Quota type. Possible values are `DefaultGroupQuota`, `DefaultUserQuota`, `IndividualGroupQuota` and `IndividualUserQuota`. Please note that `IndividualGroupQuota` and `DefaultGroupQuota` are not applicable to SMB and dual-protocol volumes. Changing this forces a new resource to be created.
  /// [volumeId] The NetApp volume ID where the Volume Quota Rule is assigned to. Changing this forces a new resource to be created.
  const VolumeQuotaRuleState({
    this.location,
    this.name,
    this.quotaSizeInKib,
    this.quotaTarget,
    this.quotaType,
    this.volumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'quotaSizeInKib': ?quotaSizeInKib,
      'quotaTarget': ?quotaTarget,
      'quotaType': ?quotaType,
      'volumeId': ?volumeId,
    };
  }

  factory VolumeQuotaRuleState.fromMap(Map<String, dynamic> map) {
    return VolumeQuotaRuleState(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quotaSizeInKib: (() { final guardedValue = map['quotaSizeInKib']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      quotaTarget: (() { final guardedValue = map['quotaTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quotaType: (() { final guardedValue = map['quotaType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeId: (() { final guardedValue = map['volumeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
