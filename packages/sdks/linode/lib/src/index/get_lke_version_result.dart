// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getLkeVersion.
class GetLkeVersionResult {
  /// The Kubernetes version numbers available for deployment to a Kubernetes cluster in the format of [major].[minor], and the latest supported patch version.
  final String id;

  /// The Kubernetes version tier. Only exported if `tier` was provided when using the datasource.
  final String tier;

  /// Creates a new [GetLkeVersionResult].
  /// [id] The Kubernetes version numbers available for deployment to a Kubernetes cluster in the format of [major].[minor], and the latest supported patch version.
  /// [tier] The Kubernetes version tier. Only exported if `tier` was provided when using the datasource.
  GetLkeVersionResult({required this.id, required this.tier});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'tier': tier};
  }

  factory GetLkeVersionResult.fromMap(Map<String, dynamic> map) {
    return GetLkeVersionResult(
      id: map['id'] as String,
      tier: map['tier'] as String,
    );
  }
}
