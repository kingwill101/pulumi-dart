// ignore_for_file: unused_element, unnecessary_cast


class GetPoolV2Listener {
  final String id;

  /// Creates a new [GetPoolV2Listener].
  /// [id] Required.
  GetPoolV2Listener({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetPoolV2Listener.fromMap(Map<String, dynamic> map) {
    return GetPoolV2Listener(
      id: map['id'] as String,
    );
  }
}

