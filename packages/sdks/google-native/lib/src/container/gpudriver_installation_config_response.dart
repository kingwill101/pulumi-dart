// ignore_for_file: unused_element, unnecessary_cast


/// GPUDriverInstallationConfig specifies the version of GPU driver to be auto installed.
class GPUDriverInstallationConfigResponse {
  /// Mode for how the GPU driver is installed.
  final String gpuDriverVersion;

  /// Creates a new [GPUDriverInstallationConfigResponse].
  /// [gpuDriverVersion] Mode for how the GPU driver is installed.
  GPUDriverInstallationConfigResponse({
    required this.gpuDriverVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gpuDriverVersion': gpuDriverVersion,
    };
  }

  factory GPUDriverInstallationConfigResponse.fromMap(Map<String, dynamic> map) {
    return GPUDriverInstallationConfigResponse(
      gpuDriverVersion: map['gpuDriverVersion'] as String,
    );
  }
}

