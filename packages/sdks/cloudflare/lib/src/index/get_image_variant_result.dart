// ignore_for_file: unused_element, unnecessary_cast

import 'get_image_variant_variant.dart';

/// Result data returned by getImageVariant.
class GetImageVariantResult {
  /// Account identifier tag.
  final String? accountId;
  /// The ID of this resource.
  final String? id;
  final GetImageVariantVariant? variant;
  final String? variantId;

  /// Creates a new [GetImageVariantResult].
  /// [accountId] Account identifier tag.
  /// [id] The ID of this resource.
  /// [variant] Optional.
  /// [variantId] Optional.
  const GetImageVariantResult({
    this.accountId,
    this.id,
    this.variant,
    this.variantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'id': ?id,
      'variant': ?variant?.toMap(),
      'variantId': ?variantId,
    };
  }

  factory GetImageVariantResult.fromMap(Map<String, dynamic> map) {
    return GetImageVariantResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      variant: (() { final guardedValue = map['variant']; if (guardedValue == null) return null; return GetImageVariantVariant.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      variantId: (() { final guardedValue = map['variantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
