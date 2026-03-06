// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_location_data.dart';

/// Result data returned by getGateway.
class GetGatewayResult {
  final String apiManagementId;
  /// The description of the API Management Gateway.
  final String description;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A `location_data` block as documented below.
  final List<GetGatewayLocationData> locationDatas;
  /// A canonical name for the geographic or physical location.
  final String name;

  /// Creates a new [GetGatewayResult].
  /// [apiManagementId] Required.
  /// [description] The description of the API Management Gateway.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [locationDatas] A `location_data` block as documented below.
  /// [name] A canonical name for the geographic or physical location.
  const GetGatewayResult({
    required this.apiManagementId,
    required this.description,
    required this.id,
    required this.locationDatas,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementId': apiManagementId,
      'description': description,
      'id': id,
      'locationDatas': pulumi.Input.encodeList<GetGatewayLocationData, Map<String, dynamic>>(locationDatas, (value) => value.toMap()),
      'name': name,
    };
  }

  factory GetGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetGatewayResult(
      apiManagementId: map['apiManagementId'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      locationDatas: pulumi.Input.decodeList<GetGatewayLocationData>(map['locationDatas']!, (value) => GetGatewayLocationData.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
    );
  }
}

