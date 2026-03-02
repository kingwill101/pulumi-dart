// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_resource_subresource_scale.dart';

/// CustomResourceSubresources defines the status and scale subresources for CustomResources.
class CustomResourceSubresources {
  /// scale indicates the custom resource should serve a `/scale` subresource that returns an `autoscaling/v1` Scale object.
  final pulumi.Input<CustomResourceSubresourceScale>? scale;
  /// status indicates the custom resource should serve a `/status` subresource. When enabled: 1. requests to the custom resource primary endpoint ignore changes to the `status` stanza of the object. 2. requests to the custom resource `/status` subresource ignore changes to anything other than the `status` stanza of the object.
  final pulumi.Input<dynamic>? status;

  /// Creates a new [CustomResourceSubresources].
  /// [scale] scale indicates the custom resource should serve a `/scale` subresource that returns an `autoscaling/v1` Scale object.
  /// [status] status indicates the custom resource should serve a `/status` subresource. When enabled: 1. requests to the custom resource primary endpoint ignore changes to the `status` stanza of the object. 2. requests to the custom resource `/status` subresource ignore changes to anything other than the `status` stanza of the object.
  CustomResourceSubresources({
    this.scale,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scale': ?pulumi.Input.mapOptionalInputValue<CustomResourceSubresourceScale, Map<String, dynamic>>(scale, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory CustomResourceSubresources.fromMap(Map<String, dynamic> map) {
    return CustomResourceSubresources(
      scale: map['scale'] == null ? null : (CustomResourceSubresourceScale.fromMap((map['scale']! as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (map['status']!).input(),
    );
  }
}

