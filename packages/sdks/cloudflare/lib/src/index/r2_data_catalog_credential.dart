// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class R2DataCatalogCredential {
  /// Provides the Cloudflare API token for accessing R2.
  final pulumi.Input<String> token;

  /// Creates a new [R2DataCatalogCredential].
  /// [token] Provides the Cloudflare API token for accessing R2.
  const R2DataCatalogCredential({
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': token,
    };
  }

  factory R2DataCatalogCredential.fromMap(Map<String, dynamic> map) {
    return R2DataCatalogCredential(
      token: pulumi.Input.fromValue(map['token'] as String),
    );
  }
}
