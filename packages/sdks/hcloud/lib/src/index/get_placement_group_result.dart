// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPlacementGroup.
class GetPlacementGroupResult {
  /// (int) Unique ID of the Placement Group.
  final int? id;
  /// (map) User-defined labels (key-value pairs)
  final Map<String, String>? labels;
  final bool? mostRecent;
  /// (string) Name of the Placement Group.
  final String? name;
  final List<int>? servers;
  /// (string) Type of the Placement Group.
  final String? type;
  final String? withSelector;

  /// Creates a new [GetPlacementGroupResult].
  /// [id] (int) Unique ID of the Placement Group.
  /// [labels] (map) User-defined labels (key-value pairs)
  /// [mostRecent] Optional.
  /// [name] (string) Name of the Placement Group.
  /// [servers] Optional.
  /// [type] (string) Type of the Placement Group.
  /// [withSelector] Optional.
  const GetPlacementGroupResult({
    this.id,
    this.labels,
    this.mostRecent,
    this.name,
    this.servers,
    this.type,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'labels': ?labels,
      'mostRecent': ?mostRecent,
      'name': ?name,
      'servers': ?servers,
      'type': ?type,
      'withSelector': ?withSelector,
    };
  }

  factory GetPlacementGroupResult.fromMap(Map<String, dynamic> map) {
    return GetPlacementGroupResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      servers: (() { final guardedValue = map['servers']; if (guardedValue == null) return null; return (guardedValue as List).cast<int>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
