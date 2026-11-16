// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hyperdrive_configs_result_caching.dart';
import 'get_hyperdrive_configs_result_integration.dart';
import 'get_hyperdrive_configs_result_mtls.dart';
import 'get_hyperdrive_configs_result_origin.dart';

class GetHyperdriveConfigsResult {
  final pulumi.Input<GetHyperdriveConfigsResultCaching> caching;
  /// Defines the creation time of the Hyperdrive configuration.
  final pulumi.Input<String> createdOn;
  /// Define configurations using a unique string identifier.
  final pulumi.Input<String> id;
  /// Selects a PlanetScale database and provisions credentials managed by Cloudflare when creating a Hyperdrive configuration. The Cloudflare account must already be linked to PlanetScale in the Hyperdrive dashboard. The selection is returned as read-only metadata and cannot be changed with replace or update operations.
  final pulumi.Input<GetHyperdriveConfigsResultIntegration> integration;
  /// Defines the last modified time of the Hyperdrive configuration.
  final pulumi.Input<String> modifiedOn;
  /// mTLS configuration for the origin connection. Cannot be used with VPC Service origins; TLS must be managed on the VPC Service.
  final pulumi.Input<GetHyperdriveConfigsResultMtls> mtls;
  /// The name of the Hyperdrive configuration. Used to identify the configuration in the Cloudflare dashboard and API.
  final pulumi.Input<String> name;
  /// Combines database connection fields with exactly one supported network location.
  final pulumi.Input<GetHyperdriveConfigsResultOrigin> origin;
  /// The (soft) maximum number of connections the Hyperdrive is allowed to make to the origin database.
  final pulumi.Input<int> originConnectionLimit;
  /// Defines the last time the Hyperdrive connection pool was explicitly restarted via the restart endpoint. Omitted if the pool has never been explicitly restarted.
  final pulumi.Input<String> restartedOn;

  /// Creates a new [GetHyperdriveConfigsResult].
  /// [caching] Required.
  /// [createdOn] Defines the creation time of the Hyperdrive configuration.
  /// [id] Define configurations using a unique string identifier.
  /// [integration] Selects a PlanetScale database and provisions credentials managed by Cloudflare when creating a Hyperdrive configuration. The Cloudflare account must already be linked to PlanetScale in the Hyperdrive dashboard. The selection is returned as read-only metadata and cannot be changed with replace or update operations.
  /// [modifiedOn] Defines the last modified time of the Hyperdrive configuration.
  /// [mtls] mTLS configuration for the origin connection. Cannot be used with VPC Service origins; TLS must be managed on the VPC Service.
  /// [name] The name of the Hyperdrive configuration. Used to identify the configuration in the Cloudflare dashboard and API.
  /// [origin] Combines database connection fields with exactly one supported network location.
  /// [originConnectionLimit] The (soft) maximum number of connections the Hyperdrive is allowed to make to the origin database.
  /// [restartedOn] Defines the last time the Hyperdrive connection pool was explicitly restarted via the restart endpoint. Omitted if the pool has never been explicitly restarted.
  const GetHyperdriveConfigsResult({
    required this.caching,
    required this.createdOn,
    required this.id,
    required this.integration,
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
      'integration': pulumi.Input.mapInputValue<GetHyperdriveConfigsResultIntegration, Map<String, dynamic>>(integration, (value) => value.toMap()),
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
      integration: pulumi.Input.fromValue(GetHyperdriveConfigsResultIntegration.fromMap((map['integration']! as Map).cast<String, dynamic>())),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      mtls: pulumi.Input.fromValue(GetHyperdriveConfigsResultMtls.fromMap((map['mtls']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      origin: pulumi.Input.fromValue(GetHyperdriveConfigsResultOrigin.fromMap((map['origin']! as Map).cast<String, dynamic>())),
      originConnectionLimit: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['originConnectionLimit'])),
      restartedOn: pulumi.Input.fromValue(map['restartedOn'] as String),
    );
  }
}
