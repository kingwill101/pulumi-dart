// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MetadataCategory {
  /// Specifies a list of domains for the solution content item.
  final pulumi.Input<List<String>>? domains;
  /// Specifies a list of industry verticals for the solution content item.
  final pulumi.Input<List<String>>? verticals;

  /// Creates a new [MetadataCategory].
  /// [domains] Specifies a list of domains for the solution content item.
  /// [verticals] Specifies a list of industry verticals for the solution content item.
  const MetadataCategory({
    this.domains,
    this.verticals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domains': ?domains,
      'verticals': ?verticals,
    };
  }

  factory MetadataCategory.fromMap(Map<String, dynamic> map) {
    return MetadataCategory(
      domains: (() { final guardedValue = map['domains']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      verticals: (() { final guardedValue = map['verticals']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
