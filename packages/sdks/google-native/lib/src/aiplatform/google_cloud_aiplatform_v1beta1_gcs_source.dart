// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Google Cloud Storage location for the input content.
class GoogleCloudAiplatformV1beta1GcsSource {
  /// Google Cloud Storage URI(-s) to the input file(s). May contain wildcards. For more information on wildcards, see https://cloud.google.com/storage/docs/gsutil/addlhelp/WildcardNames.
  final pulumi.Input<List<String>> uris;

  /// Creates a new [GoogleCloudAiplatformV1beta1GcsSource].
  /// [uris] Google Cloud Storage URI(-s) to the input file(s). May contain wildcards. For more information on wildcards, see https://cloud.google.com/storage/docs/gsutil/addlhelp/WildcardNames.
  const GoogleCloudAiplatformV1beta1GcsSource({
    required this.uris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uris': uris,
    };
  }

  factory GoogleCloudAiplatformV1beta1GcsSource.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1GcsSource(
      uris: pulumi.Input.fromValue((map['uris'] as List).cast<String>()),
    );
  }
}

