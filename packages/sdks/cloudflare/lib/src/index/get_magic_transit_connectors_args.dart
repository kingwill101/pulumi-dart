// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_magic_transit_connectors_get_magic_transit_connectors_args_doc}
/// Arguments for getMagicTransitConnectors.
/// {@endtemplate}
/// {@macro pulumi_index_get_magic_transit_connectors_get_magic_transit_connectors_args_doc}
class GetMagicTransitConnectorsArgs {
  /// Account identifier
  final pulumi.Input<String?>? accountId;
  /// Filter connectors by device type.
  /// Available values: "MANAGED", "LICENSED".
  final pulumi.Input<String?>? deviceType;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;

  /// Creates a new [GetMagicTransitConnectorsArgs].
  /// [accountId] Account identifier
  /// [deviceType] Filter connectors by device type.
  /// [maxItems] Max items to fetch, default: 1000
  const GetMagicTransitConnectorsArgs({
    this.accountId,
    this.deviceType,
    this.maxItems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'deviceType': ?deviceType,
      'maxItems': ?maxItems,
    };
  }

  factory GetMagicTransitConnectorsArgs.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitConnectorsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deviceType: (() { final guardedValue = map['deviceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
