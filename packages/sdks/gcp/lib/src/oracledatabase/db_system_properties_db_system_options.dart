// ignore_for_file: unused_element, unnecessary_cast


class DbSystemPropertiesDbSystemOptions {
  /// The storage option used in DB system.
  /// Possible values:
  /// ASM
  /// LVM
  final String? storageManagement;

  /// Creates a new [DbSystemPropertiesDbSystemOptions].
  /// [storageManagement] The storage option used in DB system.
  DbSystemPropertiesDbSystemOptions({
    this.storageManagement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageManagement': ?storageManagement,
    };
  }

  factory DbSystemPropertiesDbSystemOptions.fromMap(Map<String, dynamic> map) {
    return DbSystemPropertiesDbSystemOptions(
      storageManagement: map['storageManagement'] == null ? null : map['storageManagement'] as String,
    );
  }
}

