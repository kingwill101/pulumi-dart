// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Google Cloud Storage location for the inputs.
class GoogleCloudDialogflowV2GcsSourcesResponse {
  /// Google Cloud Storage URIs for the inputs. A URI is of the form: `gs://bucket/object-prefix-or-name` Whether a prefix or name is used depends on the use case.
  final pulumi.Input<List<String>> uris;

  /// Creates a new [GoogleCloudDialogflowV2GcsSourcesResponse].
  /// [uris] Google Cloud Storage URIs for the inputs. A URI is of the form: `gs://bucket/object-prefix-or-name` Whether a prefix or name is used depends on the use case.
  GoogleCloudDialogflowV2GcsSourcesResponse({
    required this.uris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uris': uris,
    };
  }

  factory GoogleCloudDialogflowV2GcsSourcesResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2GcsSourcesResponse(
      uris: pulumi.Input.fromValue((map['uris'] as List).cast<String>()),
    );
  }
}

