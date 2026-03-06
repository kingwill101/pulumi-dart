// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_address_group_type_networksecurity_v1beta1.dart';

/// {@template pulumi_networksecurity_v1beta1_organization_address_group_networksecurity_v1beta1_args_doc}
/// The set of arguments for OrganizationAddressGroup.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1beta1_organization_address_group_networksecurity_v1beta1_args_doc}
class OrganizationAddressGroupNetworksecurityV1beta1Args {
  /// Required. Short name of the AddressGroup resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "authz_policy".
  final pulumi.Input<String> addressGroupId;
  /// Capacity of the Address Group
  final pulumi.Input<int> capacity;
  /// Optional. Free-text description of the resource.
  final pulumi.Input<String>? description;
  /// Optional. List of items.
  final pulumi.Input<List<String>>? items;
  /// Optional. Set of label tags associated with the AddressGroup resource.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Name of the AddressGroup resource. It matches pattern `projects/*/locations/{location}/addressGroups/`.
  final pulumi.Input<String> name;
  final pulumi.Input<String> organizationId;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// The type of the Address Group. Possible values are "IPv4" or "IPV6".
  final pulumi.Input<OrganizationAddressGroupTypeNetworksecurityV1beta1> type;

  /// Creates a new [OrganizationAddressGroupNetworksecurityV1beta1Args].
  /// [addressGroupId] Required. Short name of the AddressGroup resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "authz_policy".
  /// [capacity] Capacity of the Address Group
  /// [description] Optional. Free-text description of the resource.
  /// [items] Optional. List of items.
  /// [labels] Optional. Set of label tags associated with the AddressGroup resource.
  /// [location] Optional.
  /// [name] Name of the AddressGroup resource. It matches pattern `projects/*/locations/{location}/addressGroups/`.
  /// [organizationId] Required.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [type] The type of the Address Group. Possible values are "IPv4" or "IPV6".
  const OrganizationAddressGroupNetworksecurityV1beta1Args({
    required this.addressGroupId,
    required this.capacity,
    this.description,
    this.items,
    this.labels,
    this.location,
    required this.name,
    required this.organizationId,
    this.requestId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressGroupId': addressGroupId,
      'capacity': capacity,
      'description': ?description,
      'items': ?items,
      'labels': ?labels,
      'location': ?location,
      'name': name,
      'organizationId': organizationId,
      'requestId': ?requestId,
      'type': pulumi.Input.mapInputValue<OrganizationAddressGroupTypeNetworksecurityV1beta1, String>(type, (value) => value.wireValue),
    };
  }

  factory OrganizationAddressGroupNetworksecurityV1beta1Args.fromMap(Map<String, dynamic> map) {
    return OrganizationAddressGroupNetworksecurityV1beta1Args(
      addressGroupId: pulumi.Input.fromValue(map['addressGroupId'] as String),
      capacity: pulumi.Input.fromValue(map['capacity'] as int),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(OrganizationAddressGroupTypeNetworksecurityV1beta1.fromValue(map['type']! as String)),
    );
  }
}

