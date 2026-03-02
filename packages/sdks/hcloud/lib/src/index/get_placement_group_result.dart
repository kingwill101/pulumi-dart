// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPlacementGroup.
class GetPlacementGroupResult {
  /// (int) Unique ID of the Placement Group.
  final int id;
  /// (map) User-defined labels (key-value pairs)
  final Map<String, String> labels;
  final bool? mostRecent;
  /// (string) Name of the Placement Group.
  final String name;
  final List<int> servers;
  /// (string) Type of the Placement Group.
  final String type;
  final String? withSelector;

  /// Creates a new [GetPlacementGroupResult].
  /// [id] (int) Unique ID of the Placement Group.
  /// [labels] (map) User-defined labels (key-value pairs)
  /// [mostRecent] Optional.
  /// [name] (string) Name of the Placement Group.
  /// [servers] Required.
  /// [type] (string) Type of the Placement Group.
  /// [withSelector] Optional.
  GetPlacementGroupResult({
    required this.id,
    required this.labels,
    this.mostRecent,
    required this.name,
    required this.servers,
    required this.type,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'labels': labels,
      'mostRecent': ?mostRecent,
      'name': name,
      'servers': servers,
      'type': type,
      'withSelector': ?withSelector,
    };
  }

  factory GetPlacementGroupResult.fromMap(Map<String, dynamic> map) {
    return GetPlacementGroupResult(
      id: map['id'] as int,
      labels: (map['labels'] as Map).cast<String, String>(),
      mostRecent: map['mostRecent'] == null ? null : map['mostRecent']! as bool,
      name: map['name'] as String,
      servers: (map['servers'] as List).cast<int>(),
      type: map['type'] as String,
      withSelector: map['withSelector'] == null ? null : map['withSelector']! as String,
    );
  }
}

