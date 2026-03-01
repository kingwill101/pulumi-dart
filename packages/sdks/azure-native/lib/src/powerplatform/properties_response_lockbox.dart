// ignore_for_file: unused_element, unnecessary_cast


/// Settings concerning lockbox.
class PropertiesResponseLockbox {
  /// lockbox configuration
  final String? state;

  /// Creates a new [PropertiesResponseLockbox].
  /// [state] lockbox configuration
  PropertiesResponseLockbox({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory PropertiesResponseLockbox.fromMap(Map<String, dynamic> map) {
    return PropertiesResponseLockbox(
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

