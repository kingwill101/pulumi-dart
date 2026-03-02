// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'category.dart';
import 'identity.dart';

/// Windows Update represents the metadata about the update for the Windows operating system. The fields in this message come from the Windows Update API documented at https://docs.microsoft.com/en-us/windows/win32/api/wuapi/nn-wuapi-iupdate.
class WindowsUpdate {
  /// The list of categories to which the update belongs.
  final pulumi.Input<List<Category>>? categories;
  /// The localized description of the update.
  final pulumi.Input<String>? description;
  /// Required - The unique identifier for the update.
  final pulumi.Input<Identity>? identity;
  /// The Microsoft Knowledge Base article IDs that are associated with the update.
  final pulumi.Input<List<String>>? kbArticleIds;
  /// The last published timestamp of the update.
  final pulumi.Input<String>? lastPublishedTimestamp;
  /// The hyperlink to the support information for the update.
  final pulumi.Input<String>? supportUrl;
  /// The localized title of the update.
  final pulumi.Input<String>? title;

  /// Creates a new [WindowsUpdate].
  /// [categories] The list of categories to which the update belongs.
  /// [description] The localized description of the update.
  /// [identity] Required - The unique identifier for the update.
  /// [kbArticleIds] The Microsoft Knowledge Base article IDs that are associated with the update.
  /// [lastPublishedTimestamp] The last published timestamp of the update.
  /// [supportUrl] The hyperlink to the support information for the update.
  /// [title] The localized title of the update.
  WindowsUpdate({
    this.categories,
    this.description,
    this.identity,
    this.kbArticleIds,
    this.lastPublishedTimestamp,
    this.supportUrl,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categories': ?pulumi.Input.mapOptionalInputValue<List<Category>, List<Map<String, dynamic>>>(categories, (value) => pulumi.Input.encodeList<Category, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'identity': ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kbArticleIds': ?kbArticleIds,
      'lastPublishedTimestamp': ?lastPublishedTimestamp,
      'supportUrl': ?supportUrl,
      'title': ?title,
    };
  }

  factory WindowsUpdate.fromMap(Map<String, dynamic> map) {
    return WindowsUpdate(
      categories: map['categories'] == null ? null : (pulumi.Input.decodeList<Category>(map['categories'], (value) => Category.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      identity: map['identity'] == null ? null : (Identity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      kbArticleIds: map['kbArticleIds'] == null ? null : ((map['kbArticleIds'] as List).cast<String>()).input(),
      lastPublishedTimestamp: map['lastPublishedTimestamp'] == null ? null : (map['lastPublishedTimestamp'] as String).input(),
      supportUrl: map['supportUrl'] == null ? null : (map['supportUrl'] as String).input(),
      title: map['title'] == null ? null : (map['title'] as String).input(),
    );
  }
}

