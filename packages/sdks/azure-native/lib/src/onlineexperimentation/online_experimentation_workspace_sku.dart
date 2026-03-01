// ignore_for_file: unused_element, unnecessary_cast


/// The SKU (Stock Keeping Unit) assigned to this resource.
class OnlineExperimentationWorkspaceSku {
  /// The name of the SKU. Ex - F0, P0. It is typically a letter+number code
  final String name;

  /// Creates a new [OnlineExperimentationWorkspaceSku].
  /// [name] The name of the SKU. Ex - F0, P0. It is typically a letter+number code
  OnlineExperimentationWorkspaceSku({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory OnlineExperimentationWorkspaceSku.fromMap(Map<String, dynamic> map) {
    return OnlineExperimentationWorkspaceSku(
      name: map['name'] as String,
    );
  }
}

