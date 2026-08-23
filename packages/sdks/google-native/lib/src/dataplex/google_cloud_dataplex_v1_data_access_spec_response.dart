// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DataAccessSpec holds the access control configuration to be enforced on data stored within resources (eg: rows, columns in BigQuery Tables). When associated with data, the data is only accessible to principals explicitly granted access through the DataAccessSpec. Principals with access to the containing resource are not implicitly granted access.
class GoogleCloudDataplexV1DataAccessSpecResponse {
  /// Optional. The format of strings follows the pattern followed by IAM in the bindings. user:{email}, serviceAccount:{email} group:{email}. The set of principals to be granted reader role on data stored within resources.
  final pulumi.Input<List<String>> readers;

  /// Creates a new [GoogleCloudDataplexV1DataAccessSpecResponse].
  /// [readers] Optional. The format of strings follows the pattern followed by IAM in the bindings. user:{email}, serviceAccount:{email} group:{email}. The set of principals to be granted reader role on data stored within resources.
  const GoogleCloudDataplexV1DataAccessSpecResponse({
    required this.readers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'readers': readers,
    };
  }

  factory GoogleCloudDataplexV1DataAccessSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataAccessSpecResponse(
      readers: pulumi.Input.fromValue((map['readers'] as List).cast<String>()),
    );
  }
}
