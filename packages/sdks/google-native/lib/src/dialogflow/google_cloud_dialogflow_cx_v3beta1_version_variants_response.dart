// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_version_variants_variant_response.dart';

/// A list of flow version variants.
class GoogleCloudDialogflowCxV3beta1VersionVariantsResponse {
  /// A list of flow version variants.
  final pulumi.Input<
    List<GoogleCloudDialogflowCxV3beta1VersionVariantsVariantResponse>
  >
  variants;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1VersionVariantsResponse].
  /// [variants] A list of flow version variants.
  GoogleCloudDialogflowCxV3beta1VersionVariantsResponse({
    required this.variants,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'variants':
          pulumi.Input.mapInputValue<
            List<GoogleCloudDialogflowCxV3beta1VersionVariantsVariantResponse>,
            List<Map<String, dynamic>>
          >(
            variants,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudDialogflowCxV3beta1VersionVariantsVariantResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GoogleCloudDialogflowCxV3beta1VersionVariantsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3beta1VersionVariantsResponse(
      variants: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GoogleCloudDialogflowCxV3beta1VersionVariantsVariantResponse
        >(
          map['variants']!,
          (value) =>
              GoogleCloudDialogflowCxV3beta1VersionVariantsVariantResponse.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
