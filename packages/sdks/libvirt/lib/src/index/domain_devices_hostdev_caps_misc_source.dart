// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesHostdevCapsMiscSource {
  /// Defines character-specific attributes for the source of the miscellaneous capabilities.
  final pulumi.Input<String> char;

  /// Creates a new [DomainDevicesHostdevCapsMiscSource].
  /// [char] Defines character-specific attributes for the source of the miscellaneous capabilities.
  DomainDevicesHostdevCapsMiscSource({
    required this.char,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'char': char,
    };
  }

  factory DomainDevicesHostdevCapsMiscSource.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevCapsMiscSource(
      char: pulumi.Input.fromValue(map['char'] as String),
    );
  }
}

