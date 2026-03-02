// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TransferRequest resources.
class TransferRequestState {
  /// A description of the zone tranfer request.
  final pulumi.Input<String>? description;
  /// Disable wait for zone to reach ACTIVE
  /// status. The check is enabled by default. If this argument is true, zone
  /// will be considered as created/updated if OpenStack request returned success.
  final pulumi.Input<bool>? disableStatusCheck;
  final pulumi.Input<String>? key;
  /// The region in which to obtain the V2 DNS client.
  /// If omitted, the `region` argument of the provider is used.
  /// Changing this creates a new DNS zone zone transfer accept.
  final pulumi.Input<String>? region;
  /// The target Project ID to transfer to.
  final pulumi.Input<String>? targetProjectId;
  /// Map of additional options. Changing this creates a
  /// new transfer request.
  final pulumi.Input<Map<String, String>>? valueSpecs;
  /// The ID of the zone for which to create the transfer
  /// request.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [TransferRequestState].
  /// [description] A description of the zone tranfer request.
  /// [disableStatusCheck] Disable wait for zone to reach ACTIVE
  /// [key] Optional.
  /// [region] The region in which to obtain the V2 DNS client.
  /// [targetProjectId] The target Project ID to transfer to.
  /// [valueSpecs] Map of additional options. Changing this creates a
  /// [zoneId] The ID of the zone for which to create the transfer
  TransferRequestState({
    this.description,
    this.disableStatusCheck,
    this.key,
    this.region,
    this.targetProjectId,
    this.valueSpecs,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'disableStatusCheck': ?disableStatusCheck,
      'key': ?key,
      'region': ?region,
      'targetProjectId': ?targetProjectId,
      'valueSpecs': ?valueSpecs,
      'zoneId': ?zoneId,
    };
  }

  factory TransferRequestState.fromMap(Map<String, dynamic> map) {
    return TransferRequestState(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      disableStatusCheck: map['disableStatusCheck'] == null ? null : (map['disableStatusCheck'] as bool).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      targetProjectId: map['targetProjectId'] == null ? null : (map['targetProjectId'] as String).input(),
      valueSpecs: map['valueSpecs'] == null ? null : ((map['valueSpecs'] as Map).cast<String, String>()).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId'] as String).input(),
    );
  }
}

