// ignore_for_file: unused_element, unnecessary_cast


/// A package managed by Zypper. - install: `zypper -y install package` - remove: `zypper -y rm package`
class OSPolicyResourcePackageResourceZypper {
  /// Package name.
  final String name;

  /// Creates a new [OSPolicyResourcePackageResourceZypper].
  /// [name] Package name.
  OSPolicyResourcePackageResourceZypper({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory OSPolicyResourcePackageResourceZypper.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceZypper(
      name: map['name'] as String,
    );
  }
}

