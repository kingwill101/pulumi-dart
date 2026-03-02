// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLkeVersionsVersion {
  /// The Kubernetes version numbers available for deployment to a Kubernetes cluster in the format of [major].[minor], and the latest supported patch version.
  final pulumi.Input<String> id;
  /// The tier (`standard` or `enterprise`) of Linode LKE Versions to fetch.
  final pulumi.Input<String> tier;

  /// Creates a new [GetLkeVersionsVersion].
  /// [id] The Kubernetes version numbers available for deployment to a Kubernetes cluster in the format of [major].[minor], and the latest supported patch version.
  /// [tier] The tier (`standard` or `enterprise`) of Linode LKE Versions to fetch.
  GetLkeVersionsVersion({
    required this.id,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'tier': tier,
    };
  }

  factory GetLkeVersionsVersion.fromMap(Map<String, dynamic> map) {
    return GetLkeVersionsVersion(
      id: (map['id'] as String).input(),
      tier: (map['tier'] as String).input(),
    );
  }
}

