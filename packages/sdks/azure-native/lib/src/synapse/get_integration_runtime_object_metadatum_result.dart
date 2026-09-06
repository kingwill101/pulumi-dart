// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getIntegrationRuntimeObjectMetadatum.
class GetIntegrationRuntimeObjectMetadatumResult {
  /// The link to the next page of results, if any remaining results exist.
  final String? nextLink;
  /// List of SSIS object metadata.
  final List<dynamic>? value;

  /// Creates a new [GetIntegrationRuntimeObjectMetadatumResult].
  /// [nextLink] The link to the next page of results, if any remaining results exist.
  /// [value] List of SSIS object metadata.
  const GetIntegrationRuntimeObjectMetadatumResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?value,
    };
  }

  factory GetIntegrationRuntimeObjectMetadatumResult.fromMap(Map<String, dynamic> map) {
    return GetIntegrationRuntimeObjectMetadatumResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); })(),
    );
  }
}
