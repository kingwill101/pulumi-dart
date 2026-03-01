// ignore_for_file: unused_element, unnecessary_cast


class EntryTypeRequiredAspect {
  /// Required aspect type for the entry type.
  final String? type;

  /// Creates a new [EntryTypeRequiredAspect].
  /// [type] Required aspect type for the entry type.
  EntryTypeRequiredAspect({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory EntryTypeRequiredAspect.fromMap(Map<String, dynamic> map) {
    return EntryTypeRequiredAspect(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

