// ignore_for_file: unused_element, unnecessary_cast


class PoolFeaturesCow {
  /// Configures the state of the copy-on-write feature within the storage pool.
  final String state;

  /// Creates a new [PoolFeaturesCow].
  /// [state] Configures the state of the copy-on-write feature within the storage pool.
  PoolFeaturesCow({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory PoolFeaturesCow.fromMap(Map<String, dynamic> map) {
    return PoolFeaturesCow(
      state: map['state'] as String,
    );
  }
}

