// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by Provider.terraformConfig.
class ProviderTerraformConfigResult {
  final Map<String, dynamic> result;

  /// Creates a new [ProviderTerraformConfigResult].
  /// [result] Required.
  const ProviderTerraformConfigResult({
    required this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result,
    };
  }

  factory ProviderTerraformConfigResult.fromMap(Map<String, dynamic> map) {
    return ProviderTerraformConfigResult(
      result: (map['result'] as Map).cast<String, dynamic>(),
    );
  }
}

