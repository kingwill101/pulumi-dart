// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCloudMetadata {
  /// Specifies the cloud provider. For example `Azure`, `AWS` and `GCP`.
  final pulumi.Input<String> provider;

  /// Creates a new [GetCloudMetadata].
  /// [provider] Specifies the cloud provider. For example `Azure`, `AWS` and `GCP`.
  const GetCloudMetadata({
    required this.provider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provider': provider,
    };
  }

  factory GetCloudMetadata.fromMap(Map<String, dynamic> map) {
    return GetCloudMetadata(
      provider: pulumi.Input.fromValue(map['provider'] as String),
    );
  }
}
