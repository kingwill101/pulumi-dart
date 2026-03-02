// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Radius client root certificate of P2SVpnServerConfiguration.
class P2SVpnServerConfigRadiusClientRootCertificateResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String>? etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The provisioning state of the radius client root certificate resource.
  final pulumi.Input<String> provisioningState;
  /// The Radius client root certificate thumbprint.
  final pulumi.Input<String>? thumbprint;

  /// Creates a new [P2SVpnServerConfigRadiusClientRootCertificateResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the radius client root certificate resource.
  /// [thumbprint] The Radius client root certificate thumbprint.
  P2SVpnServerConfigRadiusClientRootCertificateResponse({
    this.etag,
    this.id,
    this.name,
    required this.provisioningState,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': provisioningState,
      'thumbprint': ?thumbprint,
    };
  }

  factory P2SVpnServerConfigRadiusClientRootCertificateResponse.fromMap(Map<String, dynamic> map) {
    return P2SVpnServerConfigRadiusClientRootCertificateResponse(
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      thumbprint: map['thumbprint'] == null ? null : (map['thumbprint']! as String).input(),
    );
  }
}

