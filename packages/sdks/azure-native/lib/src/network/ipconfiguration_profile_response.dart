// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_response.dart';

/// IP configuration profile child resource.
class IPConfigurationProfileResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The provisioning state of the IP configuration profile resource.
  final pulumi.Input<String> provisioningState;
  /// The reference to the subnet resource to create a container network interface ip configuration.
  final pulumi.Input<SubnetResponse>? subnet;
  /// Sub Resource type.
  final pulumi.Input<String> type;

  /// Creates a new [IPConfigurationProfileResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the IP configuration profile resource.
  /// [subnet] The reference to the subnet resource to create a container network interface ip configuration.
  /// [type] Sub Resource type.
  IPConfigurationProfileResponse({
    required this.etag,
    this.id,
    this.name,
    required this.provisioningState,
    this.subnet,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': provisioningState,
      'subnet': ?pulumi.Input.mapOptionalInputValue<SubnetResponse, Map<String, dynamic>>(subnet, (value) => value.toMap()),
      'type': type,
    };
  }

  factory IPConfigurationProfileResponse.fromMap(Map<String, dynamic> map) {
    return IPConfigurationProfileResponse(
      etag: (map['etag'] as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      subnet: map['subnet'] == null ? null : (SubnetResponse.fromMap((map['subnet']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

