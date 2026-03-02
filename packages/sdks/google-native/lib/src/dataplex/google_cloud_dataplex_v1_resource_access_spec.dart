// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ResourceAccessSpec holds the access control configuration to be enforced on the resources, for example, Cloud Storage bucket, BigQuery dataset, BigQuery table.
class GoogleCloudDataplexV1ResourceAccessSpec {
  /// Optional. The set of principals to be granted owner role on the resource.
  final pulumi.Input<List<String>>? owners;
  /// Optional. The format of strings follows the pattern followed by IAM in the bindings. user:{email}, serviceAccount:{email} group:{email}. The set of principals to be granted reader role on the resource.
  final pulumi.Input<List<String>>? readers;
  /// Optional. The set of principals to be granted writer role on the resource.
  final pulumi.Input<List<String>>? writers;

  /// Creates a new [GoogleCloudDataplexV1ResourceAccessSpec].
  /// [owners] Optional. The set of principals to be granted owner role on the resource.
  /// [readers] Optional. The format of strings follows the pattern followed by IAM in the bindings. user:{email}, serviceAccount:{email} group:{email}. The set of principals to be granted reader role on the resource.
  /// [writers] Optional. The set of principals to be granted writer role on the resource.
  GoogleCloudDataplexV1ResourceAccessSpec({
    this.owners,
    this.readers,
    this.writers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'owners': ?owners,
      'readers': ?readers,
      'writers': ?writers,
    };
  }

  factory GoogleCloudDataplexV1ResourceAccessSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1ResourceAccessSpec(
      owners: map['owners'] == null ? null : ((map['owners']! as List).cast<String>()).input(),
      readers: map['readers'] == null ? null : ((map['readers']! as List).cast<String>()).input(),
      writers: map['writers'] == null ? null : ((map['writers']! as List).cast<String>()).input(),
    );
  }
}

