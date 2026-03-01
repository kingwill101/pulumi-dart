// ignore_for_file: unused_element, unnecessary_cast


class JobQueryUserDefinedFunctionResource {
  /// An inline resource that contains code for a user-defined function (UDF).
  /// Providing a inline code resource is equivalent to providing a URI for a file containing the same code.
  final String? inlineCode;
  /// A code resource to load from a Google Cloud Storage URI (gs://bucket/path).
  final String? resourceUri;

  /// Creates a new [JobQueryUserDefinedFunctionResource].
  /// [inlineCode] An inline resource that contains code for a user-defined function (UDF).
  /// [resourceUri] A code resource to load from a Google Cloud Storage URI (gs://bucket/path).
  JobQueryUserDefinedFunctionResource({
    this.inlineCode,
    this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inlineCode': ?inlineCode,
      'resourceUri': ?resourceUri,
    };
  }

  factory JobQueryUserDefinedFunctionResource.fromMap(Map<String, dynamic> map) {
    return JobQueryUserDefinedFunctionResource(
      inlineCode: map['inlineCode'] == null ? null : map['inlineCode'] as String,
      resourceUri: map['resourceUri'] == null ? null : map['resourceUri'] as String,
    );
  }
}

