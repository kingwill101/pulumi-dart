// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';

/// Virtual Network route contract used to pass routing information for a Virtual Network.
class VnetRouteResponse {
  /// The ending address for this route. If the start address is specified in CIDR notation, this must be omitted.
  final pulumi.Input<String>? endAddress;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final pulumi.Input<String> id;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// The name of the resource
  final pulumi.Input<String> name;
  /// The type of route this is:
  /// DEFAULT - By default, every app has routes to the local address ranges specified by RFC1918
  /// INHERITED - Routes inherited from the real Virtual Network routes
  /// STATIC - Static route set on the app only
  ///
  /// These values will be used for syncing an app's routes with those from a Virtual Network.
  final pulumi.Input<String>? routeType;
  /// The starting address for this route. This may also include a CIDR notation, in which case the end address must not be specified.
  final pulumi.Input<String>? startAddress;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final pulumi.Input<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final pulumi.Input<String> type;

  /// Creates a new [VnetRouteResponse].
  /// [endAddress] The ending address for this route. If the start address is specified in CIDR notation, this must be omitted.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] Kind of resource.
  /// [name] The name of the resource
  /// [routeType] The type of route this is:
  /// [startAddress] The starting address for this route. This may also include a CIDR notation, in which case the end address must not be specified.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const VnetRouteResponse({
    this.endAddress,
    required this.id,
    this.kind,
    required this.name,
    this.routeType,
    this.startAddress,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endAddress': ?endAddress,
      'id': id,
      'kind': ?kind,
      'name': name,
      'routeType': ?routeType,
      'startAddress': ?startAddress,
      'systemData': pulumi.Input.mapInputValue<SystemDataResponse, Map<String, dynamic>>(systemData, (value) => value.toMap()),
      'type': type,
    };
  }

  factory VnetRouteResponse.fromMap(Map<String, dynamic> map) {
    return VnetRouteResponse(
      endAddress: (() { final guardedValue = map['endAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      routeType: (() { final guardedValue = map['routeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startAddress: (() { final guardedValue = map['startAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemData: pulumi.Input.fromValue(SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
