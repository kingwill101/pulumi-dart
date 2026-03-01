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
    pulumi.Output<bool>? advertised,
    pulumi.Output<String>? failureReason,
    pulumi.Output<String>? prefix,
    pulumi.Output<String>? region,
    pulumi.Output<String>? signature,
    pulumi.Output<String>? status,
    pulumi.Output<String>? uuid,
  }) :
      advertised = pulumi.Input.asOptionalInput<bool>(advertised),
      failureReason = pulumi.Input.asOptionalInput<String>(failureReason),
      prefix = pulumi.Input.asOptionalInput<String>(prefix),
      region = pulumi.Input.asOptionalInput<String>(region),
      signature = pulumi.Input.asOptionalInput<String>(signature),
      status = pulumi.Input.asOptionalInput<String>(status),
      uuid = pulumi.Input.asOptionalInput<String>(uuid);

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
      advertised: map['advertised'] == null ? null : pulumi.Output.create<bool>(map['advertised'] as bool),
      failureReason: map['failureReason'] == null ? null : pulumi.Output.create<String>(map['failureReason'] as String),
      prefix: map['prefix'] == null ? null : pulumi.Output.create<String>(map['prefix'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      signature: map['signature'] == null ? null : pulumi.Output.create<String>(map['signature'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      uuid: map['uuid'] == null ? null : pulumi.Output.create<String>(map['uuid'] as String),
    );
  }
}

