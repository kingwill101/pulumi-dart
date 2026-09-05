// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_location_data.dart';

/// Result data returned by getGateway.
class GetGatewayResult {
  final String? apiManagementId;
  /// The description of the API Management Gateway.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A `locationData` block as documented below.
  final List<GetGatewayLocationData>? locationDatas;
  /// A canonical name for the geographic or physical location.
  final String? name;

  /// Creates a new [GetGatewayResult].
  /// [apiManagementId] Optional.
  /// [description] The description of the API Management Gateway.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [locationDatas] A `locationData` block as documented below.
  /// [name] A canonical name for the geographic or physical location.
  const GetGatewayResult({
    this.apiManagementId,
    this.description,
    this.id,
    this.locationDatas,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementId': ?apiManagementId,
      'description': ?description,
      'id': ?id,
      'locationDatas': ?(() { final guardedValue = locationDatas; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGatewayLocationData, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
    };
  }

  factory GetGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetGatewayResult(
      apiManagementId: (() { final guardedValue = map['apiManagementId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locationDatas: (() { final guardedValue = map['locationDatas']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGatewayLocationData>(guardedValue, (value) => GetGatewayLocationData.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
