// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNfsSnapshot.
class GetNfsSnapshotResult {
  final String? createdAt;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? nameRegex;
  final String? region;
  final String? shareId;
  final int? size;
  final int? status;
  final List<String>? tags;

  /// Creates a new [GetNfsSnapshotResult].
  /// [createdAt] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [nameRegex] Optional.
  /// [region] Optional.
  /// [shareId] Optional.
  /// [size] Optional.
  /// [status] Optional.
  /// [tags] Optional.
  const GetNfsSnapshotResult({
    this.createdAt,
    this.id,
    this.name,
    this.nameRegex,
    this.region,
    this.shareId,
    this.size,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'id': ?id,
      'name': ?name,
      'nameRegex': ?nameRegex,
      'region': ?region,
      'shareId': ?shareId,
      'size': ?size,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetNfsSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetNfsSnapshotResult(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shareId: (() { final guardedValue = map['shareId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
