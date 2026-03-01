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
  TransferAcceptState({
    pulumi.Output<bool>? disableStatusCheck,
    pulumi.Output<String>? key,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? valueSpecs,
    pulumi.Output<String>? zoneTransferRequestId,
  }) :
      disableStatusCheck = pulumi.Input.asOptionalInput<bool>(disableStatusCheck),
      key = pulumi.Input.asOptionalInput<String>(key),
      region = pulumi.Input.asOptionalInput<String>(region),
      valueSpecs = pulumi.Input.asOptionalInput<Map<String, String>>(valueSpecs),
      zoneTransferRequestId = pulumi.Input.asOptionalInput<String>(zoneTransferRequestId);

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
      disableStatusCheck: map['disableStatusCheck'] == null ? null : pulumi.Output.create<bool>(map['disableStatusCheck'] as bool),
      key: map['key'] == null ? null : pulumi.Output.create<String>(map['key'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      valueSpecs: map['valueSpecs'] == null ? null : pulumi.Output.create<Map<String, String>>((map['valueSpecs'] as Map).cast<String, String>()),
      zoneTransferRequestId: map['zoneTransferRequestId'] == null ? null : pulumi.Output.create<String>(map['zoneTransferRequestId'] as String),
    );
  }
}

