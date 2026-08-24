// ignore_for_file: unused_element, unnecessary_cast

import 'get_hyperdrive_config_caching.dart';
import 'get_hyperdrive_config_mtls.dart';
import 'get_hyperdrive_config_origin.dart';

/// Result data returned by getHyperdriveConfig.
class GetHyperdriveConfigResult {
  /// Define configurations using a unique string identifier.
  final String? accountId;
  final GetHyperdriveConfigCaching? caching;
  /// Defines the creation time of the Hyperdrive configuration.
  final String? createdOn;
  /// Define configurations using a unique string identifier.
  final String? hyperdriveId;
  /// Define configurations using a unique string identifier.
  final String? id;
  /// Defines the last modified time of the Hyperdrive configuration.
  final String? modifiedOn;
  /// mTLS configuration for the origin connection. Cannot be used with VPC Service origins; TLS must be managed on the VPC Service.
  final GetHyperdriveConfigMtls? mtls;
  /// The name of the Hyperdrive configuration. Used to identify the configuration in the Cloudflare dashboard and API.
  final String? name;
  final GetHyperdriveConfigOrigin? origin;
  /// The (soft) maximum number of connections the Hyperdrive is allowed to make to the origin database.
  final int? originConnectionLimit;
  final String? restartedOn;

  /// Creates a new [GetHyperdriveConfigResult].
  /// [accountId] Define configurations using a unique string identifier.
  /// [caching] Optional.
  /// [createdOn] Defines the creation time of the Hyperdrive configuration.
  /// [hyperdriveId] Define configurations using a unique string identifier.
  /// [id] Define configurations using a unique string identifier.
  /// [modifiedOn] Defines the last modified time of the Hyperdrive configuration.
  /// [mtls] mTLS configuration for the origin connection. Cannot be used with VPC Service origins; TLS must be managed on the VPC Service.
  /// [name] The name of the Hyperdrive configuration. Used to identify the configuration in the Cloudflare dashboard and API.
  /// [origin] Optional.
  /// [originConnectionLimit] The (soft) maximum number of connections the Hyperdrive is allowed to make to the origin database.
  /// [restartedOn] Optional.
  const GetHyperdriveConfigResult({
    this.accountId,
    this.caching,
    this.createdOn,
    this.hyperdriveId,
    this.id,
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
      'caching': ?caching?.toMap(),
      'createdOn': ?createdOn,
      'hyperdriveId': ?hyperdriveId,
      'id': ?id,
      'modifiedOn': ?modifiedOn,
      'mtls': ?mtls?.toMap(),
      'name': ?name,
      'origin': ?origin?.toMap(),
      'originConnectionLimit': ?originConnectionLimit,
      'restartedOn': ?restartedOn,
    };
  }

  factory GetHyperdriveConfigResult.fromMap(Map<String, dynamic> map) {
    return GetHyperdriveConfigResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      caching: (() { final guardedValue = map['caching']; if (guardedValue == null) return null; return GetHyperdriveConfigCaching.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hyperdriveId: (() { final guardedValue = map['hyperdriveId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mtls: (() { final guardedValue = map['mtls']; if (guardedValue == null) return null; return GetHyperdriveConfigMtls.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      origin: (() { final guardedValue = map['origin']; if (guardedValue == null) return null; return GetHyperdriveConfigOrigin.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      originConnectionLimit: (() { final guardedValue = map['originConnectionLimit']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      restartedOn: (() { final guardedValue = map['restartedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
