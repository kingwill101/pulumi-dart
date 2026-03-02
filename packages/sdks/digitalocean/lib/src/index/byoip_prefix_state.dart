// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ByoipPrefix resources.
class ByoipPrefixState {
  /// A boolean indicating whether the prefix should be advertised.
  /// Defaults to `false`.
  final pulumi.Input<bool>? advertised;
  /// The reason for failure if the status is "failed".
  final pulumi.Input<String>? failureReason;
  /// The CIDR notation of the prefix (e.g., "192.0.2.0/24").
  final pulumi.Input<String>? prefix;
  /// The DigitalOcean region where the prefix will be deployed.
  final pulumi.Input<String>? region;
  /// The cryptographic signature proving ownership of the prefix.
  /// This is required during creation but can be omitted in subsequent updates.
  final pulumi.Input<String>? signature;
  /// The current status of the BYOIP prefix (e.g., "verified", "pending", "failed").
  final pulumi.Input<String>? status;
  /// The UUID of the BYOIP prefix.
  final pulumi.Input<String>? uuid;

  /// Creates a new [ByoipPrefixState].
  /// [advertised] A boolean indicating whether the prefix should be advertised.
  /// [failureReason] The reason for failure if the status is "failed".
  /// [prefix] The CIDR notation of the prefix (e.g., "192.0.2.0/24").
  /// [region] The DigitalOcean region where the prefix will be deployed.
  /// [signature] The cryptographic signature proving ownership of the prefix.
  /// [status] The current status of the BYOIP prefix (e.g., "verified", "pending", "failed").
  /// [uuid] The UUID of the BYOIP prefix.
  ByoipPrefixState({
    this.advertised,
    this.failureReason,
    this.prefix,
    this.region,
    this.signature,
    this.status,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advertised': ?advertised,
      'failureReason': ?failureReason,
      'prefix': ?prefix,
      'region': ?region,
      'signature': ?signature,
      'status': ?status,
      'uuid': ?uuid,
    };
  }

  factory ByoipPrefixState.fromMap(Map<String, dynamic> map) {
    return ByoipPrefixState(
      advertised: map['advertised'] == null ? null : (map['advertised'] as bool).input(),
      failureReason: map['failureReason'] == null ? null : (map['failureReason'] as String).input(),
      prefix: map['prefix'] == null ? null : (map['prefix'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      signature: map['signature'] == null ? null : (map['signature'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      uuid: map['uuid'] == null ? null : (map['uuid'] as String).input(),
    );
  }
}

