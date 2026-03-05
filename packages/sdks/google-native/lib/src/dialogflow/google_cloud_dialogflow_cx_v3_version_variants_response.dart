// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_version_variants_variant_response.dart';

/// A list of flow version variants.
class GoogleCloudDialogflowCxV3VersionVariantsResponse {
  /// A list of flow version variants.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3VersionVariantsVariantResponse>> variants;

  /// Creates a new [GoogleCloudDialogflowCxV3VersionVariantsResponse].
  /// [variants] A list of flow version variants.
  GoogleCloudDialogflowCxV3VersionVariantsResponse({
    required this.variants,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'variants': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowCxV3VersionVariantsVariantResponse>, List<Map<String, dynamic>>>(variants, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3VersionVariantsVariantResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDialogflowCxV3VersionVariantsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3VersionVariantsResponse(
      variants: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3VersionVariantsVariantResponse>(map['variants']!, (value) => GoogleCloudDialogflowCxV3VersionVariantsVariantResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

