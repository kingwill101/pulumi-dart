// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataConnectorMetadata {
  /// The party that authored the connector, e.g. "Google" or a third-party provider name.
  final pulumi.Input<String?>? author;
  /// Human-readable description of the connector.
  final pulumi.Input<String?>? description;
  /// Free-form, multi-line note about the connector's capabilities.
  final pulumi.Input<String?>? note;
  /// Short, subtitle-length description of the connector.
  final pulumi.Input<String?>? shortDescription;
  /// Display title of the connector.
  final pulumi.Input<String?>? title;

  /// Creates a new [DataConnectorMetadata].
  /// [author] The party that authored the connector, e.g. "Google" or a third-party provider name.
  /// [description] Human-readable description of the connector.
  /// [note] Free-form, multi-line note about the connector's capabilities.
  /// [shortDescription] Short, subtitle-length description of the connector.
  /// [title] Display title of the connector.
  const DataConnectorMetadata({
    this.author,
    this.description,
    this.note,
    this.shortDescription,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'author': ?author,
      'description': ?description,
      'note': ?note,
      'shortDescription': ?shortDescription,
      'title': ?title,
    };
  }

  factory DataConnectorMetadata.fromMap(Map<String, dynamic> map) {
    return DataConnectorMetadata(
      author: (() { final guardedValue = map['author']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      note: (() { final guardedValue = map['note']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shortDescription: (() { final guardedValue = map['shortDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
