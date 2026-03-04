// ignore_for_file: unused_element, unnecessary_cast

import 'basic_level_response_accesscontextmanager_v1beta.dart';
import 'custom_level_response_accesscontextmanager_v1beta.dart';

/// Result data returned by getAccessLevel.
class GetAccessLevelAccesscontextmanagerV1betaResult {
  /// A `BasicLevel` composed of `Conditions`.
  final BasicLevelResponseAccesscontextmanagerV1beta basic;

  /// A `CustomLevel` written in the Common Expression Language.
  final CustomLevelResponseAccesscontextmanagerV1beta custom;

  /// Description of the `AccessLevel` and its use. Does not affect behavior.
  final String description;

  /// Resource name for the `AccessLevel`. Format: `accessPolicies/{access_policy}/accessLevels/{access_level}`. The `access_level` component must begin with a letter, followed by alphanumeric characters or `_`. Its maximum length is 50 characters. After you create an `AccessLevel`, you cannot change its `name`.
  final String name;

  /// Human readable title. Must be unique within the Policy.
  final String title;

  /// Creates a new [GetAccessLevelAccesscontextmanagerV1betaResult].
  /// [basic] A `BasicLevel` composed of `Conditions`.
  /// [custom] A `CustomLevel` written in the Common Expression Language.
  /// [description] Description of the `AccessLevel` and its use. Does not affect behavior.
  /// [name] Resource name for the `AccessLevel`. Format: `accessPolicies/{access_policy}/accessLevels/{access_level}`. The `access_level` component must begin with a letter, followed by alphanumeric characters or `_`. Its maximum length is 50 characters. After you create an `AccessLevel`, you cannot change its `name`.
  /// [title] Human readable title. Must be unique within the Policy.
  GetAccessLevelAccesscontextmanagerV1betaResult({
    required this.basic,
    required this.custom,
    required this.description,
    required this.name,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basic': basic.toMap(),
      'custom': custom.toMap(),
      'description': description,
      'name': name,
      'title': title,
    };
  }

  factory GetAccessLevelAccesscontextmanagerV1betaResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAccessLevelAccesscontextmanagerV1betaResult(
      basic: BasicLevelResponseAccesscontextmanagerV1beta.fromMap(
        (map['basic']! as Map).cast<String, dynamic>(),
      ),
      custom: CustomLevelResponseAccesscontextmanagerV1beta.fromMap(
        (map['custom']! as Map).cast<String, dynamic>(),
      ),
      description: map['description'] as String,
      name: map['name'] as String,
      title: map['title'] as String,
    );
  }
}
