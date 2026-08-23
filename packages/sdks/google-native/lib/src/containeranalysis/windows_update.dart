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
  const WindowsUpdate({
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
      categories: (() { final guardedValue = map['categories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Category>(guardedValue, (value) => Category.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Identity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kbArticleIds: (() { final guardedValue = map['kbArticleIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      lastPublishedTimestamp: (() { final guardedValue = map['lastPublishedTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportUrl: (() { final guardedValue = map['supportUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
