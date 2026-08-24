// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyperdrive_config_caching.dart';
import 'hyperdrive_config_mtls.dart';
import 'hyperdrive_config_origin.dart';

/// Input properties used for looking up and filtering HyperdriveConfig resources.
class HyperdriveConfigState {
  /// Define configurations using a unique string identifier.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<HyperdriveConfigCaching?>? caching;
  /// Defines the creation time of the Hyperdrive configuration.
  final pulumi.Input<String?>? createdOn;
  /// Defines the last modified time of the Hyperdrive configuration.
  final pulumi.Input<String?>? modifiedOn;
  /// mTLS configuration for the origin connection. Cannot be used with VPC Service origins; TLS must be managed on the VPC Service.
  final pulumi.Input<HyperdriveConfigMtls?>? mtls;
  /// The name of the Hyperdrive configuration. Used to identify the configuration in the Cloudflare dashboard and API.
  final pulumi.Input<String?>? name;
  final pulumi.Input<HyperdriveConfigOrigin?>? origin;
  /// The (soft) maximum number of connections the Hyperdrive is allowed to make to the origin database.
  final pulumi.Input<int?>? originConnectionLimit;
  /// Defines the last time the Hyperdrive connection pool was explicitly restarted via the restart endpoint. Omitted if the pool has never been explicitly restarted.
  final pulumi.Input<String?>? restartedOn;

  /// Creates a new [HyperdriveConfigState].
  /// [accountId] Define configurations using a unique string identifier.
  /// [caching] Optional.
  /// [createdOn] Defines the creation time of the Hyperdrive configuration.
  /// [modifiedOn] Defines the last modified time of the Hyperdrive configuration.
  /// [mtls] mTLS configuration for the origin connection. Cannot be used with VPC Service origins; TLS must be managed on the VPC Service.
  /// [name] The name of the Hyperdrive configuration. Used to identify the configuration in the Cloudflare dashboard and API.
  /// [origin] Optional.
  /// [originConnectionLimit] The (soft) maximum number of connections the Hyperdrive is allowed to make to the origin database.
  /// [restartedOn] Defines the last time the Hyperdrive connection pool was explicitly restarted via the restart endpoint. Omitted if the pool has never been explicitly restarted.
  const HyperdriveConfigState({
    this.accountId,
    this.caching,
    this.createdOn,
    this.modifiedOn,
    this.mtls,
    this.name,
    this.origin,
    this.originConnectionLimit,
    this.restartedOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'caching': ?pulumi.Input.mapOptionalInputValue<HyperdriveConfigCaching, Map<String, dynamic>>(caching, (value) => value.toMap()),
      'createdOn': ?createdOn,
      'modifiedOn': ?modifiedOn,
      'mtls': ?pulumi.Input.mapOptionalInputValue<HyperdriveConfigMtls, Map<String, dynamic>>(mtls, (value) => value.toMap()),
      'name': ?name,
      'origin': ?pulumi.Input.mapOptionalInputValue<HyperdriveConfigOrigin, Map<String, dynamic>>(origin, (value) => value.toMap()),
      'originConnectionLimit': ?originConnectionLimit,
      'restartedOn': ?restartedOn,
    };
  }

  factory HyperdriveConfigState.fromMap(Map<String, dynamic> map) {
    return HyperdriveConfigState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      caching: (() { final guardedValue = map['caching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HyperdriveConfigCaching.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mtls: (() { final guardedValue = map['mtls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HyperdriveConfigMtls.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      origin: (() { final guardedValue = map['origin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HyperdriveConfigOrigin.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      originConnectionLimit: (() { final guardedValue = map['originConnectionLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      restartedOn: (() { final guardedValue = map['restartedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
