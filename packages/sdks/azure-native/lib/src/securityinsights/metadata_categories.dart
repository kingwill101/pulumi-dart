// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ies for the solution content item
class MetadataCategories {
  /// domain for the solution content item
  final pulumi.Input<List<String>>? domains;

  /// Industry verticals for the solution content item
  final pulumi.Input<List<String>>? verticals;

  /// Creates a new [MetadataCategories].
  /// [domains] domain for the solution content item
  /// [verticals] Industry verticals for the solution content item
  MetadataCategories({this.domains, this.verticals});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'domains': ?domains, 'verticals': ?verticals};
  }

  factory MetadataCategories.fromMap(Map<String, dynamic> map) {
    return MetadataCategories(
      domains: (() {
        final guardedValue = map['domains'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      verticals: (() {
        final guardedValue = map['verticals'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
