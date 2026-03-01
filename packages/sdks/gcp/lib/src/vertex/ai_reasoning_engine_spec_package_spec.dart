// ignore_for_file: unused_element, unnecessary_cast


class AiReasoningEngineSpecPackageSpec {
  /// Optional. The Cloud Storage URI of the dependency files in tar.gz
  /// format.
  final String? dependencyFilesGcsUri;
  /// Optional. The Cloud Storage URI of the pickled python object.
  final String? pickleObjectGcsUri;
  /// Optional. The Python version. Currently support 3.8, 3.9, 3.10,
  /// 3.11, 3.12, 3.13. If not specified, default value is 3.10.
  final String? pythonVersion;
  /// Optional. The Cloud Storage URI of the requirements.txtfile
  final String? requirementsGcsUri;

  /// Creates a new [AiReasoningEngineSpecPackageSpec].
  /// [dependencyFilesGcsUri] Optional. The Cloud Storage URI of the dependency files in tar.gz
  /// [pickleObjectGcsUri] Optional. The Cloud Storage URI of the pickled python object.
  /// [pythonVersion] Optional. The Python version. Currently support 3.8, 3.9, 3.10,
  /// [requirementsGcsUri] Optional. The Cloud Storage URI of the requirements.txtfile
  AiReasoningEngineSpecPackageSpec({
    this.dependencyFilesGcsUri,
    this.pickleObjectGcsUri,
    this.pythonVersion,
    this.requirementsGcsUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dependencyFilesGcsUri': ?dependencyFilesGcsUri,
      'pickleObjectGcsUri': ?pickleObjectGcsUri,
      'pythonVersion': ?pythonVersion,
      'requirementsGcsUri': ?requirementsGcsUri,
    };
  }

  factory AiReasoningEngineSpecPackageSpec.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineSpecPackageSpec(
      dependencyFilesGcsUri: map['dependencyFilesGcsUri'] == null ? null : map['dependencyFilesGcsUri'] as String,
      pickleObjectGcsUri: map['pickleObjectGcsUri'] == null ? null : map['pickleObjectGcsUri'] as String,
      pythonVersion: map['pythonVersion'] == null ? null : map['pythonVersion'] as String,
      requirementsGcsUri: map['requirementsGcsUri'] == null ? null : map['requirementsGcsUri'] as String,
    );
  }
}

