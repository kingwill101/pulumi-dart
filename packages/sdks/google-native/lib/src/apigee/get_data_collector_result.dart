// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDataCollector.
class GetDataCollectorResult {
  /// The time at which the data collector was created in milliseconds since the epoch.
  final String? createdAt;
  /// A description of the data collector.
  final String? description;
  /// The time at which the Data Collector was last updated in milliseconds since the epoch.
  final String? lastModifiedAt;
  /// ID of the data collector. Must begin with `dc_`.
  final String? name;
  /// Immutable. The type of data this data collector will collect.
  final String? type;

  /// Creates a new [GetDataCollectorResult].
  /// [createdAt] The time at which the data collector was created in milliseconds since the epoch.
  /// [description] A description of the data collector.
  /// [lastModifiedAt] The time at which the Data Collector was last updated in milliseconds since the epoch.
  /// [name] ID of the data collector. Must begin with `dc_`.
  /// [type] Immutable. The type of data this data collector will collect.
  const GetDataCollectorResult({
    this.createdAt,
    this.description,
    this.lastModifiedAt,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'description': ?description,
      'lastModifiedAt': ?lastModifiedAt,
      'name': ?name,
      'type': ?type,
    };
  }

  factory GetDataCollectorResult.fromMap(Map<String, dynamic> map) {
    return GetDataCollectorResult(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModifiedAt: (() { final guardedValue = map['lastModifiedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
