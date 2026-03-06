// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_version_variants_variant.dart';

/// A list of flow version variants.
class GoogleCloudDialogflowCxV3VersionVariants {
  /// A list of flow version variants.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3VersionVariantsVariant>>? variants;

  /// Creates a new [GoogleCloudDialogflowCxV3VersionVariants].
  /// [variants] A list of flow version variants.
  const GoogleCloudDialogflowCxV3VersionVariants({
    this.variants,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'variants': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3VersionVariantsVariant>, List<Map<String, dynamic>>>(variants, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3VersionVariantsVariant, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDialogflowCxV3VersionVariants.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3VersionVariants(
      variants: (() { final guardedValue = map['variants']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3VersionVariantsVariant>(guardedValue, (value) => GoogleCloudDialogflowCxV3VersionVariantsVariant.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

