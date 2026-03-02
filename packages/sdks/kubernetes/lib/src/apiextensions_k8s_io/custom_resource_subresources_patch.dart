// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_resource_subresource_scale_patch.dart';

/// CustomResourceSubresources defines the status and scale subresources for CustomResources.
class CustomResourceSubresourcesPatch {
  /// scale indicates the custom resource should serve a `/scale` subresource that returns an `autoscaling/v1` Scale object.
  final pulumi.Input<CustomResourceSubresourceScalePatch>? scale;
  /// status indicates the custom resource should serve a `/status` subresource. When enabled: 1. requests to the custom resource primary endpoint ignore changes to the `status` stanza of the object. 2. requests to the custom resource `/status` subresource ignore changes to anything other than the `status` stanza of the object.
  final pulumi.Input<dynamic>? status;

  /// Creates a new [CustomResourceSubresourcesPatch].
  /// [scale] scale indicates the custom resource should serve a `/scale` subresource that returns an `autoscaling/v1` Scale object.
  /// [status] status indicates the custom resource should serve a `/status` subresource. When enabled: 1. requests to the custom resource primary endpoint ignore changes to the `status` stanza of the object. 2. requests to the custom resource `/status` subresource ignore changes to anything other than the `status` stanza of the object.
  CustomResourceSubresourcesPatch({
    this.scale,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scale': ?pulumi.Input.mapOptionalInputValue<CustomResourceSubresourceScalePatch, Map<String, dynamic>>(scale, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory CustomResourceSubresourcesPatch.fromMap(Map<String, dynamic> map) {
    return CustomResourceSubresourcesPatch(
      scale: map['scale'] == null ? null : (CustomResourceSubresourceScalePatch.fromMap((map['scale'] as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (map['status']).input(),
    );
  }
}

