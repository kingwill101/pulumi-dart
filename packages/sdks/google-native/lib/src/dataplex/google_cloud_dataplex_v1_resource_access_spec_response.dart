// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ResourceAccessSpec holds the access control configuration to be enforced on the resources, for example, Cloud Storage bucket, BigQuery dataset, BigQuery table.
class GoogleCloudDataplexV1ResourceAccessSpecResponse {
  /// Optional. The set of principals to be granted owner role on the resource.
  final pulumi.Input<List<String>> owners;

  /// Optional. The format of strings follows the pattern followed by IAM in the bindings. user:{email}, serviceAccount:{email} group:{email}. The set of principals to be granted reader role on the resource.
  final pulumi.Input<List<String>> readers;

  /// Optional. The set of principals to be granted writer role on the resource.
  final pulumi.Input<List<String>> writers;

  /// Creates a new [GoogleCloudDataplexV1ResourceAccessSpecResponse].
  /// [owners] Optional. The set of principals to be granted owner role on the resource.
  /// [readers] Optional. The format of strings follows the pattern followed by IAM in the bindings. user:{email}, serviceAccount:{email} group:{email}. The set of principals to be granted reader role on the resource.
  /// [writers] Optional. The set of principals to be granted writer role on the resource.
  GoogleCloudDataplexV1ResourceAccessSpecResponse({
    required this.owners,
    required this.readers,
    required this.writers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'owners': owners,
      'readers': readers,
      'writers': writers,
    };
  }

  factory GoogleCloudDataplexV1ResourceAccessSpecResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDataplexV1ResourceAccessSpecResponse(
      owners: pulumi.Input.fromValue((map['owners'] as List).cast<String>()),
      readers: pulumi.Input.fromValue((map['readers'] as List).cast<String>()),
      writers: pulumi.Input.fromValue((map['writers'] as List).cast<String>()),
    );
  }
}
