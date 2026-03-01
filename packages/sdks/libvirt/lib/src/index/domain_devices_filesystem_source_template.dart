// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesFilesystemSourceTemplate {
  /// Configures the name of the template source for the filesystem.
  final String name;

  /// Creates a new [DomainDevicesFilesystemSourceTemplate].
  /// [name] Configures the name of the template source for the filesystem.
  DomainDevicesFilesystemSourceTemplate({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesFilesystemSourceTemplate.fromMap(Map<String, dynamic> map) {
    return DomainDevicesFilesystemSourceTemplate(
      name: map['name'] as String,
    );
  }
}

