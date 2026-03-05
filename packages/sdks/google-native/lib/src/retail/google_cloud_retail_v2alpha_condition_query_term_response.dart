// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Query terms that we want to match on.
class GoogleCloudRetailV2alphaConditionQueryTermResponse {
  /// Whether this is supposed to be a full or partial match.
  final pulumi.Input<bool> fullMatch;
  /// The value of the term to match on. Value cannot be empty. Value can have at most 3 terms if specified as a partial match. Each space separated string is considered as one term. For example, "a b c" is 3 terms and allowed, but " a b c d" is 4 terms and not allowed for a partial match.
  final pulumi.Input<String> value;

  /// Creates a new [GoogleCloudRetailV2alphaConditionQueryTermResponse].
  /// [fullMatch] Whether this is supposed to be a full or partial match.
  /// [value] The value of the term to match on. Value cannot be empty. Value can have at most 3 terms if specified as a partial match. Each space separated string is considered as one term. For example, "a b c" is 3 terms and allowed, but " a b c d" is 4 terms and not allowed for a partial match.
  GoogleCloudRetailV2alphaConditionQueryTermResponse({
    required this.fullMatch,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fullMatch': fullMatch,
      'value': value,
    };
  }

  factory GoogleCloudRetailV2alphaConditionQueryTermResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaConditionQueryTermResponse(
      fullMatch: pulumi.Input.fromValue(map['fullMatch'] as bool),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

