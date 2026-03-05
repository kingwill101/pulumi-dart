// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KnowledgeBase {
  /// The KB name (generally of the form KB[0-9]+ (e.g., KB123456)).
  final pulumi.Input<String>? name;
  /// A link to the KB in the [Windows update catalog] (https://www.catalog.update.microsoft.com/).
  final pulumi.Input<String>? url;

  /// Creates a new [KnowledgeBase].
  /// [name] The KB name (generally of the form KB[0-9]+ (e.g., KB123456)).
  /// [url] A link to the KB in the [Windows update catalog] (https://www.catalog.update.microsoft.com/).
  KnowledgeBase({
    this.name,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'url': ?url,
    };
  }

  factory KnowledgeBase.fromMap(Map<String, dynamic> map) {
    return KnowledgeBase(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

