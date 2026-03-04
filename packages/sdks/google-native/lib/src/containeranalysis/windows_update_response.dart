// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'category_response.dart';
import 'identity_response.dart';

/// Windows Update represents the metadata about the update for the Windows operating system. The fields in this message come from the Windows Update API documented at https://docs.microsoft.com/en-us/windows/win32/api/wuapi/nn-wuapi-iupdate.
class WindowsUpdateResponse {
  /// The list of categories to which the update belongs.
  final pulumi.Input<List<CategoryResponse>> categories;

  /// The localized description of the update.
  final pulumi.Input<String> description;

  /// Required - The unique identifier for the update.
  final pulumi.Input<IdentityResponse> identity;

  /// The Microsoft Knowledge Base article IDs that are associated with the update.
  final pulumi.Input<List<String>> kbArticleIds;

  /// The last published timestamp of the update.
  final pulumi.Input<String> lastPublishedTimestamp;

  /// The hyperlink to the support information for the update.
  final pulumi.Input<String> supportUrl;

  /// The localized title of the update.
  final pulumi.Input<String> title;

  /// Creates a new [WindowsUpdateResponse].
  /// [categories] The list of categories to which the update belongs.
  /// [description] The localized description of the update.
  /// [identity] Required - The unique identifier for the update.
  /// [kbArticleIds] The Microsoft Knowledge Base article IDs that are associated with the update.
  /// [lastPublishedTimestamp] The last published timestamp of the update.
  /// [supportUrl] The hyperlink to the support information for the update.
  /// [title] The localized title of the update.
  WindowsUpdateResponse({
    required this.categories,
    required this.description,
    required this.identity,
    required this.kbArticleIds,
    required this.lastPublishedTimestamp,
    required this.supportUrl,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categories':
          pulumi.Input.mapInputValue<
            List<CategoryResponse>,
            List<Map<String, dynamic>>
          >(
            categories,
            (value) =>
                pulumi.Input.encodeList<CategoryResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'description': description,
      'identity':
          pulumi.Input.mapInputValue<IdentityResponse, Map<String, dynamic>>(
            identity,
            (value) => value.toMap(),
          ),
      'kbArticleIds': kbArticleIds,
      'lastPublishedTimestamp': lastPublishedTimestamp,
      'supportUrl': supportUrl,
      'title': title,
    };
  }

  factory WindowsUpdateResponse.fromMap(Map<String, dynamic> map) {
    return WindowsUpdateResponse(
      categories: pulumi.Input.fromValue(
        pulumi.Input.decodeList<CategoryResponse>(
          map['categories']!,
          (value) =>
              CategoryResponse.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      description: pulumi.Input.fromValue(map['description'] as String),
      identity: pulumi.Input.fromValue(
        IdentityResponse.fromMap(
          (map['identity']! as Map).cast<String, dynamic>(),
        ),
      ),
      kbArticleIds: pulumi.Input.fromValue(
        (map['kbArticleIds'] as List).cast<String>(),
      ),
      lastPublishedTimestamp: pulumi.Input.fromValue(
        map['lastPublishedTimestamp'] as String,
      ),
      supportUrl: pulumi.Input.fromValue(map['supportUrl'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}
