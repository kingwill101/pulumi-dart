// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes properties of an component as related to the standard
class StandardComponentPropertiesResponse {
  /// Component Key matching componentMetadata
  final pulumi.Input<String>? key;

  /// Creates a new [StandardComponentPropertiesResponse].
  /// [key] Component Key matching componentMetadata
  const StandardComponentPropertiesResponse({
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
    };
  }

  factory StandardComponentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return StandardComponentPropertiesResponse(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

