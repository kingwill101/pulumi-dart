// ignore_for_file: unused_element, unnecessary_cast


class SpringCloudBuilderBuildPackGroup {
  /// Specifies a list of the build pack's ID.
  final List<String>? buildPackIds;
  /// The name which should be used for this build pack group.
  final String name;

  /// Creates a new [SpringCloudBuilderBuildPackGroup].
  /// [buildPackIds] Specifies a list of the build pack's ID.
  /// [name] The name which should be used for this build pack group.
  SpringCloudBuilderBuildPackGroup({
    this.buildPackIds,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildPackIds': ?buildPackIds,
      'name': name,
    };
  }

  factory SpringCloudBuilderBuildPackGroup.fromMap(Map<String, dynamic> map) {
    return SpringCloudBuilderBuildPackGroup(
      buildPackIds: map['buildPackIds'] == null ? null : (map['buildPackIds'] as List).cast<String>(),
      name: map['name'] as String,
    );
  }
}

