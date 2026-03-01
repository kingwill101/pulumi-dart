// ignore_for_file: unused_element, unnecessary_cast


class ZoneRrsetRecord {
  /// Comment of the record.
  final String? comment;
  /// Value of the record.
  final String value;

  /// Creates a new [ZoneRrsetRecord].
  /// [comment] Comment of the record.
  /// [value] Value of the record.
  ZoneRrsetRecord({
    this.comment,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'value': value,
    };
  }

  factory ZoneRrsetRecord.fromMap(Map<String, dynamic> map) {
    return ZoneRrsetRecord(
      comment: map['comment'] == null ? null : map['comment'] as String,
      value: map['value'] as String,
    );
  }
}

