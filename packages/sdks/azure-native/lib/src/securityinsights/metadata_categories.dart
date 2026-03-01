// ignore_for_file: unused_element, unnecessary_cast


/// ies for the solution content item
class MetadataCategories {
  /// domain for the solution content item
  final List<String>? domains;
  /// Industry verticals for the solution content item
  final List<String>? verticals;

  /// Creates a new [MetadataCategories].
  /// [domains] domain for the solution content item
  /// [verticals] Industry verticals for the solution content item
  MetadataCategories({
    this.domains,
    this.verticals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domains': ?domains,
      'verticals': ?verticals,
    };
  }

  factory MetadataCategories.fromMap(Map<String, dynamic> map) {
    return MetadataCategories(
      domains: map['domains'] == null ? null : (map['domains'] as List).cast<String>(),
      verticals: map['verticals'] == null ? null : (map['verticals'] as List).cast<String>(),
    );
  }
}

