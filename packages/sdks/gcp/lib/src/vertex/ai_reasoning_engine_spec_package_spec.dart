// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiReasoningEngineSpecPackageSpec {
  /// Optional. The Cloud Storage URI of the dependency files in tar.gz
  /// format.
  final pulumi.Input<String>? dependencyFilesGcsUri;
  /// Optional. The Cloud Storage URI of the pickled python object.
  final pulumi.Input<String>? pickleObjectGcsUri;
  /// Optional. The Python version. Currently support 3.8, 3.9, 3.10,
  /// 3.11, 3.12, 3.13. If not specified, default value is 3.10.
  final pulumi.Input<String>? pythonVersion;
  /// Optional. The Cloud Storage URI of the requirements.txtfile
  final pulumi.Input<String>? requirementsGcsUri;

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
      dependencyFilesGcsUri: (() { final guardedValue = map['dependencyFilesGcsUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pickleObjectGcsUri: (() { final guardedValue = map['pickleObjectGcsUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pythonVersion: (() { final guardedValue = map['pythonVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requirementsGcsUri: (() { final guardedValue = map['requirementsGcsUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

