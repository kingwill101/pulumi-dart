// ignore_for_file: unused_element, unnecessary_cast


class GetListenerV2Pool {
  final String id;

  /// Creates a new [GetListenerV2Pool].
  /// [id] Required.
  GetListenerV2Pool({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetListenerV2Pool.fromMap(Map<String, dynamic> map) {
    return GetListenerV2Pool(
      id: map['id'] as String,
    );
  }
}

