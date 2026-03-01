// ignore_for_file: unused_element, unnecessary_cast


/// The original source of the content item, where it comes from.
class MetadataSourceResponse {
  /// Source type of the content
  final String kind;
  /// Name of the content source.  The repo name, solution name, LA workspace name etc.
  final String? name;
  /// ID of the content source.  The solution ID, workspace ID, etc
  final String? sourceId;

  /// Creates a new [MetadataSourceResponse].
  /// [kind] Source type of the content
  /// [name] Name of the content source.  The repo name, solution name, LA workspace name etc.
  /// [sourceId] ID of the content source.  The solution ID, workspace ID, etc
  MetadataSourceResponse({
    required this.kind,
    this.name,
    this.sourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'name': ?name,
      'sourceId': ?sourceId,
    };
  }

  factory MetadataSourceResponse.fromMap(Map<String, dynamic> map) {
    return MetadataSourceResponse(
      kind: map['kind'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      sourceId: map['sourceId'] == null ? null : map['sourceId'] as String,
    );
  }
}

