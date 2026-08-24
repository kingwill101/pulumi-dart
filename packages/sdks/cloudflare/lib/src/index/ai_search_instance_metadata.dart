// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiSearchInstanceMetadata {
  final pulumi.Input<bool?>? createdFromAisearchWizard;
  final pulumi.Input<String?>? workerDomain;

  /// Creates a new [AiSearchInstanceMetadata].
  /// [createdFromAisearchWizard] Optional.
  /// [workerDomain] Optional.
  const AiSearchInstanceMetadata({
    this.createdFromAisearchWizard,
    this.workerDomain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdFromAisearchWizard': ?createdFromAisearchWizard,
      'workerDomain': ?workerDomain,
    };
  }

  factory AiSearchInstanceMetadata.fromMap(Map<String, dynamic> map) {
    return AiSearchInstanceMetadata(
      createdFromAisearchWizard: (() { final guardedValue = map['createdFromAisearchWizard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      workerDomain: (() { final guardedValue = map['workerDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
