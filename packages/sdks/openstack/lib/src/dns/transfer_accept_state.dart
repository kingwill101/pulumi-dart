// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TransferAccept resources.
class TransferAcceptState {
  /// Disable wait for zone to reach ACTIVE
  /// status. The check is enabled by default. If this argument is true, zone
  /// will be considered as created/updated if OpenStack accept returned success.
  final pulumi.Input<bool>? disableStatusCheck;
  /// The transfer key.
  final pulumi.Input<String>? key;
  /// The region in which to obtain the V2 DNS client.
  /// If omitted, the `region` argument of the provider is used.
  /// Changing this creates a new DNS zone zone transfer accept.
  final pulumi.Input<String>? region;
  /// Map of additional options. Changing this creates a
  /// new transfer accept.
  final pulumi.Input<Map<String, String>>? valueSpecs;
  /// The ID of the zone transfer request.
  final pulumi.Input<String>? zoneTransferRequestId;

  /// Creates a new [TransferAcceptState].
  /// [disableStatusCheck] Disable wait for zone to reach ACTIVE
  /// [key] The transfer key.
  /// [region] The region in which to obtain the V2 DNS client.
  /// [valueSpecs] Map of additional options. Changing this creates a
  /// [zoneTransferRequestId] The ID of the zone transfer request.
  const TransferAcceptState({
    this.disableStatusCheck,
    this.key,
    this.region,
    this.valueSpecs,
    this.zoneTransferRequestId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableStatusCheck': ?disableStatusCheck,
      'key': ?key,
      'region': ?region,
      'valueSpecs': ?valueSpecs,
      'zoneTransferRequestId': ?zoneTransferRequestId,
    };
  }

  factory TransferAcceptState.fromMap(Map<String, dynamic> map) {
    return TransferAcceptState(
      disableStatusCheck: (() { final guardedValue = map['disableStatusCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valueSpecs: (() { final guardedValue = map['valueSpecs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zoneTransferRequestId: (() { final guardedValue = map['zoneTransferRequestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

