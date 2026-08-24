// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyperdrive_config_caching.dart';
import 'hyperdrive_config_mtls.dart';
import 'hyperdrive_config_origin.dart';

/// {@template pulumi_index_hyperdrive_config_hyperdrive_config_args_doc}
/// The set of arguments for HyperdriveConfig.
/// {@endtemplate}
/// {@macro pulumi_index_hyperdrive_config_hyperdrive_config_args_doc}
class HyperdriveConfigArgs {
  /// Define configurations using a unique string identifier.
  final pulumi.Input<String> accountId;
  final pulumi.Input<HyperdriveConfigCaching?>? caching;
  /// mTLS configuration for the origin connection. Cannot be used with VPC Service origins; TLS must be managed on the VPC Service.
  final pulumi.Input<HyperdriveConfigMtls?>? mtls;
  /// The name of the Hyperdrive configuration. Used to identify the configuration in the Cloudflare dashboard and API.
  final pulumi.Input<String> name;
  final pulumi.Input<HyperdriveConfigOrigin> origin;
  /// The (soft) maximum number of connections the Hyperdrive is allowed to make to the origin database.
  final pulumi.Input<int?>? originConnectionLimit;

  /// Creates a new [HyperdriveConfigArgs].
  /// [accountId] Define configurations using a unique string identifier.
  /// [caching] Optional.
  /// [mtls] mTLS configuration for the origin connection. Cannot be used with VPC Service origins; TLS must be managed on the VPC Service.
  /// [name] The name of the Hyperdrive configuration. Used to identify the configuration in the Cloudflare dashboard and API.
  /// [origin] Required.
  /// [originConnectionLimit] The (soft) maximum number of connections the Hyperdrive is allowed to make to the origin database.
  const HyperdriveConfigArgs({
    required this.accountId,
    this.caching,
    this.mtls,
    required this.name,
    required this.origin,
    this.originConnectionLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'caching': ?pulumi.Input.mapOptionalInputValue<HyperdriveConfigCaching, Map<String, dynamic>>(caching, (value) => value.toMap()),
      'mtls': ?pulumi.Input.mapOptionalInputValue<HyperdriveConfigMtls, Map<String, dynamic>>(mtls, (value) => value.toMap()),
      'name': name,
      'origin': pulumi.Input.mapInputValue<HyperdriveConfigOrigin, Map<String, dynamic>>(origin, (value) => value.toMap()),
      'originConnectionLimit': ?originConnectionLimit,
    };
  }

  factory HyperdriveConfigArgs.fromMap(Map<String, dynamic> map) {
    return HyperdriveConfigArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      caching: (() { final guardedValue = map['caching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HyperdriveConfigCaching.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mtls: (() { final guardedValue = map['mtls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HyperdriveConfigMtls.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      origin: pulumi.Input.fromValue(HyperdriveConfigOrigin.fromMap((map['origin']! as Map).cast<String, dynamic>())),
      originConnectionLimit: (() { final guardedValue = map['originConnectionLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
