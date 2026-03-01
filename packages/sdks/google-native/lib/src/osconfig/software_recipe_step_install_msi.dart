// ignore_for_file: unused_element, unnecessary_cast


/// Installs an MSI file.
class SoftwareRecipeStepInstallMsi {
  /// Return codes that indicate that the software installed or updated successfully. Behaviour defaults to [0]
  final List<int>? allowedExitCodes;
  /// The id of the relevant artifact in the recipe.
  final String artifactId;
  /// The flags to use when installing the MSI defaults to ["/i"] (i.e. the install flag).
  final List<String>? flags;

  /// Creates a new [SoftwareRecipeStepInstallMsi].
  /// [allowedExitCodes] Return codes that indicate that the software installed or updated successfully. Behaviour defaults to [0]
  /// [artifactId] The id of the relevant artifact in the recipe.
  /// [flags] The flags to use when installing the MSI defaults to ["/i"] (i.e. the install flag).
  SoftwareRecipeStepInstallMsi({
    this.allowedExitCodes,
    required this.artifactId,
    this.flags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedExitCodes': ?allowedExitCodes,
      'artifactId': artifactId,
      'flags': ?flags,
    };
  }

  factory SoftwareRecipeStepInstallMsi.fromMap(Map<String, dynamic> map) {
    return SoftwareRecipeStepInstallMsi(
      allowedExitCodes: map['allowedExitCodes'] == null ? null : (map['allowedExitCodes'] as List).cast<int>(),
      artifactId: map['artifactId'] as String,
      flags: map['flags'] == null ? null : (map['flags'] as List).cast<String>(),
    );
  }
}

