// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GalleryApplicationAssignment resources.
class GalleryApplicationAssignmentState {
  /// Specifies the URI to an Azure Blob that will replace the default configuration for the package if provided. Changing this forces a new resource to be created.
  final pulumi.Input<String>? configurationBlobUri;
  /// The ID of the Gallery Application Version. Changing this forces a new resource to be created.
  final pulumi.Input<String>? galleryApplicationVersionId;
  /// Specifies the order in which the packages have to be installed. Possible values are between `0` and `2147483647`. Defaults to `0`.
  final pulumi.Input<int>? order;
  /// Specifies a passthrough value for more generic context. This field can be any valid `string` value. Changing this forces a new resource to be created.
  final pulumi.Input<String>? tag;
  /// The ID of the Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualMachineId;

  /// Creates a new [GalleryApplicationAssignmentState].
  /// [configurationBlobUri] Specifies the URI to an Azure Blob that will replace the default configuration for the package if provided. Changing this forces a new resource to be created.
  /// [galleryApplicationVersionId] The ID of the Gallery Application Version. Changing this forces a new resource to be created.
  /// [order] Specifies the order in which the packages have to be installed. Possible values are between `0` and `2147483647`. Defaults to `0`.
  /// [tag] Specifies a passthrough value for more generic context. This field can be any valid `string` value. Changing this forces a new resource to be created.
  /// [virtualMachineId] The ID of the Virtual Machine. Changing this forces a new resource to be created.
  const GalleryApplicationAssignmentState({
    this.configurationBlobUri,
    this.galleryApplicationVersionId,
    this.order,
    this.tag,
    this.virtualMachineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationBlobUri': ?configurationBlobUri,
      'galleryApplicationVersionId': ?galleryApplicationVersionId,
      'order': ?order,
      'tag': ?tag,
      'virtualMachineId': ?virtualMachineId,
    };
  }

  factory GalleryApplicationAssignmentState.fromMap(Map<String, dynamic> map) {
    return GalleryApplicationAssignmentState(
      configurationBlobUri: (() { final guardedValue = map['configurationBlobUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      galleryApplicationVersionId: (() { final guardedValue = map['galleryApplicationVersionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualMachineId: (() { final guardedValue = map['virtualMachineId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
