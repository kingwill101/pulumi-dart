// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1beta1_get_address_group_networksecurity_v1beta1_args_doc}
/// Arguments for getAddressGroup.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1beta1_get_address_group_networksecurity_v1beta1_args_doc}
class GetAddressGroupNetworksecurityV1beta1Args {
  final pulumi.Input<String> addressGroupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAddressGroupNetworksecurityV1beta1Args].
  /// [addressGroupId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetAddressGroupNetworksecurityV1beta1Args({
    required this.addressGroupId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressGroupId': addressGroupId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetAddressGroupNetworksecurityV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAddressGroupNetworksecurityV1beta1Args(
      addressGroupId: pulumi.Input.fromValue(map['addressGroupId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
