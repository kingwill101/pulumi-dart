// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_image_variant_get_image_variant_args_doc}
/// Arguments for getImageVariant.
/// {@endtemplate}
/// {@macro pulumi_index_get_image_variant_get_image_variant_args_doc}
class GetImageVariantArgs {
  /// Account identifier tag.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String> variantId;

  /// Creates a new [GetImageVariantArgs].
  /// [accountId] Account identifier tag.
  /// [variantId] Required.
  const GetImageVariantArgs({
    this.accountId,
    required this.variantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'variantId': variantId,
    };
  }

  factory GetImageVariantArgs.fromMap(Map<String, dynamic> map) {
    return GetImageVariantArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      variantId: pulumi.Input.fromValue(map['variantId'] as String),
    );
  }
}
