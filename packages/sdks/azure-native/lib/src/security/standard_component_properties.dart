// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes properties of an component as related to the standard
class StandardComponentProperties {
  /// Component Key matching componentMetadata
  final pulumi.Input<String>? key;

  /// Creates a new [StandardComponentProperties].
  /// [key] Component Key matching componentMetadata
  StandardComponentProperties({
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
    };
  }

  factory StandardComponentProperties.fromMap(Map<String, dynamic> map) {
    return StandardComponentProperties(
      key: map['key'] == null ? null : (map['key'] as String).input(),
    );
  }
}

