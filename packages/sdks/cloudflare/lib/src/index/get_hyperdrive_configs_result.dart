// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hyperdrive_configs_result_caching.dart';
import 'get_hyperdrive_configs_result_mtls.dart';
import 'get_hyperdrive_configs_result_origin.dart';

class GetHyperdriveConfigsResult {
  final pulumi.Input<GetHyperdriveConfigsResultCaching> caching;
  /// Defines the creation time of the Hyperdrive configuration.
  final pulumi.Input<String> createdOn;
  /// Define configurations using a unique string identifier.
  final pulumi.Input<String> id;
  /// Defines the last modified time of the Hyperdrive configuration.
  final pulumi.Input<String> modifiedOn;
  /// mTLS configuration for the origin connection. Cannot be used with VPC Service origins; TLS must be managed on the VPC Service.
  final pulumi.Input<GetHyperdriveConfigsResultMtls> mtls;
  /// The name of the Hyperdrive configuration. Used to identify the configuration in the Cloudflare dashboard and API.
  final pulumi.Input<String> name;
  final pulumi.Input<GetHyperdriveConfigsResultOrigin> origin;
  /// The (soft) maximum number of connections the Hyperdrive is allowed to make to the origin database.
  final pulumi.Input<int> originConnectionLimit;
  /// Defines the last time the Hyperdrive connection pool was explicitly restarted via the restart endpoint. Omitted if the pool has never been explicitly restarted.
  final pulumi.Input<String> restartedOn;

  /// Creates a new [GetHyperdriveConfigsResult].
  /// [caching] Required.
  /// [createdOn] Defines the creation time of the Hyperdrive configuration.
  /// [id] Define configurations using a unique string identifier.
  /// [modifiedOn] Defines the last modified time of the Hyperdrive configuration.
  /// [mtls] mTLS configuration for the origin connection. Cannot be used with VPC Service origins; TLS must be managed on the VPC Service.
  /// [name] The name of the Hyperdrive configuration. Used to identify the configuration in the Cloudflare dashboard and API.
  /// [origin] Required.
  /// [originConnectionLimit] The (soft) maximum number of connections the Hyperdrive is allowed to make to the origin database.
  /// [restartedOn] Defines the last time the Hyperdrive connection pool was explicitly restarted via the restart endpoint. Omitted if the pool has never been explicitly restarted.
  const GetHyperdriveConfigsResult({
    required this.caching,
    required this.createdOn,
    required this.id,
    required this.modifiedOn,
    required this.mtls,
    required this.name,
    required this.origin,
    required this.originConnectionLimit,
    required this.restartedOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caching': pulumi.Input.mapInputValue<GetHyperdriveConfigsResultCaching, Map<String, dynamic>>(caching, (value) => value.toMap()),
      'createdOn': createdOn,
      'id': id,
      'modifiedOn': modifiedOn,
      'mtls': pulumi.Input.mapInputValue<GetHyperdriveConfigsResultMtls, Map<String, dynamic>>(mtls, (value) => value.toMap()),
      'name': name,
      'origin': pulumi.Input.mapInputValue<GetHyperdriveConfigsResultOrigin, Map<String, dynamic>>(origin, (value) => value.toMap()),
      'originConnectionLimit': originConnectionLimit,
      'restartedOn': restartedOn,
    };
  }

  factory GetHyperdriveConfigsResult.fromMap(Map<String, dynamic> map) {
    return GetHyperdriveConfigsResult(
      caching: pulumi.Input.fromValue(GetHyperdriveConfigsResultCaching.fromMap((map['caching']! as Map).cast<String, dynamic>())),
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      mtls: pulumi.Input.fromValue(GetHyperdriveConfigsResultMtls.fromMap((map['mtls']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      origin: pulumi.Input.fromValue(GetHyperdriveConfigsResultOrigin.fromMap((map['origin']! as Map).cast<String, dynamic>())),
      originConnectionLimit: pulumi.Input.fromValue((map['originConnectionLimit'] as num).toInt()),
      restartedOn: pulumi.Input.fromValue(map['restartedOn'] as String),
    );
  }
}
