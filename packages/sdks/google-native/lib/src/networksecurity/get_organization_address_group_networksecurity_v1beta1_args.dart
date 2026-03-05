// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1beta1_get_organization_address_group_networksecurity_v1beta1_args_doc}
/// Arguments for getOrganizationAddressGroup.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1beta1_get_organization_address_group_networksecurity_v1beta1_args_doc}
class GetOrganizationAddressGroupNetworksecurityV1beta1Args {
  final pulumi.Input<String> addressGroupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetOrganizationAddressGroupNetworksecurityV1beta1Args].
  /// [addressGroupId] Required.
  /// [location] Required.
  /// [organizationId] Required.
  GetOrganizationAddressGroupNetworksecurityV1beta1Args({
    required this.addressGroupId,
    required this.location,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressGroupId': addressGroupId,
      'location': location,
      'organizationId': organizationId,
    };
  }

  factory GetOrganizationAddressGroupNetworksecurityV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetOrganizationAddressGroupNetworksecurityV1beta1Args(
      addressGroupId: pulumi.Input.fromValue(map['addressGroupId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
    );
  }
}

