// ignore_for_file: unused_element, unnecessary_cast


class DomainOsNvRamSourceDir {
  /// Defines the specific directory path for the backing store source configuration.
  final String? dir;

  /// Creates a new [DomainOsNvRamSourceDir].
  /// [dir] Defines the specific directory path for the backing store source configuration.
  DomainOsNvRamSourceDir({
    this.dir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dir': ?dir,
    };
  }

  factory DomainOsNvRamSourceDir.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceDir(
      dir: map['dir'] == null ? null : map['dir'] as String,
    );
  }
}

