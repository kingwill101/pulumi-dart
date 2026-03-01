// ignore_for_file: unused_element, unnecessary_cast


/// Function app runtime name and version.
class FunctionsRuntime {
  /// Function app runtime name. Available options: dotnet-isolated, node, java, powershell, python, custom
  final String? name;
  /// Function app runtime version. Example: 8 (for dotnet-isolated)
  final String? version;

  /// Creates a new [FunctionsRuntime].
  /// [name] Function app runtime name. Available options: dotnet-isolated, node, java, powershell, python, custom
  /// [version] Function app runtime version. Example: 8 (for dotnet-isolated)
  FunctionsRuntime({
    this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'version': ?version,
    };
  }

  factory FunctionsRuntime.fromMap(Map<String, dynamic> map) {
    return FunctionsRuntime(
      name: map['name'] == null ? null : map['name'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

