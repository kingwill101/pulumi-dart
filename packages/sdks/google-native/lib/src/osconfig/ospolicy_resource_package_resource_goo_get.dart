// ignore_for_file: unused_element, unnecessary_cast


/// A package managed by GooGet. - install: `googet -noconfirm install package` - remove: `googet -noconfirm remove package`
class OSPolicyResourcePackageResourceGooGet {
  /// Package name.
  final String name;

  /// Creates a new [OSPolicyResourcePackageResourceGooGet].
  /// [name] Package name.
  OSPolicyResourcePackageResourceGooGet({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory OSPolicyResourcePackageResourceGooGet.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceGooGet(
      name: map['name'] as String,
    );
  }
}

