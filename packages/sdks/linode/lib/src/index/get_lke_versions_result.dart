// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_lke_versions_version.dart';

/// Result data returned by getLkeVersions.
class GetLkeVersionsResult {
  /// The Kubernetes version numbers available for deployment to a Kubernetes cluster in the format of [major].[minor], and the latest supported patch version.
  final String id;
  /// The Kubernetes version tier. Only exported if `tier` was provided when using the datasource.
  final String? tier;
  final List<GetLkeVersionsVersion> versions;

  /// Creates a new [GetLkeVersionsResult].
  /// [id] The Kubernetes version numbers available for deployment to a Kubernetes cluster in the format of [major].[minor], and the latest supported patch version.
  /// [tier] The Kubernetes version tier. Only exported if `tier` was provided when using the datasource.
  /// [versions] Required.
  GetLkeVersionsResult({
    required this.id,
    this.tier,
    required this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'tier': ?tier,
      'versions': pulumi.Input.encodeList<GetLkeVersionsVersion, Map<String, dynamic>>(versions, (value) => value.toMap()),
    };
  }

  factory GetLkeVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetLkeVersionsResult(
      id: map['id'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
      versions: pulumi.Input.decodeList<GetLkeVersionsVersion>(map['versions'], (value) => GetLkeVersionsVersion.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

