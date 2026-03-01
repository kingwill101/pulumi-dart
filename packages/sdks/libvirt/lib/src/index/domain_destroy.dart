// ignore_for_file: unused_element, unnecessary_cast


class DomainDestroy {
  final bool? graceful;

  /// Creates a new [DomainDestroy].
  /// [graceful] Optional.
  DomainDestroy({
    this.graceful,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'graceful': ?graceful,
    };
  }

  factory DomainDestroy.fromMap(Map<String, dynamic> map) {
    return DomainDestroy(
      graceful: map['graceful'] == null ? null : map['graceful'] as bool,
    );
  }
}

