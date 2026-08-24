// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_magic_transit_connector_filter.dart';

/// {@template pulumi_index_get_magic_transit_connector_get_magic_transit_connector_args_doc}
/// Arguments for getMagicTransitConnector.
/// {@endtemplate}
/// {@macro pulumi_index_get_magic_transit_connector_get_magic_transit_connector_args_doc}
class GetMagicTransitConnectorArgs {
  /// Account identifier
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? connectorId;
  final pulumi.Input<GetMagicTransitConnectorFilter?>? filter;

  /// Creates a new [GetMagicTransitConnectorArgs].
  /// [accountId] Account identifier
  /// [connectorId] Optional.
  /// [filter] Optional.
  const GetMagicTransitConnectorArgs({
    this.accountId,
    this.connectorId,
    this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'connectorId': ?connectorId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetMagicTransitConnectorFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
    };
  }

  factory GetMagicTransitConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitConnectorArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectorId: (() { final guardedValue = map['connectorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetMagicTransitConnectorFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
