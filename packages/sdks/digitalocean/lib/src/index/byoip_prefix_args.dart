// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_byoip_prefix_byoip_prefix_args_doc}
/// The set of arguments for ByoipPrefix.
/// {@endtemplate}
/// {@macro pulumi_index_byoip_prefix_byoip_prefix_args_doc}
class ByoipPrefixArgs {
  /// A boolean indicating whether the prefix should be advertised.
  /// Defaults to `false`.
  final pulumi.Input<bool>? advertised;
  /// The CIDR notation of the prefix (e.g., "192.0.2.0/24").
  final pulumi.Input<String> prefix;
  /// The DigitalOcean region where the prefix will be deployed.
  final pulumi.Input<String> region;
  /// The cryptographic signature proving ownership of the prefix.
  /// This is required during creation but can be omitted in subsequent updates.
  final pulumi.Input<String>? signature;

  /// Creates a new [ByoipPrefixArgs].
  /// [advertised] A boolean indicating whether the prefix should be advertised.
  /// [prefix] The CIDR notation of the prefix (e.g., "192.0.2.0/24").
  /// [region] The DigitalOcean region where the prefix will be deployed.
  /// [signature] The cryptographic signature proving ownership of the prefix.
  ByoipPrefixArgs({
    this.advertised,
    required this.prefix,
    required this.region,
    this.signature,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advertised': ?advertised,
      'prefix': prefix,
      'region': region,
      'signature': ?signature,
    };
  }

  factory ByoipPrefixArgs.fromMap(Map<String, dynamic> map) {
    return ByoipPrefixArgs(
      advertised: map['advertised'] == null ? null : (map['advertised']! as bool).input(),
      prefix: (map['prefix'] as String).input(),
      region: (map['region'] as String).input(),
      signature: map['signature'] == null ? null : (map['signature']! as String).input(),
    );
  }
}

