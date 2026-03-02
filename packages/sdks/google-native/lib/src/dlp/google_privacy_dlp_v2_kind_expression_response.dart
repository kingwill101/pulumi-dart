// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A representation of a Datastore kind.
class GooglePrivacyDlpV2KindExpressionResponse {
  /// The name of the kind.
  final pulumi.Input<String> name;

  /// Creates a new [GooglePrivacyDlpV2KindExpressionResponse].
  /// [name] The name of the kind.
  GooglePrivacyDlpV2KindExpressionResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GooglePrivacyDlpV2KindExpressionResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2KindExpressionResponse(
      name: (map['name'] as String).input(),
    );
  }
}

