// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiSearchInstanceMetadata {
  final pulumi.Input<bool> createdFromAisearchWizard;
  final pulumi.Input<String> workerDomain;

  /// Creates a new [GetAiSearchInstanceMetadata].
  /// [createdFromAisearchWizard] Required.
  /// [workerDomain] Required.
  const GetAiSearchInstanceMetadata({
    required this.createdFromAisearchWizard,
    required this.workerDomain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdFromAisearchWizard': createdFromAisearchWizard,
      'workerDomain': workerDomain,
    };
  }

  factory GetAiSearchInstanceMetadata.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstanceMetadata(
      createdFromAisearchWizard: pulumi.Input.fromValue(map['createdFromAisearchWizard'] as bool),
      workerDomain: pulumi.Input.fromValue(map['workerDomain'] as String),
    );
  }
}
