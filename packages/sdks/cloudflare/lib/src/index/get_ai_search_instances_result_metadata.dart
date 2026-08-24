// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiSearchInstancesResultMetadata {
  final pulumi.Input<bool> createdFromAisearchWizard;
  final pulumi.Input<String> workerDomain;

  /// Creates a new [GetAiSearchInstancesResultMetadata].
  /// [createdFromAisearchWizard] Required.
  /// [workerDomain] Required.
  const GetAiSearchInstancesResultMetadata({
    required this.createdFromAisearchWizard,
    required this.workerDomain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdFromAisearchWizard': createdFromAisearchWizard,
      'workerDomain': workerDomain,
    };
  }

  factory GetAiSearchInstancesResultMetadata.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstancesResultMetadata(
      createdFromAisearchWizard: pulumi.Input.fromValue(map['createdFromAisearchWizard'] as bool),
      workerDomain: pulumi.Input.fromValue(map['workerDomain'] as String),
    );
  }
}
