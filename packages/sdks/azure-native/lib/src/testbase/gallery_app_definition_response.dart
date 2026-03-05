// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the definition of a gallery application used in Test Base package.
class GalleryAppDefinitionResponse {
  /// Whether the disclaimer of the gallery application is accepted.
  final pulumi.Input<bool>? isConsented;
  /// The SKU id of the gallery application.
  final pulumi.Input<String> skuId;

  /// Creates a new [GalleryAppDefinitionResponse].
  /// [isConsented] Whether the disclaimer of the gallery application is accepted.
  /// [skuId] The SKU id of the gallery application.
  GalleryAppDefinitionResponse({
    this.isConsented,
    required this.skuId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isConsented': ?isConsented,
      'skuId': skuId,
    };
  }

  factory GalleryAppDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return GalleryAppDefinitionResponse(
      isConsented: (() { final guardedValue = map['isConsented']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      skuId: pulumi.Input.fromValue(map['skuId'] as String),
    );
  }
}

