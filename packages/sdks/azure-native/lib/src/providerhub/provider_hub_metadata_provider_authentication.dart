// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The provider authentication.
class ProviderHubMetadataProviderAuthentication {
  /// The allowed audiences.
  final pulumi.Input<List<String>> allowedAudiences;

  /// Creates a new [ProviderHubMetadataProviderAuthentication].
  /// [allowedAudiences] The allowed audiences.
  ProviderHubMetadataProviderAuthentication({required this.allowedAudiences});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'allowedAudiences': allowedAudiences};
  }

  factory ProviderHubMetadataProviderAuthentication.fromMap(
    Map<String, dynamic> map,
  ) {
    return ProviderHubMetadataProviderAuthentication(
      allowedAudiences: pulumi.Input.fromValue(
        (map['allowedAudiences'] as List).cast<String>(),
      ),
    );
  }
}
